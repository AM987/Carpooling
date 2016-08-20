/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.example.model;

import java.io.PrintWriter;
import java.sql.*;
import java.util.logging.Level;
import java.util.logging.Logger;
/**
 *
 * @author Άλκης
 */
public class Register {
    
        public void RegisterTrip(int id, String fullName, String email, String fromTown, String toTown, String tripDate){
            
            RideSharingdb reg = new RideSharingdb();
            Connection connection = reg.DbConnection();
            PreparedStatement stmt ;
            

            try {
                stmt = connection.prepareStatement("INSERT INTO registered_trips(id, fullName,email,fromTown,toTown,tripDate) VALUES(?,?,?,?,?,?)");
                stmt.setInt(1,id);
                stmt.setString(2,fullName);
                stmt.setString(3,email);
                stmt.setString(4,fromTown);
                stmt.setString(5,toTown);
                stmt.setString(6,tripDate);
                
                int j = stmt.executeUpdate();
                
                
                connection.close();
                
            } catch (SQLException ex) {
                Logger.getLogger(Register.class.getName()).log(Level.SEVERE, null, ex);
            }
        }

    
}
