<%-- 
    Document   : tambahBarang
    Created on : Dec 16, 2020, 9:50:07 PM
    Author     : asus
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html style="width: 100%;height: 100%;">

    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
        <title>Tambah Barang</title>
        <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css?h=a9eaeb81a30d7a3193ada8132288f8f6">
        <link rel="stylesheet" href="assets/fonts/font-awesome.min.css?h=2c0fc24b3d3038317dc51c05339856d0">
        <link rel="stylesheet" href="assets/css/Login-Form-Clean.css?h=39a0a7dd987577519d6b6efd86126b53">
        <link rel="stylesheet" href="assets/css/Navigation-with-Search.css?h=cc854edeeadd4c06dfda9f834e92e87a">
        <link rel="stylesheet" href="assets/css/styles.css?h=b1cd5335afca5efee5edbd596355182f">
    </head>

    <body style="width: 100%;height: 100%;">
        <div class="container" style="height: 10%;width: 100%;max-width: 100%;">
            <nav class="navbar navbar-light navbar-expand-lg navigation-clean-search" style="height: 100%;width: 100%;">
                <div class="container"><a class="navbar-brand" href="#"><img src="assets/img/UKM%20GWE2.png?h=bd322fd5758fd3eacf4ebe3863a8f937" width="100px"></a><button data-toggle="collapse" class="navbar-toggler" data-target="#navcol-1"><span class="sr-only">Toggle navigation</span><span class="navbar-toggler-icon"></span></button>
                    <div
                        class="collapse navbar-collapse float-right" id="navcol-1">
                        <ul class="nav navbar-nav ml-auto" style="margin: 0px;margin-left: 109px;">
                            <li class="nav-item" role="presentation"><a class="nav-link active" href="#">Keranjang</a></li>
                            <li class="nav-item" role="presentation"><a class="nav-link" href="#">Wishlist</a></li>
                            <li class="nav-item" role="presentation"><a class="nav-link float-right" href="#">My Account</a></li>
                            <li class="nav-item" role="presentation"><a class="nav-link" href="#">Help</a></li>
                        </ul>
                        <form class="form-inline ml-auto" target="_self">
                            <div class="form-group"><label for="search-field"><i class="fa fa-search"></i></label><input class="form-control search-field" type="search" id="search-field" name="search" style="padding: 10px;padding-top: 18px;width: 360px;" placeholder="Cari Kategori atau Barang"></div>
                            <a
                                class="btn btn-light float-right action-button" role="button" href="#">Cari</a>
                        </form>
                    </div>
                </div>
            </nav>
        </div>
        <div class="container" style="width: 100%;max-width: 100%;height: 90%;padding: 15px;">
            <form action="./AddProdukServlet" method="post" style="margin: auto;margin-top: auto;margin-right: auto;margin-bottom: auto;margin-left: auto;width: 80%;">
                <h1 class="text-center" style="margin-bottom: 20px;">Tambah Barang</h1>
                <div class="form-group"><input class="form-control" name="nama" placeholder="Nama Barang"></div>
                <div class="form-group"><textarea class="form-control" name="deskripsi" placeholder="Masukkan Deskripsi Barang"></textarea></div>
                <div class="form-group" style="height: 38px;">
                    <h4 class="d-inline" style="height: 10%;">Rp</h4><input class="form-control d-inline float-right" type="text" style="width: 95%;" inputmode="numeric" name="harga" placeholder="Masukkan harga barang tanpa 'Rp', tanda titik dan tanda koma"></div>
                <div class="form-group" style="height: 38px;">
                    <h4 class="d-inline" style="height: 10%;">Rp</h4><input class="form-control d-inline float-right" type="text" style="width: 95%;" inputmode="numeric" name="ongkir" placeholder="Masukkan ongkos kirim"></div>
                <div class="form-group"><select class="form-control" name="kategori"><option value="0" selected="">Pilih Kategori Barang</option><option value="11">Furnitur</option><option value="12">Hiasan</option><option value="13">Elektronik</option><option value="13">Kuliner</option></select></div>
                <div class="form-group"><input class="form-control" type="url" name="gambar" placeholder="Masukkan URL gambar produk"></div>
                <div class="form-group"><button class="btn btn-primary btn-block" type="submit" style="background-color: rgb(67,67,67);">Submit Barang</button></div>
            </form>
        </div>
        <script src="assets/js/jquery.min.js?h=89312d34339dcd686309fe284b3f226f"></script>
        <script src="assets/bootstrap/js/bootstrap.min.js?h=7c038681746a729e2fff9520a575e78c"></script>
    </body>

</html>