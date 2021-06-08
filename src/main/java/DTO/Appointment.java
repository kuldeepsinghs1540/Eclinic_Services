/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DTO;

/**
 *
 * @author kulde
 */
public class Appointment {
    String name,email ,Adate ,appointment,drName ,message , gender ,mobile , status,mainemail;
    public Appointment() {
    }

    public Appointment(String name, String email, String Adate, String appointment, String drName, String message, String gender, String mobile, String status,String mainemail) {
        this.name = name;
        this.email = email;
        this.Adate = Adate;
        this.appointment = appointment;
        this.drName = drName;
        this.message = message;
        this.gender = gender;
        this.mobile = mobile;
        this.status = status;
        this.mainemail = mainemail;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getAdate() {
        return Adate;
    }

    public void setAdate(String Adate) {
        this.Adate = Adate;
    }

    public String getAppointment() {
        return appointment;
    }

    public void setAppointment(String appointment) {
        this.appointment = appointment;
    }

    public String getDrName() {
        return drName;
    }

    public void setDrName(String drName) {
        this.drName = drName;
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public String getMobile() {
        return mobile;
    }

    public void setMobile(String mobile) {
        this.mobile = mobile;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public String getMainemail() {
        return mainemail;
    }

    public void setMainemail(String mainemail) {
        this.mainemail = mainemail;
    }
    
}
