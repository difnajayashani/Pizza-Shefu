package hsl.devspace.app.corelogic.domain;

/**
 * Created by hsenid on 9/19/16.
 */
public class Item {
    private String itemName;
    private double price;
    private String description;
    private String size;
    private String type;
    private String image;
    private String subCategoryName;
    private int itemId;

    public int getItemId() {
        return itemId;
    }

    public void setItemId(int itemId) {
        this.itemId = itemId;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getItemName() {
        return itemName;
    }

    public void setItemName(String itemName) {
        this.itemName = itemName;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getSize() {
        return size;
    }

    public void setSize(String size) {
        this.size = size;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public String getSubCategoryName() {
        return subCategoryName;
    }

    public void setSubCategoryName(String subCategoryName) {
        this.subCategoryName = subCategoryName;
    }
    public Item(){

    }
    public Item(String itemName,double price,String description,String size,String type,String image,String subCategoryName){
        this.itemName=itemName;
        this.price=price;
        this.description=description;
        this.size=size;
        this.type=type;
        this.image=image;
        this.subCategoryName=subCategoryName;
    }

    public Item(String itemName, double price, String description, String size, String type, String image, String subCategoryName, int itemId) {
        this.itemName = itemName;
        this.price = price;
        this.description = description;
        this.size = size;
        this.type = type;
        this.image = image;
        this.subCategoryName = subCategoryName;
        this.itemId = itemId;
    }

    public Item(String itemName, String description, String type, String image, String subCategoryName) {
        this.itemName = itemName;
        this.description = description;
        this.type = type;
        this.image = image;
        this.subCategoryName = subCategoryName;
    }

    public Item(double price, String size) {
        this.price = price;
        this.size = size;
    }
}
