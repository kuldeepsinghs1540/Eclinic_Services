/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import DTO.Appointment;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

/**
 *
 * @author kulde
 */
public class AppoinmentManager {
    public int saveAppoinment(Appointment u){
        int x = 0;
        try{
            Connection connection = Mycon.MyConnection.getcon();
            String insert = "insert into appointment value(?,?,?,?,?,?,?,?,?,?)";
            PreparedStatement preparedStatement = connection.prepareStatement(insert);
            preparedStatement.setString(1, u.getName());
            preparedStatement.setString(2, u.getEmail());
            preparedStatement.setString(3, u.getDoctor());
            preparedStatement.setString(4, u.getGender());
            preparedStatement.setString(5, u.getMobile());
            preparedStatement.setString(6, u.getaDate());
            preparedStatement.setString(7, u.getAtime());
            preparedStatement.setString(8, u.getMessage());
            preparedStatement.setString(9, u.getMainEmail());
            preparedStatement.setString(10, "Pending");
            x = preparedStatement.executeUpdate();
            } catch (Exception e) {
        }
        return x;
    }
    public ResultSet allAppoinment(){
        ResultSet rs1 = null;
                    try
            {
                Connection con=Mycon.MyConnection.getcon();
                String s="select * from appointment";
                 PreparedStatement ps= con.prepareStatement(s);
                                
                ResultSet rs = ps.executeQuery();
                 return rs;
            }
                    catch(Exception e)
                    {
                        
                    }
                    
            return rs1;
    }
    public ResultSet ConfirmAppoinment(String email){
        ResultSet rs1 = null;
                    try
            {
                Connection connection = Mycon.MyConnection.getcon();
                String fetch = "select * from appointment where email=?";
                PreparedStatement pst=connection.prepareStatement(fetch);
                pst.setString(1, email);
            ResultSet rs=pst.executeQuery();
            return rs;
            }
            catch(Exception e){
                   }
          return rs1;
    }
    public int declineAppoinment(String email){
        int x = 0;
        try{
            Connection connection = Mycon.MyConnection.getcon();
            String update = "update appointment set Status=? where email=?";
            PreparedStatement preparedStatement = connection.prepareStatement(update);
            preparedStatement.setString(1,"Rejected");
            preparedStatement.setString(2,email);
            x = preparedStatement.executeUpdate();
            } catch (Exception e) {
        }
        return x;
    }
    public int confirmAppoinmentDB(Appointment a){
        int x = 0;
        try{
            Connection connection = Mycon.MyConnection.getcon();
            String update = "update appointment set Status=?, aDate=?, atime=? where email=?";
            PreparedStatement preparedStatement = connection.prepareStatement(update);
            preparedStatement.setString(1,"Accept");
            preparedStatement.setString(2,a.getaDate());
            preparedStatement.setString(3,a.getAtime());
            preparedStatement.setString(4,a.getEmail());
            x = preparedStatement.executeUpdate();
            } catch (Exception e) {
        }
        return x;
    }
    public ResultSet ConfirmAppoinmentlist(String name){
        ResultSet rs1 = null;
                    try
            {
                Connection connection1 = Mycon.MyConnection.getcon();
                    String fetch = "select * from appointment where doctor=? and Status=?";
                    PreparedStatement pst=connection1.prepareStatement(fetch);
                    pst.setString(1, name);
                    pst.setString(2, "Accept");
            ResultSet rs=pst.executeQuery();
            return rs;
            }
            catch(Exception e){
                   }
          return rs1;
    }
    public ResultSet pandingAppoinmentlist(String name){
        ResultSet rs1 = null;
                    try
            {
                Connection connection = Mycon.MyConnection.getcon();
                    String fetch = "select * from appointment where doctor=? and Status=?";
                    PreparedStatement pst=connection.prepareStatement(fetch);
                    pst.setString(1, name);
                    pst.setString(2, "Pending");
            ResultSet rs=pst.executeQuery();
            return rs;
            }
            catch(Exception e){
                   }
          return rs1;
    }
    public ResultSet checkDoctorValid(String email, String pass){
        ResultSet rs1 = null;
                    try
            {
               Connection connection = Mycon.MyConnection.getcon();
        String featch = "select * from doctorinformation where email=? and password=?";
        PreparedStatement preparedStatement = connection.prepareStatement(featch);
        preparedStatement.setString(1, email);
        preparedStatement.setString(2, pass);
        ResultSet rs = preparedStatement.executeQuery();
            return rs;
            }
            catch(Exception e){
                   }
          return rs1;
    }
    
    public ResultSet DeclineAppoinmentlist(String name){
        ResultSet rs1 = null;
                    try
            {
                    Connection connection1 = Mycon.MyConnection.getcon();
                    String fetch = "select * from appointment where doctor=? and Status=?";
                    PreparedStatement pst=connection1.prepareStatement(fetch);
                    pst.setString(1, name);
                    pst.setString(2, "Rejected");
            ResultSet rs=pst.executeQuery();
            return rs;
            }
            catch(Exception e){
                   }
          return rs1;
    }
}
