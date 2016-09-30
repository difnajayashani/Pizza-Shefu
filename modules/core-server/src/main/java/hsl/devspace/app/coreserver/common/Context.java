package hsl.devspace.app.coreserver.common;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

/**
 * Created by Kasun Dinesh on 7/12/16.
 */
public class Context {
    public static ApplicationContext appContext;

    // Instantiate appcontext using static initializer. So the other classes can
    // access the same appcontext object.
    static {
        appContext=new ClassPathXmlApplicationContext("spring-context.xml");
    }
}
