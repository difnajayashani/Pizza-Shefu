package hsl.devspace.app.admin.listener;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;


import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;

public class ApplicationStatusEventListener implements ServletContextListener {

    /**create the logger object for logging */
    private static final Logger LOG = LogManager.getLogger(ApplicationStatusEventListener.class);
    @Override
    public void contextInitialized(ServletContextEvent sce) {

        LOG.info("Selfcare started");
    }

    @Override
    public void contextDestroyed(ServletContextEvent sce) {

        LOG.info("Selfcare shutted down");
    }
}

