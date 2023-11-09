/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package validations_burger_king;

import java.io.Serializable;

public class BOOKING_CLASS implements Serializable {
    
      
    private String Name;
    private String Email;
    private String Mob;
    private String Date;
    private String Time;
    private String Guest;


    public String getName() {
        return Name;
    }

    public void setName(String Name) {
        this.Name = Name;
    }

    public String getEmail() {
        return Email;
    }

    public void setEmail(String Email) {
        this.Email = Email;
    }

    public String getMob() {
        return Mob;
    }

    public void setMob(String Mob) {
        this.Mob = Mob;
    }

    public String getDate() {
        return Date;
    }

    public void setDate(String Date) {
        this.Date = Date;
    }

    public String getTime() {
        return Time;
    }

    public void setTime(String Time) {
        this.Time = Time;
    }

    public String getGuest() {
        return Guest;
    }

    public void setGuest(String Guest) {
        this.Guest = Guest;
    }
  
    
    
}
