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
public class User {

    private long id;
    private String email;
    private String password;
    private String nama;
    private String alamat;
    private String alamatToko;
    private String namaToko;
    private String telepon;
    private String userType;

    public User() {
        id = 0;
        password = "";
        nama = "";
        alamat = "";
        telepon = "";
        userType = "";
        email = "";
        alamatToko = "";
        namaToko = "";
    }

    public User(long id, String email, String password, String nama, String alamat, String telepon, String userType) {
        this.id = id;
        this.email = email;
        this.password = password;
        this.nama = nama;
        this.alamat = alamat;
        this.telepon = telepon;
        this.userType = userType;
        this.alamatToko = "";
        this.namaToko = "";
    }

    public User(long id, String email, String password, String nama, String telepon, String userType, String alamatToko, String namaToko) {
        this.id = id;
        this.email = email;
        this.password = password;
        this.nama = nama;
        this.alamat = "";
        this.telepon = telepon;
        this.userType = userType;
        this.alamatToko = alamatToko;
        this.namaToko = namaToko;
    }

    public User(String email, String password, String nama, String alamat, String telepon, String userType) {
        this.id = 0;
        this.email = email;
        this.password = password;
        this.nama = nama;
        this.alamat = alamat;
        this.telepon = telepon;
        this.userType = userType;
        this.alamatToko = "";
        this.namaToko = "";
    }

    public User(String email, String password, String nama, String telepon, String userType, String alamatToko, String namaToko) {
        this.id = 0;
        this.email = email;
        this.password = password;
        this.nama = nama;
        this.alamat = "";
        this.telepon = telepon;
        this.userType = userType;
        this.alamatToko = alamatToko;
        this.namaToko = namaToko;
    }

    public String getAlamatToko() {
        return alamatToko;
    }

    public void setAlamatToko(String alamatToko) {
        this.alamatToko = alamatToko;
    }

    public String getNamaToko() {
        return namaToko;
    }

    public void setNamaToko(String namaToko) {
        this.namaToko = namaToko;
    }

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getNama() {
        return nama;
    }

    public void setNama(String nama) {
        this.nama = nama;
    }

    public String getAlamat() {
        return alamat;
    }

    public void setAlamat(String alamat) {
        this.alamat = alamat;
    }

    public String getTelepon() {
        return telepon;
    }

    public void setTelepon(String telepon) {
        this.telepon = telepon;
    }

    public String getUserType() {
        return userType;
    }

    public void setUserType(String userType) {
        this.userType = userType;
    }

}
