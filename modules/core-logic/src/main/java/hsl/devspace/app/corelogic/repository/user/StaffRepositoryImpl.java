package hsl.devspace.app.corelogic.repository.user;

import hsl.devspace.app.corelogic.domain.User;
import org.apache.log4j.Logger;
import org.springframework.dao.DuplicateKeyException;
import org.springframework.dao.TransientDataAccessResourceException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.transaction.PlatformTransactionManager;
import org.springframework.transaction.TransactionDefinition;
import org.springframework.transaction.TransactionStatus;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.transaction.support.DefaultTransactionDefinition;

import javax.sql.DataSource;
import java.sql.Date;
import java.sql.SQLException;
import java.sql.SQLType;
import java.util.List;
import java.util.Map;

/**
 * Created by hsenid on 9/8/16.
 */
public class StaffRepositoryImpl implements UserRepository {
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
        String des = user.getDesignation();
        if (un != "" && pw != "") {

            String sql = "INSERT INTO staff " +
                    "(title,username,password,first_name,last_name,email,mobile,address_line1,address_line2,address_line3," +
                    "designation,department,branch,register_date,status) VALUES (?,?,sha1(?),?,?,?,?,?,?,?,?,?,?,CURRENT_DATE,1)";

            row = jdbcTemplate.update(sql, new Object[]{user.getTitle(), user.getUsername(), user.getPassword(), user.getFirstName(), user.getLastName(),
                    user.getEmail(), user.getMobile(), user.getAddressL1(), user.getAddressL2(), user.getAddressL3(), user.getDesignation(),
                    user.getDepartment(), user.getBranch()});
            updateGroupStaff(des,un);


            log.info(row + " staff inserted");
            log.info(un);

        } else
            log.error("values cannot be null");

        return row;

    }
@Override
    public int updateGroupStaff(String des,String username) {

        int row;
    List<Map<String, Object>> mp1 = jdbcTemplate.queryForList("SELECT id FROM staff WHERE username=?",username);

    List<Map<String, Object>> mp = jdbcTemplate.queryForList("SELECT id FROM `group` WHERE name =?",des);

    String sql = "INSERT INTO group_staff " +
                "(group_id,staff_id) VALUES (?,?)";

        row = jdbcTemplate.update(sql,new Object[]{mp.get(0).get("id"),mp1.get(0).get("id")});
        log.info(row + " group-staff updated");
        return row;

    }

    @Override
    public int delete(String username) throws IllegalArgumentException {

        user.setUsername(username);

        String sql = "DELETE FROM staff WHERE username = ?";
        int row = jdbcTemplate.update(sql, new Object[]{user.getUsername()});
        log.info(row + "staff deleted");
        return row;

    }


    @Override
    public void changePassword(String username, String password, String nPw) {


        user.setUsername(username);
        user.setPassword(password);
        boolean verified = loginAuthenticate(username, password);
        if (verified) {

            user.setPassword(nPw);
            System.out.println(user.getPassword());

            String sql = "UPDATE staff SET password = sha1(?) WHERE username = ? ";
            int row = jdbcTemplate.update(sql, new Object[]{user.getPassword(), user.getUsername()});
            log.info(row + "password changed");
        } else log.info("cannot change password");
    }

    @Override
    public boolean confirmPassword() {
        return user.isConfirmed();
    }

    @Override
    public boolean loginAuthenticate(String username, String password) {

        boolean result = false;

        String sql = "SELECT count(*) FROM staff WHERE BINARY username = ? AND BINARY password =? ";

        int count = jdbcTemplate.queryForObject(
                sql, new Object[]{user.getUsername(), (user.getPassword())}, Integer.class);

        if (count > 0) {
            result = true;
        }
        log.info(result);
        return result;
    }

    @Override
    public int modify(User user) throws TransientDataAccessResourceException, SQLException {

        String sql = "UPDATE staff SET username=? password = ? WHERE username = ? ";

        int count = jdbcTemplate.update(sql, new Object[]{user.getUsername(), user.getPassword(), (user.getUsername())}, Integer.class);
        log.info(count);
        return count;

    }

    @Override
    public List<Map<String, Object>> retrieveSelectedUserDetails(String username) {
        List<Map<String, Object>> mp = jdbcTemplate.queryForList("SELECT * FROM staff WHERE BINARY username = ?", username);
        log.info(mp);
        return mp;
    }

    @Override
    public List<Map<String, Object>> view() {
        List<Map<String, Object>> mp = jdbcTemplate.queryForList("SELECT * FROM staff");
        log.info(mp);
        return mp;
    }

    @Override
    public int block(String username) {

        user.setUsername(username);

        String sql = "UPDATE staff SET status=2 WHERE username = ?";
        int row = jdbcTemplate.update(sql, new Object[]{user.getUsername()});
        log.info(row + "block status");
        return row;
    }

    @Override
    public int unblock(String username) {

        user.setUsername(username);

        String sql = "UPDATE staff SET status=1 WHERE username = ?";
        int row = jdbcTemplate.update(sql, new Object[]{user.getUsername()});
        log.info(row + "unblock status");
        return row;
    }

    @Override
    public List<Map<String, Object>> retrieveCustomersByDate(java.sql.Date date) {

        List<Map<String, Object>> mp = jdbcTemplate.queryForList("SELECT * FROM staff WHERE register_date = ?", date);
        log.info(mp);
        return mp;
    }

    @Override
    public List<Map<String, Object>> retrieveByDateRange(Date date1, Date date2) {
        List<Map<String, Object>> mp = jdbcTemplate.queryForList("SELECT * FROM staff WHERE register_date BETWEEN ? AND ?", date1, date2);
        log.info(mp);
        return mp;
    }

    @Override
    public List<Map<String, Object>> filter(SQLType column, String filterValue) {
        List<Map<String, Object>> mp = jdbcTemplate.queryForList("SELECT * FROM staff WHERE ? = ?", column, filterValue);
        log.info(mp);
        return mp;

    }

    @Override
    public int countUsers() {
        List<Map<String, Object>> mp = jdbcTemplate.queryForList("SELECT * FROM staff ");
        int count = mp.size();
        log.info(count);
        return count;
    }
    public void test(String des){
        List<Map<String, Object>> mp = jdbcTemplate.queryForList("SELECT id FROM `group` ");
        log.info(mp);

    }

    public void addStaffMember(User user) {
        TransactionDefinition trDef = new DefaultTransactionDefinition();
        TransactionStatus stat = transactionManager.getTransaction(trDef);
        String des=user.getDesignation();
        String username=user.getUsername();
        try {
            log.info("going updated");

            add(user);
           // updateGroupStaff( des, username);
            log.info("updated");
            transactionManager.commit(stat);
        } catch (Exception e) {
            transactionManager.rollback(stat);
            log.info("rollbacked");
        }

    }
    @Transactional
    public void addStaffMember2(User user) {
        add(user);
       // updateGroupStaff(user);
    }

    }






