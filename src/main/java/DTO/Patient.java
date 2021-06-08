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
public class Patient {
       private String name , email ,gender,psw,mobile,DOB,Desies;

    public Patient() {
    }

    public Patient(String name, String email, String gender, String psw, String mobile, String DOB, String Desies) {
        this.name = name;
        this.email = email;
        this.gender = gender;
        this.psw = psw;
        this.mobile = mobile;
        this.DOB = DOB;
        this.Desies = Desies;
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

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public String getPsw() {
        return psw;
    }

    public void setPsw(String psw) {
        this.psw = psw;
    }

    public String getMobile() {
        return mobile;
    }

    public void setMobile(String mobile) {
        this.mobile = mobile;
    }

    public String getDOB() {
        return DOB;
    }

    public void setDOB(String DOB) {
        this.DOB = DOB;
    }

    public String getDesies() {
        return Desies;
    }

    public void setDesies(String Desies) {
        this.Desies = Desies;
    }
       
}
