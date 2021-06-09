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
           private String name,email,gender,password,mobile,DOB,desies;

    public Patient() {
    }

    public Patient(String name, String email, String gender, String password, String mobile, String DOB, String desies) {
        this.name = name;
        this.email = email;
        this.gender = gender;
        this.password = password;
        this.mobile = mobile;
        this.DOB = DOB;
        this.desies = desies;
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

    

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
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
        return desies;
    }

    public void setDesies(String desies) {
        this.desies = desies;
    }

}
