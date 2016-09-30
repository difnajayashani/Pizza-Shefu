package hsl.devspace.app.corelogic.domain;

import java.sql.Date;

/**
 * Created by hsenid on 7/4/16.
 */
public class User {

    private boolean isConfirmed;
    private String dob;

    private String title;
    private String firstName;
    private String lastName;
    private String username;
    private String password;
    private String email;
    private String addressL1;
    private String addressL2;
    private String addressL3;
    private String mobile;
    private String designation;
    private String department;
    private String  branch;
    private Date regDate;

    private enum status{
        active,inactive
    }

    public Date getRegDate() {
        return regDate;
    }

    public void setRegDate(Date regDate) {
        this.regDate = regDate;
    }
    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getAddressL3() {
        return addressL3;
    }

    public void setAddressL3(String addressL3) {
        this.addressL3 = addressL3;
    }



    public String getBranch() {
        return branch;
    }

    public void setBranch(String branch) {
        this.branch = branch;
    }

    public String getMobile() {
        return mobile;
    }

    public void setMobile(String mobile) {
        this.mobile = mobile;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getDesignation() {
        return designation;
    }

    public void setDesignation(String designation) {
        this.designation = designation;
    }

    public String getDepartment() {
        return department;
    }

    public void setDepartment(String department) {
        this.department = department;
    }



    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }


    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public boolean isConfirmed() {
        return isConfirmed;
    }

    public void setConfirmed(boolean isConfirmed) {
        this.isConfirmed = isConfirmed;
    }

    public String getDob() {
        return dob;
    }

    public void setDob(String dob) {
        this.dob = dob;
    }

    public String getAddressL1() {
        return addressL1;
    }

    public void setAddressL1(String addressL1) {
        this.addressL1 = addressL1;
    }

    public String getAddressL2() {
        return addressL2;
    }

    public void setAddressL2(String addressL2) {
        this.addressL2 = addressL2;
    }

    public User( String username, String password) {

        this.username = username;
        this.password = password;
    }

    public User() {
      /* User user=new User();
        user.getUsername();*/
    }

    public User(String title, String username,String password,String firstName, String lastName,String email,
                String mobile,String addressL1, String addressL2,String addressL3,String designation, String department,
                String branch) {
        this.title=title;
        this.username = username;
        this.password = password;
        this.firstName = firstName;
        this.lastName = lastName;
        this.email=email;
        this.mobile=mobile;
        this.addressL1 = addressL1;
        this.addressL2 = addressL2;
        this.addressL3 = addressL3;
        this.designation=designation;
        this.department=department;
        this.branch=branch;
    }
    //customer
    public User(String title,String firstName,String lastName,String username,String password,String email,String addressL1,
                String addressL2,String addressL3,String mobile){
        this.title=title;
        this.firstName=firstName;
        this.lastName=lastName;
        this.username=username;
        this.password=password;
        this.email=email;
        this.addressL1=addressL1;
        this.addressL2=addressL2;
        this.addressL3 = addressL3;
        this.mobile=mobile;
    }
    public User(String mobile){
        this.mobile=mobile;
    }
}
