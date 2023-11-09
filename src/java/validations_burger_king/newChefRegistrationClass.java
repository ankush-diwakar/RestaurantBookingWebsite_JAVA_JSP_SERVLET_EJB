/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package validations_burger_king;

import java.io.Serializable;

public class newChefRegistrationClass implements Serializable {

    private static final long serialVerseUID = 1L;
    private String Firstname = null;
    private String Lastname = null;
    private String Email = null;
    private String Phone = null;
    private String Address = null;
    private String Address2 = null;
    private String State = null;
    private String Country = null;
    private String Post = null;
    private String Area = null;

    public void setFirstname(String Firstname) {
        this.Firstname = Firstname;
    }

    public void setLastname(String Lastname) {
        this.Lastname = Lastname;
    }

    public void setEmail(String Email) {
        this.Email = Email;
    }

    public void setPhone(String Phone) {
        this.Phone = Phone;
    }

    public void setAddress(String Address) {
        this.Address = Address;
    }

    public void setAddress2(String Address2) {
        this.Address2 = Address2;
    }

    public void setState(String State) {
        this.State = State;
    }

    public void setCountry(String Country) {
        this.Country = Country;
    }

    public void setPost(String Post) {
        this.Post = Post;
    }

    public void setArea(String Area) {
        this.Area = Area;
    }

    public String getFirstname() {
        return Firstname;
    }

    public String getLastname() {
        return Lastname;
    }

    public String getEmail() {
        return Email;
    }

    public String getPhone() {
        return Phone;
    }

    public String getAddress() {
        return Address;
    }

    public String getAddress2() {
        return Address2;
    }

    public String getState() {
        return State;
    }

    public String getCountry() {
        return Country;
    }

    public String getPost() {
        return Post;
    }

    public String getArea() {
        return Area;
    }

}
