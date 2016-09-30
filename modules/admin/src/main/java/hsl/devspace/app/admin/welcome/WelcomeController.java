package hsl.devspace.app.admin.welcome;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;



@Controller
@RequestMapping(value = "/cas")
//@SessionAttributes("welcomeForm")
public class WelcomeController {

    private static final Logger LOG = LogManager.getLogger(WelcomeController.class);
    private static final String view = "casLoginView";

    @RequestMapping(value ="/login", method= RequestMethod.GET)
    public ModelAndView initWelcome(@RequestParam(value = "error", required = false) String error) throws Exception {

        LOG.trace("inside the welcome initiate service method");

        ModelAndView model = new ModelAndView();
        if (error != null) {
            model.addObject("error", "Invalid username and password!");
        }
        model.setViewName(view);
        return model;
    }

}
