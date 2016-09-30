package hsenid.web;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@Controller

public class HomeController {

    private final static Logger logger = LogManager.getLogger(HomeController.class);


    @RequestMapping({"/", "/home"})
    public String home() {
        logger.error("test");
        return "self-care-home";
    }

    @RequestMapping("/menu")
    public String menu() {
        logger.info("DBConnecter connection created");
        return "menu";
    }

    @RequestMapping("/locations")
    public String locations() {
        return "locations";
    }

    @RequestMapping("/createfeedback")
    public String createfeedback() {
        return "createfeedback";
    }

    @RequestMapping("/contactus")
    public String contactus() {
        return "contactus";
    }

    @RequestMapping("/aboutus")
    public String aboutus() {
        return "aboutus";
    }

    @RequestMapping("/payment")
    public String payment() {
        return "payment";
    }

    @RequestMapping("/shopping-cart")
    public String shoppingCart() {
        return "shopping-cart";
    }

    @RequestMapping("/forgotpassword")
    public String forgotpassword() {
        return "forgotpassword";
    }


    @RequestMapping("/delivery")
    public String delivery() {
        return "delivery";
    }

    @RequestMapping("/pickup-summary")
    public String pickupSummary() {
        return "pickup-summary";
    }

    @RequestMapping("/view-customer-details")
    public String viewCustomerDetails() {
        return "view-customer-details";
    }

    @RequestMapping("/pay")
    public String pay() {
        return "pay";
    }

    @RequestMapping("/success")
    public String success() {
        return "success";
    }
/*
    @RequestMapping("/register")
    public String register() {
        return "register";
    }*/

    @RequestMapping("/delivery-summary")
    public String deliverySummary(){
        return "delivery-summary";
    }

    @RequestMapping("search-results")
    public String searchResults(){
        return "search-results";
    }
    //    Test request
    @GetMapping("/test")
    public String test(Model model) {
        model.addAttribute("greeting", new Greeting());
        return "test";
    }

    @RequestMapping(value = "/testt",  method = RequestMethod.GET)
    public String greetSubmit(@ModelAttribute Greeting greeting){
        return "test";
    }

}
