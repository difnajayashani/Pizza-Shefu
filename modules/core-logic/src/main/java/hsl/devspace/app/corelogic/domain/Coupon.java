package hsl.devspace.app.corelogic.domain;

import java.sql.Date;

/**
 * Created by hsenid on 9/19/16.
 */
public class Coupon {
    private String couponCode;
    private double rate;
    private Date expireDate;
    private enum status{
        active,used,expired
    }
    private String customerMobile;

    public String getCouponCode() {
        return couponCode;
    }

    public void setCouponCode(String couponCode) {
        this.couponCode = couponCode;
    }

    public double getRate() {
        return rate;
    }

    public void setRate(double rate) {
        this.rate = rate;
    }

    public Date getExpireDate() {
        return expireDate;
    }

    public void setExpireDate(Date expireDate) {
        this.expireDate = expireDate;
    }

    public String getCustomerMobile() {
        return customerMobile;
    }

    public void setCustomerMobile(String customerMobile) {
        this.customerMobile = customerMobile;
    }
    public Coupon(){

    }
    public Coupon(String couponCode,double rate,Date expireDate,String customerMobile){
        this.couponCode=couponCode;
        this.rate=rate;
        this.expireDate=expireDate;
        this.customerMobile=customerMobile;
    }
}
