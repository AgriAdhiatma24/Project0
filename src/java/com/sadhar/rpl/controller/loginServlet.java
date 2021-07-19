/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sadhar.rpl.controller;

import com.sadhar.rpl.SQLConn.MySQL;
import com.sadhar.rpl.dao.UserDAO;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.*;
import javax.servlet.http.*;
import com.sadhar.rpl.model.User;

/**
 *
 * @author antbagoes
 */
public class loginServlet extends HttpServlet {

    public static UserDAO userDao;
    public static User user;

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, SQLException {
        response.setContentType("text/html;charset=UTF-8");
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        userDao = new UserDAO();
        user = userDao.checkValid(email, password);
        String emailTemp = userDao.checkValid(email, password).getEmail();
        String passTemp = userDao.checkValid(email, password).getPassword();

        if (emailTemp.equals(email) && passTemp.equals(password)) {
            if (user.getUserType().equals("admin")) {
                response.sendRedirect("AdminPage.jsp");
            } else if (user.getUserType().equals("penjual")) {
                response.sendRedirect("KatalogPenjual.jsp");
            } else if (user.getUserType().equals("customer")) {
                response.sendRedirect("KatalogCustomer.jsp");
            } else {
                response.sendRedirect("LoginPageFailed.jsp");
            }
        } else {
            response.sendRedirect("LoginPageFailed.jsp");
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        try {
            processRequest(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(loginServlet.class.getName()).log(Level.SEVERE, null, ex);
        }

    }

}
