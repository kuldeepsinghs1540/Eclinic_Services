/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import DTO.Doctor;
import DTO.Patient;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

/**
 *
 * @author kulde
 */
public class PatientManager {
   public int savePatient(Patient u){
        int x = 0;
        try {
            Connection connection = Mycon.MyConnection.getcon();
            String s="insert into patient values(?,?,?,?,?,?,?)";
            PreparedStatement ps= connection.prepareStatement(s);
            ps.setString(1, u.getName());
            ps.setString(2, u.getEmail());
            ps.setString(3, u.getGender());
            ps.setString(4, u.getPassword());
            ps.setString(5, u.getMobile());
            ps.setString(6, u.getDOB());
            ps.setString(7, u.getDesies());
            x=ps.executeUpdate();
           
        } catch (Exception e) {
        }
        return x;
    }
   public ResultSet allPatient(){
        ResultSet rs1 = null;
                    try
            {
                Connection con=Mycon.MyConnection.getcon();
                String s="select * from patient";
                 PreparedStatement ps= con.prepareStatement(s);
                                
                ResultSet rs = ps.executeQuery();
                 return rs;
            }
                    catch(Exception e)
                    {
                        
                    }
                    
            return rs1;
    }
   public int deletPatient(String email){
        int x = 0;
        try{
            Connection con=Mycon.MyConnection.getcon();
            String delete = "delete from patient where email = ?";
            PreparedStatement preparedstatement = con.prepareStatement(delete);
            preparedstatement.setString(1,email);
            x = preparedstatement.executeUpdate();
            
        }catch(Exception ex){
          System.out.println("Ex is "+ex);
        }
        return x;
    }
}
