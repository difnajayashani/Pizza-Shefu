package hsl.devspace.app.corelogic.domain;

import java.sql.Time;
import java.util.Date;

/**
 * Created by hsenid on 9/19/16.
 */
public class Delivery {
    private String agentName;
    private String recepientName;
    private String recepientAddress;
    private Date deliveryDate;
    private Time deliveryTime;
    private String deliveryStatus;
    private String description;
    private String deliveryMethod;

    public String getAgentName() {
        return agentName;
    }

    public void setAgentName(String agentName) {
        this.agentName = agentName;
    }

    public String getRecepientName() {
        return recepientName;
    }

    public void setRecepientName(String recepientName) {
        this.recepientName = recepientName;
    }

    public String getRecepientAddress() {
        return recepientAddress;
    }

    public void setRecepientAddress(String recepientAddress) {
        this.recepientAddress = recepientAddress;
    }

    public Date getDeliveryDate() {
        return deliveryDate;
    }

    public void setDeliveryDate(Date deliveryDate) {
        this.deliveryDate = deliveryDate;
    }

    public Time getDeliveryTime() {
        return deliveryTime;
    }

    public void setDeliveryTime(Time deliveryTime) {
        this.deliveryTime = deliveryTime;
    }

    public String getDeliveryStatus() {
        return deliveryStatus;
    }

    public void setDeliveryStatus(String deliveryStatus) {
        this.deliveryStatus = deliveryStatus;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getDeliveryMethod() {
        return deliveryMethod;
    }

    public void setDeliveryMethod(String deliveryMethod) {
        this.deliveryMethod = deliveryMethod;
    }

    public Delivery(String agentName, String recepientName, String recepientAddress, Date deliveryDate,
                    Time deliveryTime, String deliveryStatus, String description, String deliveryMethod) {
        this.agentName = agentName;
        this.recepientName = recepientName;
        this.recepientAddress = recepientAddress;
        this.deliveryDate = deliveryDate;
        this.deliveryTime = deliveryTime;
        this.deliveryStatus = deliveryStatus;
        this.description = description;
        this.deliveryMethod = deliveryMethod;
    }

    public Delivery() {
    }
}
