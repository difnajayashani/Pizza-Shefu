package hsl.devspace.app.coreserver.common;

import com.sun.jersey.spi.container.servlet.ServletContainer;
import hsl.devspace.app.coreserver.model.ServerModel;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.eclipse.jetty.server.Server;
import org.eclipse.jetty.servlet.ServletContextHandler;
import org.eclipse.jetty.servlet.ServletHolder;
import org.springframework.context.ApplicationContext;


/**
 * Created by Kasun Dinesh on 6/29/16.
 * This class handles the start and stop of the Jetty server.
 */
public class InitServer {
    ApplicationContext context = Context.appContext;
    private static final Logger log = LogManager.getLogger(InitServer.class);
    Server server;

    // Start Jetty server.
    public void startServer() {
        log.info("core-server starting.");
        ServerModel serverModel = (ServerModel) context.getBean("serverModel");
        ServletHolder sh = new ServletHolder(ServletContainer.class);
        sh.setInitParameter("com.sun.jersey.config.property.packages", serverModel.getPackageName());//Set the package where the services reside
        sh.setInitParameter("com.sun.jersey.api.json.POJOMappingFeature", "true");

        server = new Server(serverModel.getPort());
        ServletContextHandler context = new ServletContextHandler(server, serverModel.getContextRoot(), ServletContextHandler.SESSIONS);
        context.addServlet(sh, serverModel.getServletPath());
        try {
            server.join();
            server.start();
        } catch (Exception e) {
            log.error("error starting core-server. " + e);
        }
        log.info("core-server started.");
    }

    // Stop Jetty server.
    public void stopServer() {
        log.info("core-server stopping.");
        try {
            server.stop();
        } catch (Exception e) {
            log.error("error stopping core-server. " + e);
        }
        log.info("core-server stopped.");
    }
}