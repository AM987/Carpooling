/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.example.model;


import java.sql.*;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Toutountzoglou & Kyrtsoglou
 */
public class RideSharingdb {
    
    public Connection DbConnection() {
        
        try{
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/newdb", "root", "tool13");
            return conn;
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(RideSharingdb.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(RideSharingdb.class.getName()).log(Level.SEVERE, null, ex);
        
        }
        return null;
    }
    
    
}
