<%-- 
    Document   : DetailProduk
    Created on : Dec 17, 2020, 3:26:52 AM
    Author     : antbagoes
--%>

<%@page import="com.sadhar.rpl.dao.UserDAO"%>
<%@page import="com.sadhar.rpl.model.User"%>
<%@page import="com.sadhar.rpl.dao.ProdukDao"%>
<%@page import="com.sadhar.rpl.model.Produk"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html style="width: 100%;height: 100%;">

    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
        <title>wkwk</title>
        <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css?h=a9eaeb81a30d7a3193ada8132288f8f6">
        <link rel="stylesheet" href="assets/fonts/font-awesome.min.css?h=2c0fc24b3d3038317dc51c05339856d0">
        <link rel="stylesheet" href="assets/css/Login-Form-Clean.css?h=39a0a7dd987577519d6b6efd86126b53">
        <link rel="stylesheet" href="assets/css/Navigation-with-Search.css?h=cc854edeeadd4c06dfda9f834e92e87a">
        <link rel="stylesheet" href="assets/css/styles.css?h=b1cd5335afca5efee5edbd596355182f">

    </head>

    <body style="height: 100%;width: 100%;">
        <%
            String namaI = request.getParameter("nama");
            String hargaI = request.getParameter("harga");
            double hargaIJ = Double.parseDouble(hargaI);
            String descI = request.getParameter("deskripsi");
            ProdukDao produkDao = new ProdukDao();
            Produk produk = produkDao.getProduct(namaI, hargaIJ, descI);

            long id = produk.getId();
            String nama = produk.getNama();
            double harga = produk.getHarga();
            String deksripsi = produk.getDeksripsi();
            String kategori = produk.getKategori();
            long idPenjual = produk.getIdPenjual();
            double ongkir = produk.getOngkir();
            String gambar = produk.getGambar();

            UserDAO userDao = new UserDAO();
            User penjual = new User();
            penjual = userDao.getUser(idPenjual);
            String namaToko = penjual.getNamaToko();
            String alamatPenjual = penjual.getAlamat();


        %>
        <div class="container" style="height: 10%;width: 100%;max-width: 100%;">
            <nav class="navbar navbar-light navbar-expand-lg navigation-clean-search" style="height: 100%;width: 100%;">
                <div class="container"><a class="navbar-brand" href="#"><img src="assets/img/UKM%20GWE2.png?h=bd322fd5758fd3eacf4ebe3863a8f937" width="100px"></a><button data-toggle="collapse" class="navbar-toggler" data-target="#navcol-1"><span class="sr-only">Toggle navigation</span><span class="navbar-toggler-icon"></span></button>
                    <div
                        class="collapse navbar-collapse float-right" id="navcol-1">
                        <ul class="nav navbar-nav ml-auto" style="margin: 0px;margin-left: 109px;">
                            <li class="nav-item" role="presentation"><a class="nav-link active" href="#">Keranjang</a></li>
                            <li class="nav-item" role="presentation"><a class="nav-link" href="#">Wishlist</a></li>
                            <li class="nav-item" role="presentation"><a class="nav-link float-right" href="">My Account</a></li>
                            <li class="nav-item" role="presentation"><a class="nav-link" href="#">Help</a></li>
                        </ul>
                        <form class="form-inline ml-auto" target="_self">
                            <div class="form-group"><label for="search-field"><i class="fa fa-search"></i></label><input class="form-control search-field" type="search" id="search-field" name="search" style="padding: 10px;padding-top: 18px;width: 360px;" placeholder="Cari Kategori atau Barang"></div>
                            <a
                                class="btn btn-light float-right action-button" role="button" href="#">Cari</a>
                        </form><button class="btn btn-primary" type="button" style="margin-left: 2%;">Logout</button></div>
                </div>
            </nav>
        </div>
        <div class="container" style="width: 100%;height: 90%;max-width: none;">
            <div class="d-inline-block" style="width: 30%;height: 100%;">
                <div role="tablist" id="accordion-1">
                    <div class="card">
                        <div class="card-header" role="tab">
                            <h5 class="mb-0"><a data-toggle="collapse" aria-expanded="false" aria-controls="accordion-1 .item-1" href="#accordion-1 .item-1">Kategori 1</a></h5>
                        </div>
                        <div class="collapse item-1" role="tabpanel" data-parent="#accordion-1">
                            <div class="card-body">
                                <ul class="list-group">
                                    <li class="list-group-item"><a href="#">Sub-Kategori 1</a></li>
                                    <li class="list-group-item"><a href="#">Sub-Kategori 2</a></li>
                                    <li class="list-group-item"><a href="#">Sub-Kategori 3</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="card">
                        <div class="card-header" role="tab">
                            <h5 class="mb-0"><a data-toggle="collapse" aria-expanded="true" aria-controls="accordion-1 .item-2" href="#accordion-1 .item-2">Kategori 2</a></h5>
                        </div>
                        <div class="collapse show item-2" role="tabpanel" data-parent="#accordion-1">
                            <div class="card-body">
                                <ul class="list-group">
                                    <li class="list-group-item"><a href="#">Sub-Kategori 1</a></li>
                                    <li class="list-group-item"><a href="#">Sub-Kategori 2</a></li>
                                    <li class="list-group-item"><a href="#">Sub-Kategori 3</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="d-block float-right" style="width: 70%;height: 100%;">
                <div class="col d-inline float-left" style="width: 60%;height: 100%;"><img src="
                                                                                           <% out.print(gambar); %>
                                                                                           " style="max-width: 50%;">
                    <p style="height: 50%;margin-top: 50px;"><% out.print(deksripsi); %></p>
                </div>
                <div class="col d-inline float-right" style="width: 40%;height: 100%;">
                    <h1> <% out.print(nama);%> </h1>
                    <h3><% out.print(harga);%></h3>
                    <h4><% out.print(namaToko);%></h4>
                    <h4><% out.print(alamatPenjual);%></h4>
                    <div class="btn-group-vertical float-right" role="group" style="margin-top: 100px;"><button class="btn btn-primary" type="button">Tambah ke Keranjang</button><button class="btn btn-primary" type="button" style="margin-top: 10px;">Tambah ke Wishlist</button></div>
                </div>
            </div>
        </div>
        <script src="/assets/js/jquery.min.js?h=89312d34339dcd686309fe284b3f226f"></script>
        <script src="/assets/bootstrap/js/bootstrap.min.js?h=7c038681746a729e2fff9520a575e78c"></script>
    </body>

</html>
