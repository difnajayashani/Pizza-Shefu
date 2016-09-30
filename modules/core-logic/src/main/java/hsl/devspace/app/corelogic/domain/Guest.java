package hsl.devspace.app.corelogic.domain;

/**
 * Created by hsenid on 9/19/16.
 */
public class Guest {
    private  String name;
    private String city;

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Guest(String name, String city) {
        this.name = name;
        this.city = city;
    }

    public Guest() {
    }
}
