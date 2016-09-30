package hsl.devspace.app.coreserver.resources;

import hsl.devspace.app.corelogic.domain.User;
import hsl.devspace.app.corelogic.repository.user.UserRepositoryImpl;
import hsl.devspace.app.coreserver.common.Context;
import hsl.devspace.app.coreserver.model.SuccessMessage;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.json.simple.JSONObject;
import org.springframework.context.ApplicationContext;

import javax.ws.rs.*;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;
import javax.ws.rs.core.UriInfo;
import java.util.List;
import java.util.Map;

/**
 * Created by Kasun Dinesh on 6/29/16.
 * This class handles the requests related to the customers.
 */
@Path("/customers")
public class CustomerService {
    private static final Logger log = LogManager.getLogger(CustomerService.class);
    ApplicationContext context = Context.appContext;
    UserRepositoryImpl userRepository = (UserRepositoryImpl) context.getBean("userRepoImpl");
    final String BASE_URL = "http://localhost:2222/pizza-shefu/api/v1.0/";

    // Register a new customer
    @POST
    @Path("/register")
    @Consumes(MediaType.APPLICATION_JSON)
    @Produces(MediaType.APPLICATION_JSON)
    public Response register(User user, @javax.ws.rs.core.Context UriInfo uriInfo) {
        int res = userRepository.add(user);
        Response response;
        if (res > 0) {
            SuccessMessage successMessage = new SuccessMessage();
            successMessage.setStatus("success");
            successMessage.setCode(Response.Status.CREATED.getStatusCode());
            successMessage.setMessage("user added to the database");

            JSONObject jsonObject = new JSONObject();
            jsonObject.put("title", user.getTitle());
            jsonObject.put("firstName", user.getFirstName());
            jsonObject.put("lastName", user.getLastName());
            jsonObject.put("username", user.getUsername());
            jsonObject.put("Email", user.getEmail());
            jsonObject.put("AddressLine01", user.getAddressL1());
            jsonObject.put("AddressLine02", user.getAddressL2());
            jsonObject.put("AddressLine03", user.getAddressL3());
            jsonObject.put("mobile", user.getMobile());
            successMessage.addData(jsonObject);

            String url = uriInfo.getAbsolutePath().toString();
            successMessage.addLink(url, "self");
            successMessage.addLink(BASE_URL + "customers/" + user.getUsername(), "profile");

            response = Response.status(Response.Status.CREATED).entity(successMessage).build();
        } else {
            throw new WebApplicationException(400);
        }
        return response;
    }

    // Validate customer login
    @POST
    @Path("/login")
    @Consumes(MediaType.APPLICATION_JSON)
    @Produces(MediaType.APPLICATION_JSON)
    public Response login(User user, @javax.ws.rs.core.Context UriInfo uriInfo) {
        boolean status = userRepository.loginAuthenticate(user.getUsername(), user.getPassword());
        Response response;
        if (status) {
            SuccessMessage successMessage = new SuccessMessage();
            successMessage.setStatus("success");
            successMessage.setCode(Response.Status.OK.getStatusCode());
            successMessage.setMessage("username, password validated.");

            JSONObject jsonObject = new JSONObject();
            jsonObject.put("username", user.getUsername());
            jsonObject.put("password", user.getPassword());
            successMessage.addData(jsonObject);

            String url = uriInfo.getAbsolutePath().toString();
            successMessage.addLink(url, "self");
            successMessage.addLink(BASE_URL + "customers/" + user.getUsername(), "profile");
            response = Response.status(Response.Status.OK).entity(successMessage).build();
        } else {
            throw new WebApplicationException(401);
        }
        return response;
    }

    // Get details of a specific customer
    @GET
    @Path("/{username}")
    @Consumes(MediaType.APPLICATION_JSON)
    @Produces(MediaType.APPLICATION_JSON)
    public Response getUserDetails(@PathParam("username") String userName, @javax.ws.rs.core.Context UriInfo uriInfo) {
        List<Map<String, Object>> userData = userRepository.retrieveMultipleRowsColumns(userName);
        SuccessMessage successMessage = new SuccessMessage();
        successMessage.setCode(Response.Status.OK.getStatusCode());
        successMessage.setStatus("success");
        String url = uriInfo.getAbsolutePath().toString();
        successMessage.addLink(url, "self");
        JSONObject jsonObject = new JSONObject();
        if (userData.size() != 0) {
            successMessage.setMessage("customer data retrieved");
            for (Map<String, Object> map : userData) {
                jsonObject.put("title", map.get("title").toString());
                jsonObject.put("firstName", map.get("first_name").toString());
                jsonObject.put("lastName", map.get("last_name").toString());
                jsonObject.put("username", map.get("username").toString());
                jsonObject.put("email", map.get("email").toString());
                jsonObject.put("addressLine01", map.get("address_line1").toString());
                jsonObject.put("addressLine02", map.get("address_line2").toString());
                if (map.get("address_line3") != null) {
                    jsonObject.put("addressLine03", map.get("address_line3").toString());
                }
                jsonObject.put("mobile", map.get("mobile").toString());
                successMessage.addData(jsonObject);
            }
        } else {
            successMessage.setMessage("no customer data to retrieve");
        }
        return Response.status(Response.Status.OK).entity(successMessage).build();
    }
}
