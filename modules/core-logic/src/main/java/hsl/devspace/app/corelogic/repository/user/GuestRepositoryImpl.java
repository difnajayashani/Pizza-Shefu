package hsl.devspace.app.corelogic.repository.user;

import hsl.devspace.app.corelogic.domain.User;
import org.apache.log4j.Logger;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.transaction.PlatformTransactionManager;
import org.springframework.transaction.annotation.Transactional;

import javax.sql.DataSource;
import java.util.List;
import java.util.Map;

/**
 * Created by hsenid on 9/19/16.
 */
public class GuestRepositoryImpl  {
    User user = new User();
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
    public int add(User user){
        int row = 0;

        String guestMob = user.getMobile();
        boolean availability = checkAvailability(guestMob);

        if (availability == false) {
            String sql = "INSERT INTO guest" +
                    "(mobile) VALUES (?)";
            row = jdbcTemplate.update(sql, new Object[]{user.getMobile()});
            log.info(row + "new guest user inserted");
        } else
            log.info(row + "guest user already available");

        return row;

    }
    public boolean checkAvailability(String mobile) {

        boolean result;

        List<Map<String, Object>> mp = jdbcTemplate.queryForList("SELECT * FROM guest WHERE  mobile=?",mobile);
        log.info(mp);

        if (mp.size() != 0) {
            result = true;
        } else result = false;
        log.info(result);
        return result;
    }
    @Transactional
    public void addGuest(User user){
        add(user);
    }



}
