package hsl.devspace.app.corelogic.repository.coupon;

import hsl.devspace.app.corelogic.domain.Coupon;
import org.apache.log4j.Logger;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.transaction.PlatformTransactionManager;

import javax.sql.DataSource;
import java.util.List;
import java.util.Map;

/**
 * Created by hsenid on 9/19/16.
 */
public class CouponRepositoryImpl implements CouponRepository {
    Coupon coupon=new Coupon();
    private JdbcTemplate jdbcTemplate;
    private PlatformTransactionManager transactionManager;
    private static org.apache.log4j.Logger log = Logger.getLogger(CouponRepositoryImpl.class);

    public void setDataSource(DataSource dataSource) {
        jdbcTemplate = new JdbcTemplate(dataSource);

    }

    public void setTransactionManager(PlatformTransactionManager transactionManager) {
        this.transactionManager = transactionManager;

    }
    @Override
    public int add(String couponCode,String customerMobile){
        int row;
        String sql = "INSERT INTO coupon" +
                "(coupon_code,rate,expire_date,status,customer_mobile) VALUES (?,10,DATE_ADD(CURRENT_DATE,INTERVAL 30 DAY),1,?)";
        row = jdbcTemplate.update(sql, new Object[]{couponCode, customerMobile});
        log.info(row + "new coupon inserted");
        return row;
    }

    @Override
    public int expire() {
        int row;
        String sql="UPDATE coupon SET status=3 WHERE expire_date <=CURRENT_DATE";
        row=jdbcTemplate.update(sql);
        log.info("expired");
        return row;
    }

    @Override
    public  List<Map<String, Object>> viewActiveCoupons() {
        List<Map<String, Object>> mp = jdbcTemplate.queryForList("SELECT * FROM coupon WHERE status = 1");
        log.info(mp);
        return mp;
    }

    @Override
    public int countActiveCoupons() {
        List<Map<String, Object>> mp = jdbcTemplate.queryForList("SELECT * FROM coupon WHERE status=1");
        int count = mp.size();
        log.info(count);
        return count;
    }

    @Override
    public boolean ifExpired(String couponCode) {
        boolean ifExpired=false;

        return false;
    }

    @Override
    public boolean validateCoupon(String couponCode, String mobile) {
        boolean result=false;
        List<Map<String, Object>> mp = jdbcTemplate.queryForList("SELECT customer_mobile,status FROM coupon WHERE coupon_code=?", couponCode);
       log.info(mp);
        log.info(mp.get(0).get("customer_mobile"));
        if(mp.get(0).get("customer_mobile").equals(mobile) && mp.get(0).get("status").toString().equals("active")){
            result=true;
            log.info("coupon is valid");

        }
        else{
            log.info("coupon not valid");
        }
        log.info(result);
        return result;
    }


}
