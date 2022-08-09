/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Amin;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import javax.swing.JOptionPane;

/**
 *
 * @author BERTIN FONGE
 */
public class Select {
      public static ResultSet getData(String query){
        Connection conn = null;
        Statement st = null;
        ResultSet rs = null;
        try
        {
            conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/njangi_ms", "root", "");
            st = conn.createStatement();
            rs = st.executeQuery(query);
            return rs;
        
        }catch(Exception e){
            JOptionPane.showMessageDialog(null, e);
            return null;
        }
        
    
    }
    
}
