<%@ Page Language="C#" AutoEventWireup="true" CodeFile="kayit.aspx.cs" Inherits="kayit" %>

<!DOCTYPE html>
<html>
<head>
        <link rel="shortcut icon" href="img/favicon.ico">
    <title>Kayıt Formu</title>
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
        <h1>Kayıt Formu</h1>
        <div class="main-info">
            <div class="sap_tabs">
                <div id="horizontalTab" style="display: block; width: 100%; margin: 0px;">
                    <ul class="resp-tabs-list">
                        <li class="resp-tab-item" aria-controls="tab_item-0">
                            <h2><span>Kullanıcı Kayıt</span></h2>
                        </li>
                        <%--<li class="resp-tab-item" aria-controls="tab_item-1"><span>Firma Kayıt</span></li>--%>
                    </ul>
                    <div class="clear"></div>
                    <div class="resp-tabs-container">
                        <div class="tab-1 resp-tab-content" aria-labelledby="tab_item-0">
                            <div class="agileits-login">
                                <form runat="server">
                                <asp:TextBox ID="TextBox1" class="email" placeholder="Kullanıcı Adı" runat="server" ></asp:TextBox>
                                     <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Kullanıcı Adı Boş Girilemez" ForeColor="#d24747"></asp:RequiredFieldValidator>
                                <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
                                <asp:TextBox ID="TextBox2"  class="email" placeholder="Şifre" runat="server" TextMode="Password"></asp:TextBox>
                                      <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Şifre Alanı Boş Girilemez" ForeColor="#d24747" Display="Dynamic"></asp:RequiredFieldValidator>
                                     <asp:TextBox ID="TextBox7"  class="email" placeholder="Şifre Tekrar" runat="server" TextMode="Password"></asp:TextBox>
                                    
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox7" ErrorMessage="Şifreyi tekrar girmelisiniz" ForeColor="#d24747" Display="Dynamic"></asp:RequiredFieldValidator>
                                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox2" ControlToValidate="TextBox7" ErrorMessage="Girilen şifre yanlış" ForeColor="#d24747"  Display="Dynamic"></asp:CompareValidator>
                                <asp:TextBox ID="TextBox3" class="email" placeholder="İsim" runat="server"></asp:TextBox>
                                       <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" ErrorMessage="İsim alanı boş girilemez" ForeColor="#d24747" Display="Dynamic"></asp:RequiredFieldValidator>
                                <asp:TextBox ID="TextBox4" class="email" placeholder="Soyisim" runat="server"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox4" ErrorMessage="Soyisim alanı boş girilemez" ForeColor="#d24747" Display="Dynamic"></asp:RequiredFieldValidator>
                                <asp:TextBox ID="TextBox5" class="email" placeholder="Email"  runat="server"></asp:TextBox>
                                       <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBox5" ErrorMessage="Bir mail giriniz" ForeColor="#d24747" Display="Dynamic"></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="E-mailGeçersiz" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ControlToValidate="TextBox5" ForeColor="#d24747" Display="Dynamic"></asp:RegularExpressionValidator>
                                <asp:TextBox ID="TextBox6" class="email" placeholder="Telefon" runat="server"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="TextBox6" ErrorMessage="Telefon alanı boş geçilemez" ForeColor="#d24747"></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox6" ErrorMessage="05005005050 şeklinde girin"
            ForeColor="#d24747" ValidationExpression="^\d{4}\d{3}\d{2}\d{2}$"></asp:RegularExpressionValidator>

                                    <div class="wthree-text"> 
                                    <label class="anim">
											<asp:CheckBox ID="CheckBox1"  class="checkbox" runat="server" /> 
											<span>Firma olarak kayıt olmak istiyorum</span> 
										</label> 
                                    </div>
                                    
                                    <div class="w3ls-submit">
										<div class="submit-text">
											<asp:Button OnClick="Button1_Click2" ID="Button1" runat="server" Text="Kayıt Ol" />
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
        <div class="copyright">
            <p>© 2016 Nakliyat ve Taşımacılık İşlemleri | Tüm Hakları Saklıdır  <a href="#" target="_blank"></a></p>
        </div>
    </div>
    <!-- //copyright -->
    </div>	
	<!-- //main -->

    <!-- Sayfa yenileme kodu-->
    <%--<script type="text/javascript">
        function waitfor() {
            window.location.reload();
        }
        setTimeout("waitfor()", 5000);
    </script>--%>
    <!-- Bitiş-->

</body>
</html>
