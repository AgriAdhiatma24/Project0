<%-- 
    Document   : KeranjangBelanja
    Created on : Dec 16, 2020, 11:49:42 PM
    Author     : asus
--%>

<%@page import="java.math.BigDecimal"%>
<%@page import="com.sadhar.rpl.dao.CartManagement"%>
<%@page import="com.sadhar.rpl.model.KeranjangProduk"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html style="width: 100%;height: 100%;">

    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
        <title>Keranjang Belanja</title>
        <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css?h=a9eaeb81a30d7a3193ada8132288f8f6">
        <link rel="stylesheet" href="assets/fonts/font-awesome.min.css?h=2c0fc24b3d3038317dc51c05339856d0">
        <link rel="stylesheet" href="assets/css/Login-Form-Clean.css?h=39a0a7dd987577519d6b6efd86126b53">
        <link rel="stylesheet" href="assets/css/Navigation-with-Search.css?h=cc854edeeadd4c06dfda9f834e92e87a">
        <link rel="stylesheet" href="assets/css/styles.css?h=b1cd5335afca5efee5edbd596355182f">
    </head>

    <body style="width: 100%;height: 100%;">
        <div class="container" style="height: 10%;width: 100%;max-width: 100%;">
            <nav class="navbar navbar-light navbar-expand-lg navigation-clean-search" style="height: 100%;width: 100%;padding: 16px;">
                <div class="container"><a class="navbar-brand" href="#"><img src="assets/img/UKM%20GWE2.png?h=bd322fd5758fd3eacf4ebe3863a8f937" width="100px"></a><button data-toggle="collapse" class="navbar-toggler" data-target="#navcol-1"><span class="sr-only">Toggle navigation</span><span class="navbar-toggler-icon"></span></button>
                    <div
                        class="collapse navbar-collapse float-right" id="navcol-1">
                        <ul class="nav navbar-nav ml-auto" style="margin: 0px;margin-left: 109px;">
                            <li class="nav-item" role="presentation"><a class="nav-link" href="KeranjangBelanja.jsp">Keranjang</a></li>
                            <li class="nav-item" role="presentation"><a class="nav-link" href="#">Wishlist</a></li>
                            <li class="nav-item" role="presentation"><a class="nav-link float-right" href="KatalogPenjual.jsp       ">Home</a></li>
                            <li class="nav-item" role="presentation"><a class="nav-link" href="HelpPage.jsp">Help</a></li>
                        </ul>
                        <form class="form-inline ml-auto" target="_self">
                            <div class="form-group"><label for="search-field"><i class="fa fa-search"></i></label><input class="form-control search-field" type="search" id="search-field" name="search" style="padding: 10px;padding-top: 18px;width: 360px;" placeholder="Cari Kategori atau Barang"></div>
                            <a
                                class="btn btn-light float-right action-button" role="button" href="#">Cari</a>
                        </form>
                        <a href="LogoutServlet" class="btn btn-primary" style="margin-left: 2%;">Logout</a>
                    </div>
                </div>
            </nav>
        </div>
        <div class="container" style="width: 100%;max-width: none;padding: 0px 15px;height: 90%;">
            <h1 class="text-center" style="width: 100%;height: 7%;margin-bottom: 2%;">Keranjang Belanja</h1>
            <div style="width: 100%;padding: 1%;height: 70%;margin: 0px;">
                <div class="table-responsive" style="height: 100%;width: 100%;">
                    <table class="table">
                        <tbody>
                            <%
                                double biaya = 0;
                                Object idCustObj = session.getAttribute("userId");
                                if(idCustObj != null) {
                                    String idCust = idCustObj.toString();
                                    List<KeranjangProduk> li = CartManagement.getAllKeranjang(idCust);
                                    for(KeranjangProduk k : li) {
                                        biaya += k.getHarga() * k.getJumlah();
                                        out.print("<tr>"
                                                + "<td style=\"width: 10%;height: 100%;\">"
                                                + "<img style=\"max-width: 100%;width: 100%;\" src=\""+k.getGambar()+"\">"
                                                + "</td>"
                                                + "<td style=\"width: 40%;\">"+k.getNama()+"</td>"
                                                + "<td style=\"width: 15%;\">Rp "+k.getHarga()+"</td>"
                                                + "<td style=\"width: 10%;\"><a class=\"btn btn-primary\" type=\"button\" href=\"EditCartServlet?idProduk="+k.getIdProduk()+"&nama="+k.getNama()+"\" style=\"margin-bottom: 5%;\">Edit Jumlah</a></td>"
                                                + "</tr>");
                                    }
                                }
                                
                            %>
                        </tbody>
                    </table>
                </div>
            </div>
            <h3 class="text-right" style="margin-right: 10%;margin-bottom: 1%;width: 100%;padding-right: 1%;">
                Total Belanja : Rp <% out.print(new BigDecimal(biaya).toPlainString()); %>
            </h3><button class="btn btn-primary float-right" type="button" style="width: 10%;height: 53px;margin-bottom: 0px;margin-right: 0px;padding-right: 1%;">Checkout</button></div>
        <script src="assets/js/jquery.min.js?h=89312d34339dcd686309fe284b3f226f"></script>
        <script src="assets/bootstrap/js/bootstrap.min.js?h=7c038681746a729e2fff9520a575e78c"></script>
    </body>

</html>
