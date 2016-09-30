package hsl.devspace.app.corelogic.repository.category;

import hsl.devspace.app.corelogic.domain.Category;
import org.springframework.dao.DuplicateKeyException;

import java.sql.SQLIntegrityConstraintViolationException;
import java.util.List;
import java.util.Map;

/**
 * Created by hsenid on 9/15/16.
 */
public interface CategoryRepository {

    public int add(Category category) throws SQLIntegrityConstraintViolationException, DuplicateKeyException;
    boolean checkAvailability(String categoryName);
    public int delete(String categoryName);
    List<Map<String, Object>> view();
    int count();
    int update(String name,String description);
    List<Map<String, Object>> viewList();
    void createCategory1(Category cat);
    List<Map<String, Object>> retrieveCategoryTypes(String categoryName);
    List<Map<String, Object>> loadMenuItems(String catName);
    List<Map<String, Object>> viewSubCategories(String catName);
    List<Map<String, Object>> viewCategoryList();







}
