package hsl.devspace.app.corelogic.domain;

/**
 * Created by hsenid on 9/23/16.
 */
public class ShoppingCart {
    private double netCost;
    private String customerUsername;
    private String guestMobile;

    public double getNetCost() {
        return netCost;
    }

    public void setNetCost(double netCost) {
        this.netCost = netCost;
    }

    public String getCustomerUsername() {
        return customerUsername;
    }

    public void setCustomerUsername(String customerUsername) {
        this.customerUsername = customerUsername;
    }

    public String getGuestMobile() {
        return guestMobile;
    }

    public void setGuestMobile(String guestMobile) {
        this.guestMobile = guestMobile;
    }

    public ShoppingCart(double netCost, String customerUsername, String guestMobile) {
        this.netCost = netCost;
        this.customerUsername = customerUsername;
        this.guestMobile = guestMobile;
    }
}
