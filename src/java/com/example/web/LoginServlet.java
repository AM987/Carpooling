/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.example.web;


import com.uthldap.Uthldap;
import com.example.model.RideSharingdb;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.RequestDispatcher;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Toutountzoglou & Kyrtsoglou
 */
public class LoginServlet extends HttpServlet {
    
    
    /**
     * Handles the HTTP <code>POST</code> method.
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
       
       
       String user = request.getParameter("username");
       String pass = request.getParameter("password");
            
        
       Uthldap ldap = new Uthldap(user,pass);
       
       HttpSession session=request.getSession();
       
       
       if(ldap.auth()){
           
           
           session.setAttribute( "ldapName", ldap.getName());
           session.setAttribute( "ldapEmail", ldap.getMail());
           RequestDispatcher rd = request.getRequestDispatcher("main.jsp");
           rd.forward(request, response);
            
       }
       else {
           RequestDispatcher rd = request.getRequestDispatcher("login_error.jsp");
           rd.forward(request, response);
       }

    }
        
        
   
}

    


