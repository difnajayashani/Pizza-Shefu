package hsenid.web;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.codehaus.jettison.json.JSONException;
import org.codehaus.jettison.json.JSONObject;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.net.URL;
import java.net.URLConnection;

/**
 * Created by hsenid on 9/26/16.
 */
public class TestJson {

    private final static Logger logger = LogManager.getLogger(TestJson.class);
    public static void main(String[] args) throws JSONException {
//        BasicConfigurator.configure();
        logger.error("Test Error");
        logger.error("Dist");
        logger.trace("Entering application.");
        String username = "testre";
        String password = "password";

        String string = "{"+"username" +":"+ username+","+"password"+":"+password +"}";
        JSONObject jsonObject = new JSONObject(string);
        System.out.println(jsonObject);

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
//            String bld = null;

            while ( (ttt=in.readLine()) != null) {
                sb.append(ttt);
//                bld += ttt;
            }

            System.out.println("\n");
//            System.out.println(sb);
            JSONObject reply = new JSONObject(sb.toString());
            String status = reply.getString("code");

            if (status.equals("200")){
                System.out.println("if worked");
            }else {
                System.out.println("failed");
            }

//            System.out.println(status + " status");

//            System.out.println(reply.getString("code").getClass().getName());
//            System.out.println("\nCrunchify REST Service Invoked Successfully..");
            in.close();
        } catch (Exception e) {
//            System.out.println("\nError while calling Crunchify REST Service");
            System.out.println(e.getMessage());
        }
    }
}
