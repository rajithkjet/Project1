/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package mc.app;

import java.sql.Connection;
import java.sql.DriverManager;

/**
 *
 * @author Rajith
 */
public class DAC {
    private static Connection con;
    public static Connection connect() throws Exception{
    Class.forName("com.mysql.jdbc.Driver").newInstance();
    String url = "jdbc:mysql://localhost:3306/mc";
    con = DriverManager.getConnection(url, "root", "root");
    return con;
               
    }
    
}
