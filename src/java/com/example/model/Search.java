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
 * @author Άλκης
 */
public class Search {
    
    public ResultSet SearchTrip(String fromTown, String toTown, String tripDate){
        
        RideSharingdb srch = new RideSharingdb();
        Connection connection = srch.DbConnection();
        PreparedStatement stmt;
        ResultSet rs = null;
        
        try {  
                
                
                
                if (fromTown.equals("Anywhere") && !toTown.equals("Anywhere")) {
                    stmt = connection.prepareStatement("SELECT tripDate,usrName,email FROM trips WHERE trips.`toTown` = ?");
                    stmt.setString(1,toTown);
                    rs = stmt.executeQuery();
                    
                }
                else if (toTown.equals("Anywhere") && !fromTown.equals("Anywhere")) {
                    stmt = connection.prepareStatement("SELECT tripDate,usrName,email FROM trips WHERE trips.`fromTown` = ?");
                    stmt.setString(1,fromTown);
                    rs = stmt.executeQuery();
                }
                else if (toTown.equals("Anywhere") && fromTown.equals("Anywhere") ) {
                    stmt = connection.prepareStatement("SELECT tripDate,usrName,email FROM trips ");
                    rs = stmt.executeQuery();
                }else {
                    stmt = connection.prepareStatement("SELECT tripDate,usrName,email FROM trips WHERE trips.`fromTown` = ? && trips.`toTown` = ?");
                    stmt.setString(1,fromTown);
                    stmt.setString(2,toTown);
                    rs = stmt.executeQuery();
                }
                
                    
               
        }catch (SQLException ex) {
            Logger.getLogger(Search.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        return rs;

    }
    
}
