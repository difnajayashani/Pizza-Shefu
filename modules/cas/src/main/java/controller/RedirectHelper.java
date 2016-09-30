package controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Component;
import org.springframework.util.Base64Utils;

@Component("userCustomRedirectHelper")
public class RedirectHelper {

    final static Logger logger = LoggerFactory.getLogger(RedirectHelper.class);

    public String decodeURLFromString(String src) {
        String url = new String(Base64Utils.decodeFromString(src));
        logger.debug("Redirect URL: " + src);
        return url;
    }
}