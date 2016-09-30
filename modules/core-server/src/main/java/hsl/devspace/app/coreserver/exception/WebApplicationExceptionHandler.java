package hsl.devspace.app.coreserver.exception;

import hsl.devspace.app.coreserver.common.Context;
import hsl.devspace.app.coreserver.model.ErrorMessage;
import org.springframework.context.ApplicationContext;

import javax.ws.rs.WebApplicationException;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;

/**
 * Created by Kasun Dinesh on 7/22/16.
 * This class will handle the of responding for various kinds of WebApplicationExceptions.
 */
public class WebApplicationExceptionHandler {

    ApplicationContext context = Context.appContext;

    // This method will generate a relevant response according to the WebApplicationException occurred.
    public Response handleWebApplicationException(Exception exception, Response response500) {
        WebApplicationException webAppException = (WebApplicationException) exception;
        // Get the status code of the exception
        int statusCode = webAppException.getResponse().getStatus();

        // Check statusCode
        switch (statusCode) {
            // According to the status code, specific error message will be generated.
            // Error message format for status codes are defined in spring-config-error-msgs.xml file.
            // If the statusCode matches with the cases of the switch, relevant response will return.
            case 400:
                ErrorMessage error400 = (ErrorMessage) context.getBean("response400");
                return Response.status(statusCode).entity(error400).type(MediaType.APPLICATION_JSON).build();
            case 401:
                ErrorMessage error401 = (ErrorMessage) context.getBean("response401");
                return Response.status(statusCode).entity(error401).type(MediaType.APPLICATION_JSON).build();
            case 404:
                ErrorMessage error404 = (ErrorMessage) context.getBean("response404");
                return Response.status(statusCode).entity(error404).type(MediaType.APPLICATION_JSON).build();
            case 405:
                ErrorMessage error405 = (ErrorMessage) context.getBean("response405");
                return Response.status(statusCode).entity(error405).type(MediaType.APPLICATION_JSON).build();
            case 408:
                ErrorMessage error408 = (ErrorMessage) context.getBean("response408");
                return Response.status(statusCode).entity(error408).type(MediaType.APPLICATION_JSON).build();
            case 409:
                ErrorMessage error409 = (ErrorMessage) context.getBean("response409");
                return Response.status(statusCode).entity(error409).type(MediaType.APPLICATION_JSON).build();
            case 414:
                ErrorMessage error414 = (ErrorMessage) context.getBean("response414");
                return Response.status(statusCode).entity(error414).type(MediaType.APPLICATION_JSON).build();
            case 415:
                ErrorMessage error415 = (ErrorMessage) context.getBean("response415");
                return Response.status(statusCode).entity(error415).type(MediaType.APPLICATION_JSON).build();
        }
        // If the status code did not match with switch case,
        // already defined internal server error message will be returned.
        return response500;
    }
}
