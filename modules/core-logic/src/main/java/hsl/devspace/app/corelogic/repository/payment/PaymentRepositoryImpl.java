package hsl.devspace.app.corelogic.repository.payment;

import hsl.devspace.app.corelogic.domain.Payment;
import hsl.devspace.app.corelogic.repository.user.UserRepositoryImpl;
import org.apache.log4j.Logger;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.transaction.PlatformTransactionManager;

import javax.sql.DataSource;

/**
 * Created by hsenid on 9/21/16.
 */
public class PaymentRepositoryImpl implements PaymentRepository {
    Payment pay=new Payment();
    private JdbcTemplate jdbcTemplate;
    private PlatformTransactionManager transactionManager;
    private static org.apache.log4j.Logger log = Logger.getLogger(UserRepositoryImpl.class);

    public void setDataSource(DataSource dataSource) {
        //this.dataSource = dataSource;
        jdbcTemplate = new JdbcTemplate(dataSource);

    }

    public void setTransactionManager(PlatformTransactionManager transactionManager) {
        this.transactionManager = transactionManager;

    }


    @Override
    public int add(Payment payment) {
        int row ;
        String sql = "INSERT INTO payment_transaction " +
                    "(date,time,amount,payment_status,order_type,customer_id,staff_id,payment_method_id,delivery_id,guest_id)" +
                    " VALUES (?,?,?,?,?,(SELECT id FROM customer WHERE mobile=?),(SELECT id FROM staff WHERE username=?),(SELECT id FROM payment_method WHERE name=?),?,(SELECT id FROM guest WHERE mobile=?))";

            row = jdbcTemplate.update(sql, new Object[]{payment.getDate(),payment.getTime(),payment.getAmount(),payment.getPaymentStatus(),payment.getOrderType(),payment.getUserMobile(),payment.getStaffName(),payment.getPaymentMethodName(),payment.getDeliveryId(),payment.getUserMobile()});
            log.info(row + " payment inserted");
        return row;
    }

    @Override
    public int addPaymentMethod(String paymentMethod) {
        int row ;
        String sql = "INSERT INTO payment_method (name) VALUES (?)";

        row = jdbcTemplate.update(sql, new Object[]{paymentMethod});
        log.info(row + "new payment method inserted");
        return row;
    }

}
