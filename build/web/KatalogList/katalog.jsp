<%-- 
    Document   : katalog
    Created on : Dec 13, 2020, 7:11:40 PM
    Author     : antbagoes
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <title>E-Commerce</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!--<link href="http://netdna.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet">-->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">
        <style type="text/css">
            body{margin-top:20px;
                 background:#eee;
            }
            /* E-commerce */
            .product-box {
                padding: 0;
                border: 1px solid #e7eaec;
            }
            .product-box:hover,
            .product-box.active {
                border: 1px solid transparent;
                -webkit-box-shadow: 0 3px 7px 0 #a8a8a8;
                -moz-box-shadow: 0 3px 7px 0 #a8a8a8;
                box-shadow: 0 3px 7px 0 #a8a8a8;
            }
            .product-imitation {
                text-align: center;
                padding: 90px 0;
                background-color: #f8f8f9;
                color: #bebec3;
                font-weight: 600;
            }
            .cart-product-imitation {
                text-align: center;
                padding-top: 30px;
                height: 80px;
                width: 80px;
                background-color: #f8f8f9;
            }
            .product-imitation.xl {
                padding: 120px 0;
            }
            .product-desc {
                padding: 20px;
                position: relative;
            }
            .ecommerce .tag-list {
                padding: 0;
            }
            .ecommerce .fa-star {
                color: #d1dade;
            }
            .ecommerce .fa-star.active {
                color: #f8ac59;
            }
            .ecommerce .note-editor {
                border: 1px solid #e7eaec;
            }
            table.shoping-cart-table {
                margin-bottom: 0;
            }
            table.shoping-cart-table tr td {
                border: none;
                text-align: right;
            }
            table.shoping-cart-table tr td.desc,
            table.shoping-cart-table tr td:first-child {
                text-align: left;
            }
            table.shoping-cart-table tr td:last-child {
                width: 80px;
            }
            .product-name {
                font-size: 16px;
                font-weight: 600;
                color: #676a6c;
                display: block;
                margin: 2px 0 5px 0;
            }
            .product-name:hover,
            .product-name:focus {
                color: #1ab394;
            }
            .product-price {
                font-size: 14px;
                font-weight: 600;
                color: #ffffff;
                background-color: #1ab394;
                padding: 6px 12px;
                position: absolute;
                top: -32px;
                right: 0;
            }
            .product-detail .ibox-content {
                padding: 30px 30px 50px 30px;
            }
            .image-imitation {
                background-color: #f8f8f9;
                text-align: center;
                padding: 200px 0;
            }
            .product-main-price small {
                font-size: 10px;
            }
            .product-images {
                margin: 0 20px;
            }

            .ibox {
                clear: both;
                margin-bottom: 25px;
                margin-top: 0;
                padding: 0;
            }
            .ibox.collapsed .ibox-content {
                display: none;
            }
            .ibox.collapsed .fa.fa-chevron-up:before {
                content: "\f078";
            }
            .ibox.collapsed .fa.fa-chevron-down:before {
                content: "\f077";
            }
            .ibox:after,
            .ibox:before {
                display: table;
            }
            .ibox-title {
                -moz-border-bottom-colors: none;
                -moz-border-left-colors: none;
                -moz-border-right-colors: none;
                -moz-border-top-colors: none;
                background-color: #ffffff;
                border-color: #e7eaec;
                border-image: none;
                border-style: solid solid none;
                border-width: 3px 0 0;
                color: inherit;
                margin-bottom: 0;
                padding: 14px 15px 7px;
                min-height: 48px;
            }
            .ibox-content {
                background-color: #ffffff;
                color: inherit;
                padding: 15px 20px 20px 20px;
                border-color: #e7eaec;
                border-image: none;
                border-style: solid solid none;
                border-width: 1px 0;
            }
            .ibox-footer {
                color: inherit;
                border-top: 1px solid #e7eaec;
                font-size: 90%;
                background: #ffffff;
                padding: 10px 15px;
            }
        </style>
    </head>
    <body>
        <!--<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet">-->
        <div class="container">
            <div class="NavBar">
                <nav class="navbar navbar-expand-lg navbar-light bg-light">
                    <div class="container-fluid">
                        <a class="navbar-brand" href="#">ECOMMERCEKU</a>
                        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                            <span class="navbar-toggler-icon"></span>
                        </button>
                        <div class="collapse navbar-collapse" id="navbarSupportedContent">
                            <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                                <li class="nav-item">
                                    <a class="nav-link active" aria-current="page" href="#">Keranjang</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="#">Wishlist</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="#">Akun Saya</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="#">Help</a>
                                </li>
                                <li class="nav-item dropdown">
                                    <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                                        Kategori
                                    </a>
                                    <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                                        <li><a class="dropdown-item" href="#">Furnitur</a></li>
                                        <li><a class="dropdown-item" href="#">Hiasan</a></li>
                                        <li><hr class="dropdown-divider"></li>
                                        <li><a class="dropdown-item" href="#">Anu</a></li>
                                    </ul>
                                </li>
                                <!--<li class="nav-item">
                                    <a class="nav-link disabled" href="#" tabindex="-1" aria-disabled="true">Disabled</a>
                                </li>-->
                            </ul>
                            <form class="d-flex">
                                <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
                                <button class="btn btn-outline-success" type="submit">Search</button>
                            </form>
                        </div>
                    </div>
                </nav>
            </div>
            <div class="row">
                <div class="col-md-3">
                    <div class="ibox">
                        <div class="ibox-content product-box">
                            <div class="product-imitation">
                                [ Ini Gambar ]
                            </div>
                            <div class="product-desc">
                                <span class="product-price">
                                    1.000.000
                                </span>
                                <small class="text-muted">Kategori</small>
                                <a href="#" class="product-name"> Produk</a>

                                <div class="small m-t-xs">
                                    Beli barang ini karena barang ini sejatinya bagus
                                </div>
                                <div class="m-t text-righ">

                                    <a href="#" class="btn btn-xs btn-outline btn-primary">Beli <i class="fa fa-long-arrow-right"></i> </a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="ibox">
                        <div class="ibox-content product-box">
                            <div class="product-imitation">
                                [ Ini Gambar ]
                            </div>
                            <div class="product-desc">
                                <span class="product-price">
                                    1.000.000
                                </span>
                                <small class="text-muted">Kategori</small>
                                <a href="#" class="product-name"> Produk</a>

                                <div class="small m-t-xs">
                                    Beli barang ini karena barang ini sejatinya bagus
                                </div>
                                <div class="m-t text-righ">

                                    <a href="#" class="btn btn-xs btn-outline btn-primary">Beli <i class="fa fa-long-arrow-right"></i> </a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                
            </div>
        </div>
        <script src="http://code.jquery.com/jquery-1.10.2.min.js"></script>
        <script src="http://netdna.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
        <script type="text/javascript">

        </script>
    </body>
</html>
    
