/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sadhar.rpl.dao;

import com.sadhar.rpl.SQLConn.MySQL;
import com.sadhar.rpl.model.Keranjang;
import com.sadhar.rpl.model.KeranjangProduk;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author antbagoes
 */
public class CartDAO {

    public static List<KeranjangProduk> getAllKeranjang(String idCust) throws SQLException {
        Connection conn = MySQL.makeConn();
        Statement st = conn.createStatement();
        ResultSet rs = st.executeQuery("SELECT * FROM keranjangbelanja k JOIN produk p WHERE k.idProduk = p.id AND k.idCustomer = " + idCust);
        List<KeranjangProduk> li = new ArrayList<>();
        while (rs.next()) {
            int idProduk = rs.getInt("idProduk");
            int idCustomer = rs.getInt("idCustomer");
            int jumlah = rs.getInt("jumlah");
            String nama = rs.getString("nama");
            Double harga = rs.getDouble("harga");
            String gambar = rs.getString("gambar");
            Double ongkir = rs.getDouble("ongkir");

            KeranjangProduk kj = new KeranjangProduk(nama, harga, gambar, ongkir, idProduk, idCustomer, jumlah);
            li.add(kj);
        }
        rs.close();
        conn.close();
        return li;
    }

    public static void updateCartJumlah(String idProduk, String idCust, int jumlah) throws SQLException {
        Connection conn = MySQL.makeConn();
        PreparedStatement st = conn.prepareStatement("UPDATE keranjangbelanja SET jumlah = ? WHERE idProduk = " + idProduk + " AND idCustomer = " + idCust);
        st.setInt(1, jumlah);
        st.executeUpdate();
    }

    public static void addToCart(Keranjang data) throws SQLException {
        Connection conn = MySQL.makeConn();
        PreparedStatement st = conn.prepareStatement("INSERT INTO keranjangbelanja(idProduk, idCustomer, jumlah) VALUES (?,?,?)");
        st.setLong(1, data.getIdProduk());
        st.setLong(2, data.getIdCustomer());
        st.setDouble(3, data.getJumlah());
        st.execute();
    }
}
