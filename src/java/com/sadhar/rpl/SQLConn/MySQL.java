/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sadhar.rpl.SQLConn;

import java.sql.*;
import java.util.logging.Level;
import java.util.logging.Logger;
import com.sadhar.rpl.model.User;

/**
 *
 * @author antbagoes
 */
public class MySQL {

    static final String JDBC_DRIVER = "com.mysql.jdbc.Driver";
    static final String DB_URL = "jdbc:mysql://192.168.2.2:3306/ecommercedb2";
    static final String USER = "user";
    static final String PASS = "user";
    public static Connection conn;

    public MySQL() {
        try {
            Class.forName(JDBC_DRIVER);
            conn = DriverManager.getConnection("jdbc:mysql://192.168.2.2:3306/ecommercedb2", "user", "user");
            System.out.println("Berhasil connect");
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(MySQL.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(MySQL.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public static Connection makeConn() {
        try {
            Class.forName(JDBC_DRIVER);
            conn = DriverManager.getConnection("jdbc:mysql://192.168.2.2:3306/ecommercedb2", "user", "user");
            System.out.println("Berhasil connect");
            return conn;
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(MySQL.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(MySQL.class.getName()).log(Level.SEVERE, null, ex);
        }
        return conn;
    }

    public static void closeConn() throws SQLException {
        conn.close();
    }

}
