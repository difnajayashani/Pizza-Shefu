package hsl.devspace.app.corelogic.repository.shopping_cart;

import hsl.devspace.app.corelogic.domain.ShoppingCart;
import org.apache.log4j.Logger;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.transaction.PlatformTransactionManager;

import javax.sql.DataSource;
import java.util.List;
import java.util.Map;

/**
 * Created by hsenid on 9/23/16.
 */
public class ShoppingCartRepositoryImpl implements ShoppingCartRepository {

    private JdbcTemplate jdbcTemplate;
    private PlatformTransactionManager transactionManager;
    private static org.apache.log4j.Logger log = Logger.getLogger(ShoppingCartRepositoryImpl.class);

    public void setDataSource(DataSource dataSource) {
        jdbcTemplate = new JdbcTemplate(dataSource);

    }

    public void setTransactionManager(PlatformTransactionManager transactionManager) {
        this.transactionManager = transactionManager;

    }

    @Override
    public int add(ShoppingCart shoppingCart) {
        int row;
        String sql = "INSERT INTO shopping_cart " +
                "(net_cost,customer_id,guest_id) VALUES (?,(SELECT id FROM customer WHERE username=?),(SELECT id FROM guest WHERE mobile=?))";
        row = jdbcTemplate.update(sql, new Object[]{shoppingCart.getNetCost(),shoppingCart.getCustomerUsername(),shoppingCart.getGuestMobile()});
        log.info(row + "new shopping cart added");
        return row;
    }

    @Override
    public int delete(int id) {
        int row;
        String sql = "DELETE * FROM shopping_cart " +
                "WHERE id=?";
        row = jdbcTemplate.update(sql, new Object[]{id});
        log.info(row + " shopping cart removed");
        return row;
    }

    @Override
    public int countPerCustomer(String customerUsername) {
        List<Map<String, Object>> mp = jdbcTemplate.queryForList("SELECT * FROM shopping_cart WHERE customer_id=(SELECT id FROM customer WHERE username=?)",customerUsername);
        int count = mp.size();
        log.info(count);
        return count;
    }

    @Override
    public int countPerGuest(String mobile) {
        List<Map<String, Object>> mp = jdbcTemplate.queryForList("SELECT * FROM shopping_cart WHERE guest_id=(SELECT id FROM guest WHERE mobile=?)",mobile);
        int count = mp.size();
        log.info(count);
        return count;
    }

    @Override
    public int countTotalCustomerCarts() {
        List<Map<String, Object>> mp = jdbcTemplate.queryForList("SELECT * FROM shopping_cart WHERE customer_id>0 ");
        int count = mp.size();
        log.info(count);
        return count;
    }

    @Override
    public int countTotalGuestCarts() {
        List<Map<String, Object>> mp = jdbcTemplate.queryForList("SELECT * FROM shopping_cart WHERE guest_id>0 ");
        int count = mp.size();
        log.info(count);
        return count;
    }


}
