
package hsl.devspace.app.admin.usermanagement.spring.validator;


import hsl.devspace.app.corelogic.domain.User;
import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

@Component
public class UserValidator implements Validator{


    @Override
    public boolean supports(Class<?> aClass) {
        return User.class.isAssignableFrom(aClass);
    }

    @Override
    public void validate(Object target, Errors errors) {
        User user= (User) target;

        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "firstName", "fname required");
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "lastName", "lname required");
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "mobile", "mobile required");
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "addressL1", "addressL1 required");
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "addressL3", "addressL3 required");
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "username", "username required");
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "password", "password required");

        if(user.getMobile().length() < 7){
            errors.rejectValue("mobile","contain more than 7 ");
        }


    }
}

