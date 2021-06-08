/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import DTO.Doctor;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

/**
 *
 * @author kulde
 */
public class DoctorManager {
    public int saveDoctor(Doctor u){
        int x = 0;
        try {
            Connection connection = Mycon.MyConnection.getcon();
            String s="insert into doctorinformation values(?,?,?,?,?,?,?,?)";
            PreparedStatement ps= connection.prepareStatement(s);
            ps.setString(1, u.getName());
            ps.setString(2, u.getEmail());
            ps.setString(4, u.getPassword());
            ps.setString(5, u.getSpec());
            ps.setString(3, u.getTxtPhone());
            ps.setString(6, u.getQualification());
            ps.setString(7, u.getGender());
            ps.setString(8, u.getAddress());
            x=ps.executeUpdate();
           
        } catch (Exception e) {
        }
        return x;
    }
    public ResultSet allDoctor(){
        ResultSet rs1 = null;
                    try
            {
                Connection con=Mycon.MyConnection.getcon();
                String s="select * from doctorinformation";
                 PreparedStatement ps= con.prepareStatement(s);
                                
                ResultSet rs = ps.executeQuery();
                 return rs;
            }
                    catch(Exception e)
                    {
                        
                    }
                    
            return rs1;
    }
    public int deletDoctor(String email){
        int x = 0;
        try{
            Connection con=Mycon.MyConnection.getcon();
            String delete = "delete from doctorinformation where email = ?";
            PreparedStatement preparedstatement = con.prepareStatement(delete);
            preparedstatement.setString(1,email);
            x = preparedstatement.executeUpdate();
            
        }catch(Exception ex){
          System.out.println("Ex is "+ex);
        }
        return x;
    }
    public ResultSet show(String email)
    {
        ResultSet rs=null;
        try {
            Connection con=Mycon.MyConnection.getcon();
            String s="select * from doctorinformation where email=?";
            PreparedStatement ps= con.prepareStatement(s);
            ps.setString(1, email);
            rs=ps.executeQuery();
        } catch (Exception e) {
        }
        return rs;
    }
    public int updateDoctor(Doctor u)
    {
        int x=0;
       //System.out.print("name is"+u.getName());
        try {
            Connection con=Mycon.MyConnection.getcon();
            String s="update doctorinformation set name= ?, password= ? , specialization= ? , qualification= ? , address= ? , Gender= ? , phone= ? where email=? " ;
            PreparedStatement ps= con.prepareStatement(s);
            ps.setString(1, u.getName());
            ps.setString(2, u.getPassword());
            ps.setString(3, u.getSpec());
            ps.setString(4, u.getQualification());
            ps.setString(5, u.getAddress());
            ps.setString(6, u.getGender());
            ps.setString(7, u.getTxtPhone());
            ps.setString(8, u.getEmail());
            x=ps.executeUpdate();
        } catch (Exception e) 
        {
            System.out.println("ex is"+e);
        }
        return x;
    }
}
