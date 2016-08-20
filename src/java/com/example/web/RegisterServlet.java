/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.example.web;

import com.example.model.Register;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Toutountzoglou & Kyrtsoglou
 */
public class RegisterServlet extends HttpServlet {
    
    String reg_name;
    String reg_mail;
    String reg_fromTown;
    String reg_toTown;
    String reg_Date;
    int reg_id=0;
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        
        PrintWriter out = response.getWriter();
        
        HttpSession session = request.getSession(false);
        reg_name = (String)session.getAttribute("ldapName");
        reg_mail = (String)session.getAttribute("ldapEmail");
        reg_fromTown = request.getParameter("fromTown");
        reg_toTown = request.getParameter("toTown");
        reg_Date = request.getParameter("when");
        reg_id++;
        
        Register reg = new Register(); 
        reg.RegisterTrip(reg_id,reg_name, reg_mail, reg_fromTown,reg_toTown, reg_Date);
        
        
        
        
    }

    
    

}
