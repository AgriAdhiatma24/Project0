<%-- 
    Document   : SignUpCustomer
    Created on : Dec 16, 2020, 5:51:26 PM
    Author     : antbagoes
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html style="width: 100%;height: 100%;">

    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
        <title>Daftar</title>
        <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css?h=a9eaeb81a30d7a3193ada8132288f8f6">
        <link rel="stylesheet" href="assets/fonts/font-awesome.min.css?h=2c0fc24b3d3038317dc51c05339856d0">
        <link rel="stylesheet" href="assets/css/Login-Form-Clean.css?h=39a0a7dd987577519d6b6efd86126b53">
        <link rel="stylesheet" href="assets/css/Navigation-with-Search.css?h=cc854edeeadd4c06dfda9f834e92e87a">
        <link rel="stylesheet" href="assets/css/styles.css?h=b1cd5335afca5efee5edbd596355182f">
    </head>

    <body style="width: 100%;height: 100%;">
        <div class="login-clean" style="width: 100%;height: 100%;">
            <form action='DaftarCustomer' method="post" style="height: 460px;margin: auto;">
                <h3 class="text-center" style="margin-top: -28px;margin-bottom: 18px;">Daftar</h3>
                <div class="form-group"><input class="form-control" type="email" name="email" placeholder="Email"></div>
                <div class="form-group"><input class="form-control" type="password" name="password" placeholder="Password"></div>
                <div class="form-group"><input class="form-control" type="text" placeholder="Nama" name="nama"></div><input class="form-control" type="tel" placeholder="No. Telepon" name="notelpon" style="margin-bottom: 15px;"><textarea class="form-control" placeholder="Alamat"
                                                                                                                                                                                                        name="alamat"></textarea>
                <div class="form-group"><button class="btn btn-primary btn-block d-block" type="submit" style="margin-bottom: -31px;">Daftar</button>
                </div><a class="d-block float-left" href="SignUpPenjual.jsp" style="padding: 0px;padding-top: 0px;margin-top: 30px;">Daftar Sebagai Penjual</a></form>
        </div>
        <script src="assets/js/jquery.min.js?h=89312d34339dcd686309fe284b3f226f"></script>
        <script src="assets/bootstrap/js/bootstrap.min.js?h=7c038681746a729e2fff9520a575e78c"></script>
    </body>

</html>
