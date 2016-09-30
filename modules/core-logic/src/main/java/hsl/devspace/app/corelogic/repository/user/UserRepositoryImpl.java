package hsl.devspace.app.corelogic.repository.user;

import hsl.devspace.app.corelogic.domain.User;
import org.apache.log4j.Logger;
import org.springframework.dao.DuplicateKeyException;
import org.springframework.dao.TransientDataAccessResourceException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.transaction.PlatformTransactionManager;

import javax.sql.DataSource;
import java.sql.Date;
import java.sql.SQLException;
import java.sql.SQLType;
import java.util.List;
import java.util.Map;

/**
 * Created by hsenid on 7/4/16.
 */
public class UserRepositoryImpl implements UserRepository {
    User user = new User();
    private JdbcTemplate jdbcTemplate;
    private PlatformTransactionManager transactionManager;
    private static org.apache.log4j.Logger log = Logger.getLogger(UserRepositoryImpl.class);

    public void setDataSource(DataSource dataSource) {
        jdbcTemplate = new JdbcTemplate(dataSource);

    }

    public void setTransactionManager(PlatformTransactionManager transactionManager) {
        this.transactionManager = transactionManager;

    }

    @Override
    public int add(User user) throws DuplicateKeyException {
        int row = 0;
        String un = user.getUsername();
        String pw = user.getPassword();
        if (un != "" && pw != "") {
            String sql = "INSERT INTO customer " +
                    "(title,first_name,last_name,username,password,email,address_line1,address_line2,address_line3,mobile,registered_date,status) VALUES (?,?,?,?,sha1(?),?,?,?,?,?,CURRENT_DATE,1)";

            row = jdbcTemplate.update(sql, new Object[]{user.getTitle(), user.getFirstName(), user.getLastName(), user.getUsername(), user.getPassword(),
                    user.getEmail(), user.getAddressL1(), user.getAddressL2(), user.getAddressL3(), user.getMobile()});

            log.info(row + "customer inserted");
            log.info(un);
        } else
            log.error("values cannot be null");

        return row;

    }

    @Override
    public int delete(String username) throws IllegalArgumentException {

       // user.setUsername(username);
        String sql = "DELETE FROM customer WHERE username = ?";
        int row = jdbcTemplate.update(sql, new Object[]{username});
        log.info(row + "deleted");
        return row;

    }


    @Override
    public void changePassword(String username, String password, String nPw) {

        user.setUsername(username);
        user.setPassword(password);
        boolean verified = loginAuthenticate(username,password);
        if (verified) {
            user.setPassword(nPw);
            System.out.println(user.getPassword());

            String sql = "UPDATE customer SET password = sha1(?) WHERE username = ? ";
            int row = jdbcTemplate.update(sql, new Object[]{user.getPassword(), user.getUsername()});
            log.info(row + "password changed");
        } else log.info("cannot change password");
    }

    @Override
    public boolean confirmPassword() {
        return user.isConfirmed();
    }

    @Override
    public boolean loginAuthenticate(String username,String password) {

        boolean result ;

        List<Map<String, Object>> mp = jdbcTemplate.queryForList("SELECT * FROM customer WHERE BINARY username = ? AND BINARY password =sha1(?)", username,password);
        log.info(mp);

        if (mp.size()!=0 ) {
            result = true;
        }
        else result=false;
        log.info(result);
        return result;
    }

    @Override
    public int modify(User user) throws TransientDataAccessResourceException, SQLException {

        String sql = "UPDATE customer SET username=? password = ? WHERE username = ? ";
        int count = jdbcTemplate.update(sql, new Object[]{user.getUsername(), user.getPassword(), (user.getUsername())}, Integer.class);
        log.info(count);
        return count;

    }

    @Override
    public List<Map<String, Object>> retrieveSelectedUserDetails(String username) {
        List<Map<String, Object>> mp = jdbcTemplate.queryForList("SELECT * FROM customer WHERE BINARY username = ?", username);
        log.info(mp);
        return mp;
    }

    @Override
    public List<Map<String, Object>> view() {
        List<Map<String, Object>> mp = jdbcTemplate.queryForList("SELECT * FROM customer");
        log.info(mp);
        return mp;
    }

    @Override
    public int block(String username) {

        user.setUsername(username);
        String sql = "UPDATE customer SET status=2 WHERE username = ?";
        int row = jdbcTemplate.update(sql, new Object[]{user.getUsername()});
        log.info(row + "block status");
        return row;
    }

    @Override
    public int unblock(String username) {

        user.setUsername(username);
        String sql = "UPDATE customer SET status=1 WHERE username = ?";
        int row = jdbcTemplate.update(sql, new Object[]{user.getUsername()});
        log.info(row + "unblock status");
        return row;
    }

    @Override
    public int updateGroupStaff(String des,String username) {
        return 0;
    }

    @Override
    public List<Map<String, Object>> retrieveCustomersByDate(java.sql.Date date) {

        List<Map<String, Object>> mp = jdbcTemplate.queryForList("SELECT * FROM customer WHERE registered_date = ?", date);
        log.info(mp);
        return mp;
    }

    @Override
    public List<Map<String, Object>> retrieveByDateRange(Date date1, Date date2) {
        List<Map<String, Object>> mp = jdbcTemplate.queryForList("SELECT * FROM customer WHERE registered_date BETWEEN ? AND ?", date1, date2);
        log.info(mp);
        return mp;
    }

    @Override
    public List<Map<String, Object>> filter(SQLType column, String filterValue) {
        List<Map<String, Object>> mp = jdbcTemplate.queryForList("SELECT * FROM customer WHERE ? = ?", column, filterValue);
        log.info(mp);
        return mp;

    }

    @Override
    public int countUsers() {
        List<Map<String, Object>> mp = jdbcTemplate.queryForList("SELECT * FROM customer ");
        int count = mp.size();
        log.info(count);
        return count;
    }


    }

