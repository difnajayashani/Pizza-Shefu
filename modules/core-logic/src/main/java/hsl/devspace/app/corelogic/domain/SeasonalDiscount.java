package hsl.devspace.app.corelogic.domain;

import java.sql.Date;

/**
 * Created by hsenid on 9/20/16.
 */
public class SeasonalDiscount {
    private  double rate;
    private Date startDate;
    private Date expireDate;
    private enum status{
        active,inactive
    }

    public double getRate() {
        return rate;
    }

    public void setRate(double rate) {
        this.rate = rate;
    }

    public Date getStartDate() {
        return startDate;
    }

    public void setStartDate(Date startDate) {
        this.startDate = startDate;
    }

    public Date getExpireDate() {
        return expireDate;
    }

    public void setExpireDate(Date expireDate) {
        this.expireDate = expireDate;
    }

    public SeasonalDiscount(double rate, Date startDate, Date expireDate) {
        this.rate = rate;
        this.startDate = startDate;
        this.expireDate = expireDate;
    }

    public SeasonalDiscount() {
    }
}
