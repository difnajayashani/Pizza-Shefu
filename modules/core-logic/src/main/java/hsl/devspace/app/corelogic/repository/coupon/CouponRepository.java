package hsl.devspace.app.corelogic.repository.coupon;

import java.util.List;
import java.util.Map;

/**
 * Created by hsenid on 9/19/16.
 */
public interface CouponRepository {

     int add(String couponCode,String customerMobile);
    int expire();
    List<Map<String, Object>> viewActiveCoupons();
    int countActiveCoupons();
    boolean ifExpired(String couponCode);
    boolean validateCoupon(String couponCode,String mobile);
}
