package hsl.devspace.app.corelogic.domain;

import java.sql.Date;
import java.sql.Time;

/**
 * Created by hsenid on 9/21/16.
 */
public class Payment {
    private String paymentMethodName;
    private Date date;
    private Time time;
    private double amount;
    private String paymentStatus;
    private String orderType;
    private String userMobile;
    private int deliveryId;
    private String staffName;

    public String getPaymentMethodName() {
        return paymentMethodName;
    }

    public void setPaymentMethodName(String paymentMethodName) {
        this.paymentMethodName = paymentMethodName;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public Time getTime() {
        return time;
    }

    public void setTime(Time time) {
        this.time = time;
    }

    public double getAmount() {
        return amount;
    }

    public void setAmount(double amount) {
        this.amount = amount;
    }

    public String getPaymentStatus() {
        return paymentStatus;
    }

    public void setPaymentStatus(String paymentStatus) {
        this.paymentStatus = paymentStatus;
    }

    public String getOrderType() {
        return orderType;
    }

    public void setOrderType(String orderType) {
        this.orderType = orderType;
    }

    public String getUserMobile() {
        return userMobile;
    }

    public void setUserMobile(String userMobile) {
        this.userMobile = userMobile;
    }

    public int getDeliveryId() {
        return deliveryId;
    }

    public void setDeliveryId(int deliveryId) {
        this.deliveryId = deliveryId;
    }

    public String getStaffName() {
        return staffName;
    }

    public void setStaffName(String staffName) {
        this.staffName = staffName;
    }

    public Payment(String staffName,int deliveryId,String userMobile,String orderType,String paymentStatus,
                   double amount, Time time, Date date, String paymentMethodName) {
        this.staffName = staffName;
        this.deliveryId = deliveryId;
        this.userMobile = userMobile;
        this.orderType = orderType;
        this.paymentStatus = paymentStatus;
        this.amount = amount;
        this.time = time;
        this.date = date;
        this.paymentMethodName = paymentMethodName;
    }

    public Payment() {
    }
}
