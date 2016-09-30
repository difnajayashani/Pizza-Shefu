package hsl.devspace.app.admin;

import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class ThemeApplyingInterceptor extends HandlerInterceptorAdapter {

    public static final String THEME_ATTRIBUTE_NAME = "theme";

    private String themeName = "m1-green";


    public ThemeApplyingInterceptor(){

    }

    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
            throws ServletException {

        request.setAttribute(THEME_ATTRIBUTE_NAME, themeName);
        return true;
    }

    public void setThemeName(String themeName) {
        this.themeName = themeName;
    }
}

