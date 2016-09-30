package hsl.devspace.app.coreserver.model;

/**
 * Created by Kasn Dinesh on 7/21/16.
 * This class is a template of Jetty server. It defines the attributes of the Jetty server.
 * This class is configured in spring-config-server.xml file.
 */
public class ServerModel {
    private int port;   // Jetty server port number
    private String packageName; // Package contains resources(REST)
    private String contextRoot; // Context path pattern
    private String servletPath; // Servlet path-url pattern

    public int getPort() {
        return port;
    }

    public void setPort(int port) {
        this.port = port;
    }

    public String getPackageName() {
        return packageName;
    }

    public void setPackageName(String packageName) {
        this.packageName = packageName;
    }

    public String getContextRoot() {
        return contextRoot;
    }

    public void setContextRoot(String contextRoot) {
        this.contextRoot = contextRoot;
    }

    public String getServletPath() {
        return servletPath;
    }

    public void setServletPath(String servletPath) {
        this.servletPath = servletPath;
    }
}
