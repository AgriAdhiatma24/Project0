/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sadhar.rpl.dao;

import com.sadhar.rpl.SQLConn.MySQL;
import java.sql.*;
import com.sadhar.rpl.model.User;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author antbagoes
 */
public class UserDAO {

    static final String JDBC_DRIVER = "com.mysql.jdbc.Driver";
    static final String DB_URL = "jdbc:mysql://192.168.2.2:3306/ecommercedb2";
    static final String USER = "user";
    static final String PASS = "oracle";
    static MySQL db;

    public UserDAO() {
        db = new MySQL();
    }

    public static void closeConn() throws SQLException {
        db.closeConn();
    }

    public static User checkValid(String email, String password) throws SQLException {
        Connection conn = MySQL.makeConn();
        PreparedStatement st = conn.prepareStatement("SELECT * FROM user WHERE email=? AND password=? LIMIT 1");
        st.setString(1, email);
        st.setString(2, password);
        ResultSet rs = st.executeQuery();
        User user = new User();
        while (rs.next()) {
            int id = rs.getInt("id");
            String mail = rs.getString("email");
            String pass = rs.getString("password");
            String nama = rs.getString("nama");
            String alamat = rs.getString("alamat");
            String telepon = rs.getString("telepon");
            String userType = rs.getString("userType");
            user = new User(id, mail, pass, nama, alamat, telepon, userType);
//          long id, String email, String password, String nama, String alamat, String telepon, String userType
        }
        conn.close();
        return user;
    }

    public static User getUser(long idPenjual) throws SQLException {
        Connection conn = MySQL.makeConn();
        PreparedStatement st = conn.prepareStatement("SELECT * FROM user WHERE id = ?");
        st.setString(1, String.valueOf(idPenjual));
        ResultSet rs = st.executeQuery();
        User userr = new User();
        while (rs.next()) {
            long id = rs.getLong("id");
            String email = rs.getString("email");
            String pass = rs.getString("password");
            String nama = rs.getString("nama");
            String alamatToko = rs.getString("alamatToko");
            String namaToko = rs.getString("namaToko");
            String telepon = rs.getString("telepon");
            String userType = rs.getString("userType");

            userr = new User(id, email, pass, nama, telepon, userType, alamatToko, namaToko);
        }
        conn.close();
        return userr;
    }

    public static void updateCustomer(String nemail, String npass, String nnama, String nalamat, String nnotel, long id) throws SQLException {
        Connection conn = MySQL.makeConn();
        PreparedStatement st = conn.prepareStatement("UPDATE .`user` SET `email` = '?', `password` = '?', `nama` = '?', `alamat` = '?', `telepon` = '?' WHERE (`id` = '?'");
        st.setString(1, nemail);
        st.setString(2, npass);
        st.setString(3, nnama);
        st.setString(4, nalamat);
        st.setString(5, nnotel);
        st.setLong(6, id);
        st.execute();
        conn.close();
    }

    public static boolean addUser(User user) throws SQLException {
        Connection conn = MySQL.makeConn();
        PreparedStatement st = conn.prepareStatement("INSERT INTO user (email, password, nama, alamat, telepon, userType, alamatToko, namaToko) VALUES (?,?,?,?,?,?,?,?)");
        st.setString(1, user.getEmail());
        st.setString(2, user.getPassword());
        st.setString(3, user.getNama());
        st.setString(4, user.getAlamat());
        st.setString(5, user.getTelepon());
        st.setString(6, user.getUserType());
        st.setString(7, user.getAlamatToko());
        st.setString(8, user.getNamaToko());
        st.execute();
        conn.close();
        return true;
    }

    public static boolean checkavailability(String email) throws SQLException {
        Connection conn = MySQL.makeConn();
        PreparedStatement st = conn.prepareStatement("SELECT * FROM user WHERE email = '?';");
        st.setString(1, email);
        ResultSet rs = st.executeQuery();
        if (rs == null) {
            conn.close();
            return true;
        }
        conn.close();
        return false;
    }
}
