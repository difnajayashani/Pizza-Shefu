package hsl.devspace.app.admin;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import java.util.HashMap;
import java.util.Map;

@Controller
public class ErrorController {

    @RequestMapping(value="/error/403.jsp")
    public ModelAndView handle404() {
        return new ModelAndView("redirect:/403.jsp");
    }

    @RequestMapping(value="/404.html")
    public ModelAndView view404ErrorPage() {
        Map model = new HashMap();

        model.put("errorMessage", "cm.404.error");
        model.put("redirectUrl", "/welcome.html");

        return new ModelAndView("error", "model", model);
    }
}
