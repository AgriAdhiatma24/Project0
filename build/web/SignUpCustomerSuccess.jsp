<%-- 
    Document   : SignUpCustomerSuccess
    Created on : Dec 16, 2020, 12:20:47 AM
    Author     : asus
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
        <title>Daftar</title>
        <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
        <link rel="stylesheet" href="assets/css/Login-Form-Clean.css">
        <link rel="stylesheet" href="assets/css/styles.css">
    </head>

    <body>
        <div class="login-clean">
            <form action='DaftarCustomer' method="post">
                <h3 class="text-center" style="margin-top: -28px;margin-bottom: 18px;">Daftar Disini</h3>
                <h6 class="text-center" style="margin-top: -20px;margin-bottom: 18px;">Silahkan isi data di bawah untuk mulai berbelanja</h6>
                <div class="alert alert-success alert-dismissible fade show">
                    <strong>Sukses!</strong> Data Berhasil Ditambahkan!<a href="redirect.jsp" class="alert-link">Login</a>.
                    <button type="button" class="close" data-dismiss="alert">&times;</button>
                </div>
                <div class="form-group"><input class="form-control" type="email" name="email" placeholder="Email"></div>
                <div class="form-group"><input class="form-control" type="password" name="password" placeholder="Password"></div>
                <div class="form-group"><input class="form-control" type="text" placeholder="Nama" name="nama"></div><input class="form-control" type="tel" placeholder="No. Telepon" name="notelpon" style="margin-bottom: 15px;"><textarea class="form-control" placeholder="Alamat"
                                                                                                                                                                                                        name="alamat"></textarea>
                <div class="form-group"><button class="btn btn-primary btn-block" type="submit" style="margin-bottom: -31px;">Daftar</button></div>
            </form>
        </div>
        <script src="/assets/js/jquery.min.js?h=89312d34339dcd686309fe284b3f226f"></script>
        <script src="/assets/bootstrap/js/bootstrap.min.js?h=7c038681746a729e2fff9520a575e78c"></script>
    </body>

</html>
