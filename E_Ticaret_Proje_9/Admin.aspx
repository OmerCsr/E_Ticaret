<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Admin.aspx.cs" Inherits="Admin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="shortcut icon" href="img/favicon.ico">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>E-Nakliyat</title>
    <!-- BOOTSTRAP STYLES-->
    <link href="assets/css/bootstrap.css" rel="stylesheet" />
    <!-- FONTAWESOME STYLES-->
    <link href="assets/css/font-awesome.css" rel="stylesheet" />
    <!-- CUSTOM STYLES-->
    <link href="assets/css/custom.css" rel="stylesheet" />
    <!-- GOOGLE FONTS-->
    <link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css' />
</head>
<body>
    <div id="wrapper">
        <nav class="navbar navbar-default navbar-cls-top " role="navigation" style="margin-bottom: 0">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".sidebar-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="Firma_Profil.aspx">E-NAKLİYAT</a>
            </div>
            <div style="color: white; padding: 15px 50px 5px 50px; float: right; font-size: 16px;">
                Admin,<asp:Label ID="lblKullaniciAdi" runat="server" Text=""></asp:Label>
                &nbsp; <a href="index.aspx" class="btn btn-danger square-btn-adjust">Çıkış Yap</a>
            </div>


        </nav>
        <form runat="server">
            <!-- /. NAV TOP  -->
            <nav class="navbar-default navbar-side" role="navigation">
                <div class="sidebar-collapse">
                    <ul class="nav" id="main-menu">
                        <li>
                            <a href="#"><i class="fa fa-dashboard fa-3x"></i>
                                <asp:Button ID="Kullanıcılar" runat="server" Text="Kullanıcılar" Style="background-color: transparent" BorderColor="Transparent" OnClick="Kullanıcılar_Click" />
                            </a>
                        </li>
                        <li>
                            <a href="#"><i class="fa fa-desktop fa-3x"></i>Araç Kayıt</a>
                        </li>
                        <li>
                            <a href="#"><i class="fa fa-qrcode fa-3x"></i>Araçlarım</a>
                        </li>
                        <li>
                            <a href="#"><i class="fa fa-bar-chart-o fa-3x"></i>Firma Bilgileri</a>
                        </li>
                        <li>
                            <a href="#"><i class="fa fa-edit fa-3x"></i>Müşteri Görüntüle</a>
                        </li>
                        <li>
                            <a href="#"><i class="fa fa-edit fa-3x"></i>Mesajlaşma</a>
                        </li>
                        <li>
                            <a href="#"><i class="fa fa-table fa-3x"></i>Destek</a>
                        </li>

                        <li>
                            <a href="#"><i class="fa fa-bolt fa-3x"></i>Sözleşme</a>
                        </li>
                    </ul>

                </div>

            </nav>
        </form>
        <asp:Panel ID="Panel1" runat="server">
            <div id="page-wrapper" style="background-color: white">
                <div id="page-inner">
                    <div class="row">
                        <div class="col-md-12">
                    
                        </div>
                    </div>
                    <hr />
                </div>
            </div>
        </asp:Panel>

        <!-- JQUERY SCRIPTS -->
        <script src="assets/js/jquery-1.10.2.js"></script>
        <!-- BOOTSTRAP SCRIPTS -->
        <script src="assets/js/bootstrap.min.js"></script>
        <!-- METISMENU SCRIPTS -->
        <script src="assets/js/jquery.metisMenu.js"></script>
        <!-- CUSTOM SCRIPTS -->
        <script src="assets/js/custom.js"></script>

    </div>
</body>
</html>
