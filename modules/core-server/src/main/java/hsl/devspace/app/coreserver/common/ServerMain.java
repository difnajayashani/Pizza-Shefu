package hsl.devspace.app.coreserver.common;

import org.tanukisoftware.wrapper.WrapperListener;
import org.tanukisoftware.wrapper.WrapperManager;

/**
 * Created by Kasun Dinesh on 6/13/16.
 * This class handles the life cycle of Wrapper.
 */
public class ServerMain implements WrapperListener {
    InitServer initServer = new InitServer();

    @Override
    // Start wrapper
    public Integer start(String[] strings) {
        initServer.startServer();
        return null;
    }

    @Override
    // Stop wrapper
    public int stop(int i) {
        initServer.stopServer();
        return i;
    }

    @Override
    public void controlEvent(int i) {
        /*if ((i == WrapperManager.WRAPPER_CTRL_LOGOFF_EVENT)
                && WrapperManager.isLaunchedAsService()) {
            // Ignore
        } else {
            WrapperManager.stop(0);
        }*/
    }

    public static void main(String[] args) throws Exception {
        WrapperManager.start(new ServerMain(), args);
    }
}
