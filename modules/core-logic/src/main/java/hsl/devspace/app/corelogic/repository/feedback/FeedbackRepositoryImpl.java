package hsl.devspace.app.corelogic.repository.feedback;

import hsl.devspace.app.corelogic.domain.Feedback;
import org.apache.log4j.Logger;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.transaction.PlatformTransactionManager;

import javax.sql.DataSource;

/**
 * Created by hsenid on 9/19/16.
 */
public class FeedbackRepositoryImpl implements FeedbackRepository{
    Feedback fd=new Feedback();
    private JdbcTemplate jdbcTemplate;
    private PlatformTransactionManager transactionManager;
    private static org.apache.log4j.Logger log = Logger.getLogger(FeedbackRepositoryImpl.class);

    public void setDataSource(DataSource dataSource) {
        jdbcTemplate = new JdbcTemplate(dataSource);

    }

    public void setTransactionManager(PlatformTransactionManager transactionManager) {
        this.transactionManager = transactionManager;

    }

    @Override
    public int add(Feedback feedback) {
        int row;
        String sql = "INSERT INTO feedback " +
                "(date,time,comment,number_of_stars,customer_id,item_id) VALUES (?,?,?,?,?,(SELECT id FROM item WHERE name=?))";

        row = jdbcTemplate.update(sql, new Object[]{fd.getDate(),fd.getTime(),fd.getComment(),fd.getNumberOfStars(),fd.getCustomerId(),fd.getItemName()});
        log.info(row + "new feedback added");
        return row;
    }
}
