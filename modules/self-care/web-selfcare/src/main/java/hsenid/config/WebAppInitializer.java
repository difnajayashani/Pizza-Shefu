package hsenid.config;


import org.apache.log4j.PropertyConfigurator;
import org.springframework.web.servlet.support.AbstractAnnotationConfigDispatcherServletInitializer;

public class WebAppInitializer extends AbstractAnnotationConfigDispatcherServletInitializer {
    @Override
    protected String[] getServletMappings(){
//        String log4jConfigFile = "/log4j2-test.xml";
//        PropertyConfigurator.configure(log4jConfigFile);
        return new String[]{"/"};
    }

    @Override
    protected Class<?>[] getRootConfigClasses(){
        return new Class<?>[]{RootConfig.class};
    }

    @Override
    protected Class<?>[] getServletConfigClasses(){
        return new Class<?>[]{WebConfig.class};
    }

}
