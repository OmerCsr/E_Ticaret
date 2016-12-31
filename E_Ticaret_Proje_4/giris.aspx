<%@ Page Language="C#" AutoEventWireup="true" CodeFile="giris.aspx.cs" Inherits="giris" %>

<!DOCTYPE html>

<html lang="tr">
<head runat="server">
    <title>Giriş Formu</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="keywords" content="Innovative Login Form template Responsive, Login form web template,Flat Pricing tables,Flat Drop downs  Sign up Web Templates, Flat Web Templates, Login sign up Responsive web template, SmartPhone Compatible web template, free WebDesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
    <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
    <!-- Custom Theme files -->
    <link href="css/style2.css" rel="stylesheet" type="text/css" media="all" />
    <!-- //Custom Theme files -->
    <!-- web font -->
    <link href='//fonts.googleapis.com/css?family=Text+Me+One' rel='stylesheet' type='text/css'>
    <!-- //web font -->
    <!-- js -->
    <script src="js/jquery.min.js"></script>
    <script src="js/easyResponsiveTabs.js" type="text/javascript"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            $('#horizontalTab').easyResponsiveTabs({
                type: 'default', //Types: default, vertical, accordion           
                width: 'auto', //auto or any width like 600px
                fit: true   // 100% fit in a container
            });
        });



    </script>
    <!-- //js -->
</head>
<body>
    <!-- main -->
    <div class="main">
        <h1>Giriş Formu</h1>
        <div class="main-info">
            <div class="sap_tabs">
                <div id="horizontalTab" style="display: block; width: 100%; margin: 0px;">
                    <ul class="resp-tabs-list">
                        <li class="resp-tab-item" aria-controls="tab_item-0">
                            <h2><span>Nakliyat ve Taşımacılık İşlemleri</span></h2>
                        </li>
                        <%--     <li class="resp-tab-item" aria-controls="tab_item-1"><span> Kullanıcı Kayıt</span></li>
                         <li class="resp-tab-item" aria-controls="tab_item-1"><span> Firma Kayıt</span></li>--%>
                    </ul>
                    <div class="clear"></div>
                    <div class="resp-tabs-container">
                        <div class="tab-1 resp-tab-content" aria-labelledby="tab_item-0">
                            <div class="agileits-login">
                                <form action="#" runat="server" method="post">   
                                    <asp:TextBox ID="txtkadi" runat="server" type="text" class="email" name="Email" placeholder="Kullanıcı Adı" required="" ></asp:TextBox>
                                    <asp:TextBox ID="txtsifre" runat="server" type="password" class="password" name="Password" placeholder="Şifre" required="" ></asp:TextBox>
                                    <div class="wthree-text">
                                        <ul>
                                            <li>
                                                <label class="anim">
                                                    <asp:CheckBox ID="CheckBox1"  class="checkbox" runat="server" />
                                                    <span>Beni hatırla ?</span>
                                                </label>
                                            </li>
                                            <li><a href="#">Parolanızı mı unuttunuz ?</a> </li>
                                        </ul>
                                        <div class="clear"></div>
                                    </div>
                                    <div class="w3ls-submit">
                                        <div class="submit-text" runat="server">
                                            <asp:Button type="submit" Text="Giriş Yap" value="Giriş Yap" runat="server"   OnClick="btngrs" />
                                               
                                                <!-------------------------------------------------------->
                                 
                                            <!-------------------------------------------------------->
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="clear"></div>
            </div>
        </div>
        <!-- copyright -->
        <div class="copyright" >
            <p>© 2016 Nakliyat ve Taşımacılık İşlemleri | Tüm Hakları Saklıdır  <a href="#" target="_blank"></a></p>
        </div>
        <!-- //copyright -->
    </div>
    <!-- //main -->
</body>
</html>
