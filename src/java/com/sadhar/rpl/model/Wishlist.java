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
public class Wishlist {
    private int idProduk;
    private int idUser;

    public Wishlist() {
    }

    public Wishlist(int idProduk, int idUser) {
        this.idProduk = idProduk;
        this.idUser = idUser;
    }

    public int getIdProduk() {
        return idProduk;
    }

    public void setIdProduk(int idProduk) {
        this.idProduk = idProduk;
    }

    public int getIdUser() {
        return idUser;
    }

    public void setIdUser(int idUser) {
        this.idUser = idUser;
    }
    
    
}
