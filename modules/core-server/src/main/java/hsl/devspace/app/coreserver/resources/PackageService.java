package hsl.devspace.app.coreserver.resources;

import hsl.devspace.app.corelogic.repository.Package.PackageRepositoryImpl;
import hsl.devspace.app.corelogic.repository.user.GuestRepositoryImpl;
import hsl.devspace.app.coreserver.common.Context;
import hsl.devspace.app.coreserver.model.SuccessMessage;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.json.simple.JSONObject;
import org.springframework.context.ApplicationContext;

import javax.ws.rs.Consumes;
import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;
import javax.ws.rs.core.UriInfo;
import java.util.List;
import java.util.Map;

/**
 * Created by Kasun Dinesh on 9/26/16.
 * This class handles the requests related to the packages.
 */
@Path("/packages")
public class PackageService {
    private static final Logger log = LogManager.getLogger(PackageService.class);
    ApplicationContext context = Context.appContext;
    PackageRepositoryImpl packageRepository = (PackageRepositoryImpl) context.getBean("packageRepoImpl");

    // Retrieve all the categories
    @GET
    @Path("/getall")
    @Consumes(MediaType.APPLICATION_JSON)
    @Produces(MediaType.APPLICATION_JSON)
    public Response getPackages(@javax.ws.rs.core.Context UriInfo uriInfo) {
        List<Map<String, Object>> packageList = packageRepository.viewAll();
        Response response;
        SuccessMessage successMessage = new SuccessMessage();
        successMessage.setCode(Response.Status.OK.getStatusCode());
        successMessage.setStatus("success");
        String url = uriInfo.getAbsolutePath().toString();
        successMessage.addLink(url, "self");
        if (packageList.size() != 0) {
            successMessage.setMessage("packages retrieved");
            for (Map<String, Object> map : packageList) {
                JSONObject jsonObject = new JSONObject();
                jsonObject.put("PackageName", map.get("name").toString());
                jsonObject.put("content", map.get("content").toString());
                jsonObject.put("price", map.get("price").toString());
                jsonObject.put("imagePath", map.get("image").toString());
                successMessage.addData(jsonObject);
            }
        } else {
            successMessage.setMessage("no packages to retrieve");
        }
        return Response.status(Response.Status.OK).entity(successMessage).build();
    }
}
