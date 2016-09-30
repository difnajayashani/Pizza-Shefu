package hsl.devspace.app.corelogic.domain;

/**
 * Created by hsenid on 9/20/16.
 */
public class Package {
    private String packName;
    private String content;
    private double price;
    private String image;
    private int packageId;

    public int getPackageId() {
        return packageId;
    }

    public void setPackageId(int packageId) {
        this.packageId = packageId;
    }

    public String getPackName() {
        return packName;
    }

    public void setPackName(String packName) {
        this.packName = packName;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public Package(String packName, String content, double price, String image) {
        this.packName = packName;
        this.content = content;
        this.price = price;
        this.image = image;
    }

    public Package() {
    }
}
