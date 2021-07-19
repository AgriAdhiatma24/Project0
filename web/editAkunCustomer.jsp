<%-- 
    Document   : editAkunCustomer
    Created on : Dec 17, 2020, 10:15:27 AM
    Author     : antbagoes
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html style="width: 100%;height: 100%;">

    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
        <title>Akun</title>
        <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css?h=e87ef69b765c73edb7c5c04531b3a4e7">
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
                        </form><button class="btn btn-primary" type="button" style="margin-left: 2%;">Logout</button></div>
                </div>
            </nav>
        </div>
        <div class="container" style="width: 100%;max-width: none;height: 88%;">
            <h1 style="width: 100%;height: 10%;margin-top: 1%;margin-bottom: 1%;">Profil</h1>
            <%
                String email = request.getParameter("email");
                String password = request.getParameter("password");
                String nama = request.getParameter("nama");
                String alamat = request.getParameter("alamat");
                String telepon = request.getParameter("notel");

            %>
            <form action = "EditAkunServlet" style="width: 100%;height: 80%;padding-top: 1%;padding-right: 1%;">
                <div class="form-group" style="width: 100%;height: 7%;margin: 0px;margin-right: 0px;margin-bottom: 1%;"><label class="text-right" style="width: 10%;height: 100%;padding-top: 0.4%;padding-right: 1%;">Nama&nbsp;</label><input class="form-control float-right" name="nama" type="text" value=" <% out.print(nama);%> "  style="width: 90%;height: 100%;" required=""></div>
                <div
                    class="form-group" style="width: 100%;height: 7%;margin: 0px;margin-right: 0px;margin-bottom: 1%;"><input class="form-control float-right" type="email" name="email" style="width: 90%;"  value="<% out.print(email);%>" required=""><label class="text-right" style="width: 10%;height: 100%;padding-top: 0.4%;padding-right: 1%;">Email</label></div>
                <div
                    class="form-group" style="width: 100%;height: 7%;margin: 0px;margin-right: 0px;margin-bottom: 1%;"><label class="text-right" style="width: 10%;height: 100%;padding-top: 0.4%;padding-right: 1%;">Password</label><input name="password" class="form-control float-right" type="password" style="width: 90%;height: 100%;" required=""  value="<% out.print(password);%>"></div>
                <div
                    class="form-group" style="width: 100%;height: 7%;margin: 0px;margin-right: 0px;margin-bottom: 1%;"><input class="form-control float-right" type="tel" name="telepon" style="width: 90%;height: 100%;" value="<% out.print(telepon);%>" required=""><label  class="text-right" style="width: 10%;height: 100%;padding-top: 0.4%;padding-right: 1%;">Nomor HP</label></div>
                <div
                    class="form-group" style="width: 100%;height: 10%;margin: 0px;margin-right: 0px;margin-bottom: 1%;"><label class="text-right" style="width: 10%;height: 100%;padding-top: 0.4%;padding-right: 1%;">Alamat</label>
                    <textarea  name="alamat" class="form-control float-right" style="width: 90%;height: 100%;"  required=""><% out.print(alamat);%></textarea>
                </div>
                <button
                    class="btn btn-primary float-right" type="submit">Edit</button>
            </form>
        </div>
        <script src="/assets/js/jquery.min.js?h=89312d34339dcd686309fe284b3f226f"></script>
        <script src="/assets/bootstrap/js/bootstrap.min.js?h=7c038681746a729e2fff9520a575e78c"></script>
    </body>

</html>
