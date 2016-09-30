package hsl.devspace.app.coreserver.resources;

import hsl.devspace.app.corelogic.domain.User;
import hsl.devspace.app.corelogic.repository.category.CategoryRepositoryImpl;
import hsl.devspace.app.corelogic.repository.user.GuestRepositoryImpl;
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

/**
 * Created by hsenid on 9/27/16.
 */
@Path("/guests")
public class GuestService {
    private static final Logger log = LogManager.getLogger(GuestService.class);
    ApplicationContext context = Context.appContext;
    GuestRepositoryImpl guestRepository = (GuestRepositoryImpl) context.getBean("guestRepoImpl");

    // Add a new guest record
    @POST
    @Path("/add")
    @Consumes(MediaType.APPLICATION_JSON)
    @Produces(MediaType.APPLICATION_JSON)
    public Response addGuest(User user, @javax.ws.rs.core.Context UriInfo uriInfo) {
        User myUser = new User();
        myUser.setMobile(user.getMobile());

        Response response;
        if (user.getMobile() == "") {
            throw new WebApplicationException(400);
        } else {
            int status = guestRepository.add(myUser);
            if (status != 0) {
                SuccessMessage successMessage = new SuccessMessage();
                successMessage.setCode(Response.Status.CREATED.getStatusCode());
                successMessage.setStatus("success");
                successMessage.setMessage("guest user added to the database");
                JSONObject jsonObject = new JSONObject();
                jsonObject.put("mobileNo", user.getMobile());
                String url = uriInfo.getAbsolutePath().toString();
                successMessage.addLink(url, "self");
                successMessage.addData(jsonObject);
                response = Response.status(Response.Status.CREATED).entity(successMessage).build();
            } else {
                throw new WebApplicationException(400);
            }
        }
        return response;
    }
}
