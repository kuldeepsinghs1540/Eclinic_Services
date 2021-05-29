package Mycon;

import java.sql.Connection;
import java.sql.Driver;
import java.sql.DriverManager;

public class MyConnection {
    static Connection con;
    public static Connection getcon() {
        try{
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/eClinic","root","");
        }catch (Exception ex){
            System.out.println("ex is "+ex);
        }
        return con;
    }
    }