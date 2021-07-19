/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.sadhar.rpl.model;

/**
 *
 * @author asus
 */
public class Keranjang {
   protected int idProduk;
   protected int idCustomer;
   protected int jumlah;

    public Keranjang() {
    }

    public Keranjang(int idProduk, int idCustomer, int jumlah) {
        this.idProduk = idProduk;
        this.idCustomer = idCustomer;
        this.jumlah = jumlah;
    }

    public int getIdProduk() {
        return idProduk;
    }

    public void setIdProduk(int idProduk) {
        this.idProduk = idProduk;
    }

    public int getIdCustomer() {
        return idCustomer;
    }

    public void setIdCustomer(int idCustomer) {
        this.idCustomer = idCustomer;
    }

    public int getJumlah() {
        return jumlah;
    }

    public void setJumlah(int jumlah) {
        this.jumlah = jumlah;
    }
   
   
   
}
