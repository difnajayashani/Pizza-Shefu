package hsl.devspace.app.corelogic.repository.Package;

import hsl.devspace.app.corelogic.domain.Package;
import org.apache.log4j.Logger;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.transaction.PlatformTransactionManager;

import javax.sql.DataSource;
import java.util.List;
import java.util.Map;

/**
 * Created by hsenid on 9/20/16.
 */
public class PackageRepositoryImpl implements PackageRepository  {
    //Package pkg=new Package();
    private JdbcTemplate jdbcTemplate;
    private PlatformTransactionManager transactionManager;
    private static org.apache.log4j.Logger log = Logger.getLogger(PackageRepositoryImpl.class);

    public void setDataSource(DataSource dataSource) {
        jdbcTemplate = new JdbcTemplate(dataSource);

    }

    public void setTransactionManager(PlatformTransactionManager transactionManager) {
        this.transactionManager = transactionManager;

    }

    @Override
    public int add(Package pack) {
        int row;
        String sql = "INSERT INTO package " +
                "(name,content,price,image) VALUES (?,?,?,?)";
        row = jdbcTemplate.update(sql, new Object[]{pack.getPackName(),pack.getContent(),pack.getPrice(),pack.getImage()});
        log.info(row + "new package added");
        return row;
    }

    @Override
    public int delete(String packageName) {

        String sql = "DELETE FROM package WHERE name = ?";
        int row = jdbcTemplate.update(sql, new Object[]{packageName});
        log.info(row + " package deleted");
        return row;
    }

    @Override
    public int changeItemsInPackage(String packageName,String content) {
        String sql = "UPDATE package SET content=?  WHERE name = ? ";
        int row = jdbcTemplate.update(sql, new Object[]{content,packageName});
        log.info(row);
        return row;
    }

    @Override
    public int changePrice(String packageName,double price) {

        String sql = "UPDATE package SET price=?  WHERE name = ? ";
        int row = jdbcTemplate.update(sql, new Object[]{price, packageName});
        log.info(row);
        return row;
    }

    @Override
    public List<Map<String, Object>> viewAll() {
        List<Map<String, Object>> mp = jdbcTemplate.queryForList("SELECT * FROM package");
        log.info(mp);
        return mp;
    }

}
