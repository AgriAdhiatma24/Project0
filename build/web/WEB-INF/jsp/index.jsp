<%-- 
    Document   : LoginPage
    Created on : Dec 14, 2020, 10:38:11 PM
    Author     : asus
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
        <title>Masuk</title>
        <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
        <link rel="stylesheet" href="assets/css/Login-Form-Clean.css">
        <link rel="stylesheet" href="assets/css/styles.css">
    </head>

    <body>

        <div class="login-clean">
            <form action='loginServlet' method="post" >
                <h2 class="sr-only">Login Form</h2>
                <div class="illustration">
                    <img src="assets/img/UKM%20GWE2.png" style="width: 100px;">
                </div>
                <div class="form-group">
                    <input class="form-control" type="email" name="email" placeholder="Email">
                </div>
                <div class="form-group">
                    <input class="form-control" type="password" name="password" placeholder="Password">
                </div>
                <div class="form-group">
                    <button class="btn btn-primary btn-block" type="submit" style="background-color: rgb(67,67,67);">Log In
                    </button>
                </div>

                <a class="forgot" href="#">Lupa Password?
                </a>
                <a class="forgot" href="#">Daftar Sebagai:  
                </a>
                <div class="row justify-content-center">  
                    <div class ="row">
                        <a class="forgot" href="SignUpCustomer.jsp">Customer &nbsp; &nbsp; || 
                        </a>
                        <a class="forgot" href="SignUpPenjual.jsp">&nbsp; &nbsp; Penjual
                        </a>
                    </div>    
                </div>
            </form>
        </div>
        <script src="assets/js/jquery.min.js"></script>
        <script src="assets/bootstrap/js/bootstrap.min.js"></script>
    </body>

</html>

