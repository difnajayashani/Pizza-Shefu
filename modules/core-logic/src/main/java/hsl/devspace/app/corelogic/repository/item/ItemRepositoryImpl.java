package hsl.devspace.app.corelogic.repository.item;

import hsl.devspace.app.corelogic.domain.Item;
import org.apache.log4j.Logger;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.transaction.PlatformTransactionManager;
import org.springframework.transaction.TransactionDefinition;
import org.springframework.transaction.TransactionStatus;
import org.springframework.transaction.support.DefaultTransactionDefinition;

import javax.sql.DataSource;
import java.util.List;
import java.util.Map;

/**
 * Created by hsenid on 9/19/16.
 */
public class ItemRepositoryImpl implements ItemRepository {
    Item item=new Item();
    private JdbcTemplate jdbcTemplate;
    private PlatformTransactionManager transactionManager;
    private static org.apache.log4j.Logger log = Logger.getLogger(ItemRepositoryImpl.class);

    public void setDataSource(DataSource dataSource) {
        //this.dataSource = dataSource;
        jdbcTemplate = new JdbcTemplate(dataSource);
    }

    public void setTransactionManager(PlatformTransactionManager transactionManager) {
        this.transactionManager = transactionManager;
    }

    @Override
    public int add(Item item) {
        int row = 0;
        String itmNm = item.getItemName();
        int id=item.getItemId();
        boolean availability = checkAvailability(itmNm);

        if (availability == false) {
            String sql = "INSERT INTO item" +
                    "(name,description,type_id,image,sub_category_id) VALUES (?,?,(SELECT type_id FROM type WHERE name=? ),?,(SELECT id FROM sub_category WHERE name=?))";
            row = jdbcTemplate.update(sql, new Object[]{item.getItemName(),item.getDescription(),
                    item.getType(),item.getImage(),item.getSubCategoryName()});
            log.info(row + "new item inserted");
        } else
            log.info(row + "item already available");

        return id;
    }

    @Override
    public int updateSizeTable(int id,List<Item> item2){
        int row=0;
        for(int i=0;i<item2.size();i++) {
            double price=item2.get(i).getPrice();
            String size=item2.get(i).getSize();
            String sql = "INSERT INTO size" +
                    "(size,price,item_id) VALUES (?,?,?)";
            row = jdbcTemplate.update(sql, new Object[]{size,price,id});
            log.info(row + "size updated");
        }
        return row;
    }

    @Override
    public boolean checkAvailability(String itemName) {

        boolean result;
        List<Map<String, Object>> mp = jdbcTemplate.queryForList("SELECT * FROM item WHERE  name=?",itemName);
        log.info(mp);

        if (mp.size() != 0) {
            result = true;
        } else result = false;
        log.info(result);
        return result;
    }

    @Override
    public int delete(String itemName) {

        item.setItemName(itemName);
        String sql = "DELETE FROM item WHERE name = ?";
        int row = jdbcTemplate.update(sql, new Object[]{item.getItemName()});
        log.info(row + " item deleted");
        return row;
    }

    @Override
    public List<Map<String, Object>> view() {
        List<Map<String, Object>> mp = jdbcTemplate.queryForList("SELECT * FROM item");
        log.info(mp);
        return mp;
    }

    @Override
    public int count() {
        List<Map<String, Object>> mp = jdbcTemplate.queryForList("SELECT * FROM item ");
        int count = mp.size();
        log.info(count);
        return count;
    }

    @Override
    public List<Map<String, Object>> viewList() {
        List<Map<String, Object>> mp = jdbcTemplate.queryForList("SELECT name FROM item");
        log.info(mp);
        return mp;
    }

    @Override
    public int update(Item item) {

        String sql = "UPDATE item SET name=? price=? description=? size=? type=? image=? sub_category_id=? WHERE id = ? ";
        int row = jdbcTemplate.update(sql, new Object[]{item.getItemName(), item.getPrice(),item.getDescription(),item.getSize(),item.getType(),item.getImage(),item.getSubCategoryName(),item.getItemId()});
        log.info(row + "Item details changed");
        return  row;
    }

    @Override
    public void addItem(Item item,List<Item> item2){
        TransactionDefinition trDef = new DefaultTransactionDefinition();
        TransactionStatus stat = transactionManager.getTransaction(trDef);
        int id=item.getItemId();
        try {
            add(item);
            updateSizeTable(id,item2);
            transactionManager.commit(stat);
        }
        catch (Exception e){
            transactionManager.rollback(stat);
        }
    }


}
