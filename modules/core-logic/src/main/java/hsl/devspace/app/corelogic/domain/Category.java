package hsl.devspace.app.corelogic.domain;

/**
 * Created by hsenid on 9/15/16.
 */
public class Category {
    private String categoryName;
    private String description;
    private String creator;
    private String subCategoryName;
    private int category_id;

    public String getCategoryName() {
        return categoryName;
    }

    public void setCategoryName(String categoryName) {
        this.categoryName = categoryName;
    }

    public String getSubCategoryName() {
        return subCategoryName;
    }

    public void setSubCategoryName(String subCategoryName) {
        this.subCategoryName = subCategoryName;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getCreator() {
        return creator;
    }

    public void setCreator(String creator) {
        this.creator = creator;
    }

    public int getCategory_id() {
        return category_id;
    }

    public void setCategory_id(int category_id) {
        this.category_id = category_id;
    }

    public Category(){

    }
    //category
    public Category(String categoryName,String description,String creator){
        this.categoryName=categoryName;
        this.description=description;
        this.creator=creator;
    }
    //sub category
    public Category(String subCategoryName,String description,String creator,String categoryName){
        this.subCategoryName=subCategoryName;
        this.description=description;
        this.creator=creator;
        this.categoryName=categoryName;
    }
}
