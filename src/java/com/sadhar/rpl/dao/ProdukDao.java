/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sadhar.rpl.dao;

import com.sadhar.rpl.SQLConn.MySQL;
import com.sadhar.rpl.model.Produk;
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
public class ProdukDao {

    public Produk getProduct(String nama, Double harga, String deskripsi) throws SQLException {
        Connection conn = MySQL.makeConn();
        PreparedStatement st = conn.prepareStatement("SELECT * FROM produk WHERE nama = ? AND harga = ? AND deskripsi = ? LIMIT 1");
        st.setString(1, nama);
        st.setDouble(2, harga);
        st.setString(3, deskripsi);
        ResultSet rs = st.executeQuery();
        Produk produk = new Produk();
        while (rs.next()) {
            produk.setId(rs.getLong("id"));
            produk.setNama(rs.getString("nama"));
            produk.setHarga(rs.getDouble("harga"));
            produk.setDeksripsi(rs.getString("deskripsi"));
            produk.setKategori(rs.getString("kategori"));
            produk.setIdPenjual(rs.getLong("idPenjual"));
            produk.setOngkir(rs.getDouble("ongkir"));
            produk.setGambar(rs.getString("gambar"));
        }
        conn.close();
        return produk;
    }

    public static List<Produk> getAllProducts() throws SQLException {
        return getAllProducts(null);
    }

    public static List<Produk> getAllProducts(String idSeller) throws SQLException {
        Connection conn = MySQL.makeConn();
        Statement st = conn.createStatement();
        String query = "SELECT * FROM produk ORDER BY nama ASC";
        if (idSeller != null && !idSeller.isEmpty()) {
            query = "SELECT * FROM produk WHERE idPenjual=" + idSeller + " ORDER BY nama ASC";
        }
        System.out.println("Execute query: " + query);
        ResultSet rs = st.executeQuery(query);
        List<Produk> li = new ArrayList<>();
        while (rs.next()) {
            int id = rs.getInt("id");
            String nama = rs.getString("nama");
            double harga = rs.getDouble("harga");
            String deskripsi = rs.getString("deskripsi");
            String kategori = rs.getString("kategori");
            int idPenjual = rs.getInt("idPenjual");
            double ongkir = rs.getDouble("ongkir");
            String gambar = rs.getString("gambar");
            Produk data = new Produk(id, nama, harga, deskripsi, kategori, idPenjual, ongkir, gambar);
            li.add(data);
        }
        rs.close();
        return li;
    }

    public static List<Produk> getAllProductsByCategories(String kategori) throws SQLException {
        Connection conn = MySQL.makeConn();
        Statement st = conn.createStatement();
        String query = "SELECT * FROM produk WHERE kategori = '" + kategori+ "' ;";

        System.out.println("Execute query: " + query);
        ResultSet rs = st.executeQuery(query);
        List<Produk> li = new ArrayList<>();
        while (rs.next()) {
            int id = rs.getInt("id");
            String nama = rs.getString("nama");
            double harga = rs.getDouble("harga");
            String deskripsi = rs.getString("deskripsi");
            String kategorii = rs.getString("kategori");
            int idPenjual = rs.getInt("idPenjual");
            double ongkir = rs.getDouble("ongkir");
            String gambar = rs.getString("gambar");
            Produk data = new Produk(id, nama, harga, deskripsi, kategorii, idPenjual, ongkir, gambar);
            li.add(data);
        }
        rs.close();
        return li;
    }

    public static void createProduct(Produk data) throws SQLException {
        Connection conn = MySQL.makeConn();
        PreparedStatement st = conn.prepareStatement("INSERT INTO produk(nama, harga, deskripsi, kategori, idPenjual, ongkir, gambar) VALUES (?,?,?,?,?,?,?)");
        st.setString(1, data.getNama());
        st.setDouble(2, data.getHarga());
        st.setString(3, data.getDeksripsi());
        st.setString(4, data.getKategori());
        st.setLong(5, data.getIdPenjual());
        st.setDouble(6, data.getOngkir());
        st.setString(7, data.getGambar());
        st.execute();
    }
}
