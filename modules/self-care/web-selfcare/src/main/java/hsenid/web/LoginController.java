package hsenid.web;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.codehaus.jettison.json.JSONException;
import org.codehaus.jettison.json.JSONObject;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.net.URL;
import java.net.URLConnection;


@Controller
public class LoginController {
    private final static Logger logger = LogManager.getLogger(LoginController.class);

    @RequestMapping("/login")
    public String login(HttpServletRequest request) throws JSONException {

        String username = request.getParameter("username");
        String password = request.getParameter("password");
        logger.error("username " + username);
        logger.error("pass " + password);
        String string = "{" + "username" + ":" + username + "," + "password" + ":" + password + "}";
        JSONObject jsonObject = new JSONObject(string);

        try {
            URL url = new URL("http://localhost:2222/pizza-shefu/api/v1.0/customers/login/");
            URLConnection connection = url.openConnection();
            connection.setDoOutput(true);
            connection.setRequestProperty("Content-Type", "application/json");
            connection.setConnectTimeout(5000);
            connection.setReadTimeout(5000);
            OutputStreamWriter out = new OutputStreamWriter(connection.getOutputStream());
            out.write(jsonObject.toString());
            out.close();

            BufferedReader in = new BufferedReader(new InputStreamReader(connection.getInputStream()));
            String ttt = null;
            StringBuilder sb = new StringBuilder();

            while ((ttt = in.readLine()) != null) {
                sb.append(ttt);
            }

            in.close();

            JSONObject reply = new JSONObject(sb.toString());
            int status = reply.getInt("code");
            logger.error(status);
            if (status == 200) {
                logger.error("success");
                return "locations";
            }

        } catch (Exception e) {
            logger.error("Exception occur. Reason -> " + e.getMessage());
        }

        return "menu";
    }


    @RequestMapping("/register")
    public String register(HttpServletRequest regRequest) throws JSONException {

        String title = regRequest.getParameter("title");
        String firstName = regRequest.getParameter("fname");
        String lastName = regRequest.getParameter("lname");
        String username = regRequest.getParameter("username");
        String email = regRequest.getParameter("email");
        String password = regRequest.getParameter("password");
        String addressL1 = regRequest.getParameter("address1");
        String addressL2 = regRequest.getParameter("address2");
        String addressL3 = regRequest.getParameter("address3");
        String mobile = regRequest.getParameter("mobileNo");
//logger.error(title+firstName+lastName+username+password+addressL1+addressL2+addressL3+mobile);


//        + "username" + ":" + username + ","

        String string = "{" + "title" + ":" + title + ","+ "firstName" + ":" + firstName + ","+ "lastName" + ":" + lastName + ","  + "email" + ":" + email + ","+ "addressL1" + ":" + addressL1 + ","+ "addressL2" + ":" + addressL2 + ","+ "addressL3" + ":" + addressL3 +","+  "username" + ":" + username + "," + "password" + ":" + password + "," + "mobile" + ":" + mobile + "}";
        JSONObject jsonObject = new JSONObject(string);

        logger.error(string);

        try {
            URL url = new URL("http://localhost:2222/pizza-shefu/api/v1.0/customers/register/");
            URLConnection connection = url.openConnection();
            connection.setDoOutput(true);
            connection.setRequestProperty("Content-Type", "application/json");
            connection.setConnectTimeout(5000);
            connection.setReadTimeout(5000);
            OutputStreamWriter out = new OutputStreamWriter(connection.getOutputStream());
            out.write(jsonObject.toString());
            out.close();

            BufferedReader in = new BufferedReader(new InputStreamReader(connection.getInputStream()));
            String ttt = null;
            StringBuilder sb = new StringBuilder();

            while ((ttt = in.readLine()) != null) {
                sb.append(ttt);
            }

            in.close();

            JSONObject reply = new JSONObject(sb.toString());
            int status = reply.getInt("code");
            logger.error(status);
            if (status == 201) {
                logger.error("success");
                return "locations";
            }

        } catch (Exception e) {
            logger.error("Exception occur. Reason -> " + e.getMessage());
        }

        return "aboutus";
    }
}
