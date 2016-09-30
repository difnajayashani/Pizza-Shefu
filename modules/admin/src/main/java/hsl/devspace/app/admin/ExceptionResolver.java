package hsl.devspace.app.admin;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.core.*;
import org.springframework.web.HttpSessionRequiredException;
import org.springframework.web.servlet.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class ExceptionResolver implements HandlerExceptionResolver, Ordered {

    private static final Logger logger = LoggerFactory.getLogger(ExceptionResolver.class);

    public int getOrder() {
        return Integer.MIN_VALUE; // we're first in line, yay!
    }

    public ModelAndView resolveException(HttpServletRequest aReq, HttpServletResponse aRes, Object aHandler, Exception ex) {
        logger.error("Unexpected exception thrown ", ex);
        if(ex instanceof HttpSessionRequiredException){
            return new ModelAndView("sessionNotFound");
        }
        return null; // trigger other HandlerExceptionResolver's
    }

}