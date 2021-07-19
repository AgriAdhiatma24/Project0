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
public class KeranjangProduk extends Keranjang {
    
    private String nama;
    private double harga;
    private String gambar;
    private double ongkir;

    public KeranjangProduk() {
    }

    public KeranjangProduk(String nama, double harga, String gambar, double ongkir, int idProduk, int idCustomer, int jumlah) {
        super(idProduk, idCustomer, jumlah);
        this.nama = nama;
        this.harga = harga;
        this.gambar = gambar;
        this.ongkir = ongkir;
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

    public String getGambar() {
        return gambar;
    }

    public void setGambar(String gambar) {
        this.gambar = gambar;
    }

    public double getOngkir() {
        return ongkir;
    }

    public void setOngkir(double ongkir) {
        this.ongkir = ongkir;
    }
    
    
    
}
