/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sadhar.rpl.model;

/**
 *
 * @author antbagoes
 */
public class Produk {

    private long id;
    private String nama;
    private double harga;
    private String deksripsi;
    private String kategori;
    private long idPenjual;
    private double ongkir;
    private String gambar;

    public Produk() {
        this.id = 0;
        this.nama = "";
        this.harga = 0;
        this.deksripsi = "";
        this.kategori = "";
        this.idPenjual = 0;
        this.ongkir = 0;
        this.gambar = "";
    }

    public Produk(long id, String nama, double harga, String deksripsi, String kategori, long idPenjual, double ongkir, String gambar) {
        this.id = id;
        this.nama = nama;
        this.harga = harga;
        this.deksripsi = deksripsi;
        this.kategori = kategori;
        this.idPenjual = idPenjual;
        this.ongkir = ongkir;
        this.gambar = gambar;
    }

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getNama() {
        return nama;
    }

    public void setNama(String nama) {
        this.nama = nama;
    }

    public double getHarga() {
        return harga;
    }

    public void setHarga(double harga) {
        this.harga = harga;
    }

    public String getDeksripsi() {
        return deksripsi;
    }

    public void setDeksripsi(String deksripsi) {
        this.deksripsi = deksripsi;
    }

    public String getKategori() {
        return kategori;
    }

    public void setKategori(String kategori) {
        this.kategori = kategori;
    }

    public long getIdPenjual() {
        return idPenjual;
    }

    public void setIdPenjual(long idPenjual) {
        this.idPenjual = idPenjual;
    }

    public double getOngkir() {
        return ongkir;
    }

    public void setOngkir(double ongkir) {
        this.ongkir = ongkir;
    }

    public String getGambar() {
        return gambar;
    }

    public void setGambar(String gambar) {
        this.gambar = gambar;
    }

}
