<%@ Page Language="C#" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="index" %>

<!DOCTYPE html>

<html lang="tr">
<head runat="server">
        <link rel="shortcut icon" href="img/favicon.ico">
    <title>Nakliyat ve Taşımacılık Web Sitesi</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="keywords" content="Onepage Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template,
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
    <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
    <link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
    <link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="js/jquery.min.js"></script>
    <link href='http://fonts.googleapis.com/css?family=Arvo:400,700,400italic,700italic' rel='stylesheet' type='text/css'>
    <link href='http://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800' rel='stylesheet' type='text/css'>
    <script type="text/javascript" src="js/move-top.js"></script>
    <script type="text/javascript" src="js/easing.js"></script>
    <script type="text/javascript">
        jQuery(document).ready(function ($) {
            $(".scroll").click(function (event) {
                event.preventDefault();
                $('html,body').animate({ scrollTop: $(this.hash).offset().top }, 1200);
            });
        });
    </script>
    <!------ Light Box ------>
    <link href="css/StyleSheet.css" rel="stylesheet" />
    <script src="js/jquery.swipebox.min.js"></script>
    <script type="text/javascript">
        jQuery(function ($) {
            $(".swipebox").swipebox();
        });
    </script>
    <!------ Eng Light Box ------>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <script type="text/javascript">
        $(document).ready(function () {
            $('#horizontalTab').easyResponsiveTabs({
                type: 'default', //Types: default, vertical, accordion           
                width: 'auto', //auto or any width like 600px
                fit: true   // 100% fit in a container
            });
        });
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <div class="header" id="head">
            <div class="container">
                <div class="header-top">
                    <div class="logo">
                        <a href="index.html">&nbsp;</a>
                    </div>
                    <div class="top-menu">
                        <span class="menu"></span>
                        <ul>
                            <nav class="cl-effect-5">
                                <li>&nbsp;<a class="active" href="#home"><span data-hover="AnaSayfa">AnaSayfa</span></a></li>
                                <li><a href="#services" class="scroll"><span data-hover="Hizmetler">Hizmetler</span></a></li>
                                <li><a href="#work" class="scroll"><span data-hover="Çalışmalar">Çalışmalar</span></a></li>
                                <li><a href="#about" class="scroll"><span data-hover="Hakkımızda">Hakkımızda</span></a></li>
                                <li><a href="#contact" class="scroll"><span data-hover="İletişim">İletişim</span></a></li>
                              <%--  <li><a href="giris.aspx"><span data-hover="Giriş Yap">Giriş Yap</span></a></li>
                                <li><a href="kayit.aspx"><span data-hover="Kayıt Ol">Kayıt Ol</span></a></li>--%>
                            </nav>
                        </ul>
                    </div>

                    <!--script-nav-->
                    <script>
                        $("span.menu").click(function () {
                            $(".top-menu ul").slideToggle("slow", function () {
                            });
                        });
                    </script>
                    <div class="clearfix">
                        <a href="index.aspx">
                            <asp:Label ID="Label1" runat="server" Text="Nakliyat ve Taşımacılık İşlemleri" Font-Bold="True" Font-Italic="True" Font-Overline="False" Font-Size="Large" Font-Strikeout="False" Font-Underline="True" ForeColor="#ebc20e" font-family=" 'Arvo', serif"></asp:Label>


                        </a>
                    </div>
                </div>
                <div class="index-banner">
                    <div class="wmuSlider example1">
                        <div class="wmuSliderWrapper">
                            <article style="position: absolute; width: 100%; opacity: 0;">
                                <div class="banner-wrap">
                                    <div class="banner_center">
                                        <!---------------------------------------------------- -->
                                        <h1>Evden Eve Nakliyat</h1>
                                        <h2><span>Müsteri Memnuniyeti</span></h2>
                                    </div>
                                </div>
                            </article>
                            <article style="position: relative; width: 100%; opacity: 1;">
                                <div class="banner-wrap">
                                    <div class="banner_center">
                                        <h1>Evden Eve Nakliyat</h1>
                                        <h2><span>Maddi Güvenlik Boyutu</span></h2>

                                    </div>
                                </div>
                            </article>
                            <article style="position: absolute; width: 100%; opacity: 0;">
                                <div class="banner-wrap">
                                    <div class="banner_center">
                                        <h1>Evden Eve Nakliyat</h1>
                                        <h2><span>Sosyal Güvenlik Boyutu</span></h2>
                                    </div>
                                </div>
                            </article>
                        </div>

                    </div>
                    <script src="js/jquery.wmuSlider.js"></script>
                    <script>
                        $('.example1').wmuSlider();
                    </script>
                </div>
            </div>





        </div>
        <div class="content">
            <div class="services-section" id="services">
                <div class="container">
                    <div class="services-header">
                        <h3><span>[</span>Hizmetler<span>]</span></h3>
                        <p>Hizmetler alanı mobil cihazlar kullanarak giriş yapan kullanıcılar için hazırlanmıştır.Kullanıcı girişi ve kayıt sayfalarına mobil cihazlarda bu alan kullanılarak giriş yapılabilmesi sağlanmıştır.</p>
                    </div>
                    <div class="services-sectiongrids">
                        <div class="col-md-4 services-grid">
                            <a href="#">
                                <img src="img/im1.png" alt="" /></a>
                            <h4>Masaüstü Görünüm</h4>
                            <p>Masa üstü görünüme ulaşmak için resme tıklamanız yeterlidir.</p>
                        </div>
                        <div class="col-md-4 services-grid">
                            <a href="giris.aspx">
                                <img src="img/im2.png" alt="" /></a>
                            <h4>Giriş Yap</h4>
                            <p>Giriş yaparak sisteme erişim sağlamak istiyorsanız resme tıklamanız yeterlidir.</p>
                        </div>
                        <div class="col-md-4 services-grid">
                            <a href="kayit.aspx">
                                <img src="img/im3.png" alt="" /></a>
                            <h4>Kayıt Ol</h4>
                            <p>Nakliyat ve Taşımacılık sistemine kayıt olarak güvenli taşıma işlemleri yaptırmak istiyorsanız resme tıklamanız yeterlidir.</p>
                        </div>
                        <div class="clearfix"></div>
                        <div class="arrow1">
                            <a href="#work" class="scroll">
                                <img src="images/arrow1.png" alt="" /></a>
                        </div>

                    </div>
                </div>
            </div>
            <div class="works-section" id="work">
                <div class="works-header">
                    <h3><span>[</span> works <span>]</span></h3>
                    <p>This is Photoshop's version  of Lorem Ipsum. Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus a sit amet mauris. Morbi accumsan ipsum velit. Nam nec tellus a odio tincidunt auctor a ornare odio. </p>
                </div>
                <div class="portfolio-section-bottom-row" id="portfolio">
                    <div class="container">
                        <ul id="filters" class="clearfix">
                            <li><span class="filter active" data-filter="app card icon web logo1">All</span></li>
                            <li><span class="filter" data-filter="app">Branding</span></li>
                            <li><span class="filter" data-filter="card">Print</span></li>
                            <li><span class="filter" data-filter="icon">Webdesign</span></li>
                            <li><span class="filter" data-filter="logo1">Photography</span></li>
                        </ul>
                        <div id="portfoliolist">
                            <div class="portfolio card mix_all  wow bounceIn" data-wow-delay="0.4s" data-cat="card" style="display: inline-block; opacity: 1;">
                                <div class="portfolio-wrapper grid_box">
                                    <a href="images/pic-1.jpg" class="swipebox" title="Image Title">
                                        <img src="images/pic-1.jpg" class="img-responsive" alt=""><span class="zoom-icon"></span> </a>

                                </div>
                            </div>
                            <div class="portfolio app mix_all  wow bounceIn" data-wow-delay="0.4s" data-cat="app" style="display: inline-block; opacity: 1;">
                                <div class="portfolio-wrapper grid_box">
                                    <a href="images/pic-2.jpg" class="swipebox" title="Image Title">
                                        <img src="images/pic-2.jpg" class="img-responsive" alt=""><span class="zoom-icon"></span> </a>

                                </div>
                            </div>
                            <div class="portfolio icon mix_all  wow bounceIn" data-wow-delay="0.4s" data-cat="icon" style="display: inline-block; opacity: 1;">
                                <div class="portfolio-wrapper grid_box">
                                    <a href="images/pic-3.jpg" class="swipebox" title="Image Title">
                                        <img src="images/pic-3.jpg" class="img-responsive" alt=""><span class="zoom-icon"></span> </a>

                                </div>

                            </div>

                            <div class="portfolio app mix_all  wow bounceIn" data-wow-delay="0.4s" data-cat="app" style="display: inline-block; opacity: 1;">
                                <div class="portfolio-wrapper grid_box">
                                    <a href="images/pic-4.jpg" class="swipebox" title="Image Title">
                                        <img src="images/pic-4.jpg" class="img-responsive" alt=""><span class="zoom-icon"></span> </a>

                                </div>
                            </div>
                            <div class="portfolio card mix_all  wow bounceIn" data-wow-delay="0.4s" data-cat="card" style="display: inline-block; opacity: 1;">
                                <div class="portfolio-wrapper grid_box">
                                    <a href="images/pic-5.jpg" class="swipebox" title="Image Title">
                                        <img src="images/pic-5.jpg" class="img-responsive" alt=""><span class="zoom-icon"></span> </a>

                                </div>
                            </div>
                            <div class="portfolio card mix_all  wow bounceIn" data-wow-delay="0.4s" data-cat="card" style="display: inline-block; opacity: 1;">
                                <div class="portfolio-wrapper grid_box">
                                    <a href="images/pic-6.jpg" class="swipebox" title="Image Title">
                                        <img src="images/pic-6.jpg" class="img-responsive" alt=""><span class="zoom-icon"></span> </a>

                                </div>
                            </div>
                            <div class="portfolio icon mix_all  wow bounceIn" data-wow-delay="0.4s" data-cat="icon" style="display: inline-block; opacity: 1;">
                                <div class="portfolio-wrapper grid_box">
                                    <a href="images/pic-7.jpg" class="swipebox" title="Image Title">
                                        <img src="images/pic-7.jpg" class="img-responsive" alt=""><span class="zoom-icon"></span> </a>

                                </div>
                            </div>
                            <div class="portfolio logo1 mix_all wow bounceIn" data-wow-delay="0.4s" data-cat="logos" style="display: inline-block; opacity: 1;">
                                <div class="portfolio-wrapper grid_box">
                                    <a href="images/pic-8.jpg" class="swipebox" title="Image Title">
                                        <img src="images/pic-8.jpg" class="img-responsive" alt=""><span class="zoom-icon"></span> </a>

                                </div>
                            </div>

                            <div class="clearfix"></div>
                        </div>
                        <!-- Script for gallery Here -->
                        <script type="text/javascript" src="js/jquery.mixitup.min.js"></script>
                        <script type="text/javascript">
                            $(function () {

                                var filterList = {

                                    init: function () {

                                        // MixItUp plugin
                                        // http://mixitup.io
                                        $('#portfoliolist').mixitup({
                                            targetSelector: '.portfolio',
                                            filterSelector: '.filter',
                                            effects: ['fade'],
                                            easing: 'snap',
                                            // call the hover effect
                                            onMixEnd: filterList.hoverEffect()
                                        });

                                    },

                                    hoverEffect: function () {

                                        // Simple parallax effect
                                        $('#portfoliolist .portfolio').hover(
                                            function () {
                                                $(this).find('.label').stop().animate({ bottom: 0 }, 200, 'easeOutQuad');
                                                $(this).find('img').stop().animate({ top: -30 }, 500, 'easeOutQuad');
                                            },
                                            function () {
                                                $(this).find('.label').stop().animate({ bottom: -40 }, 200, 'easeInQuad');
                                                $(this).find('img').stop().animate({ top: 0 }, 300, 'easeOutQuad');
                                            }
                                        );

                                    }

                                };

                                // Run the show!
                                filterList.init();


                            });
                        </script>
                        <!-- Gallery Script Ends -->



                        <div class="arrow">
                            <a href="#about" class="scroll">
                                <img src="images/arrow.png" alt="" /></a>
                        </div>
                    </div>
                </div>
            </div>
            <!-- portfolio-section-ends -->
            <div class="about-section" id="about" id="about">
                <div class="container">
                    <div class="about-header">
                        <h3><span>[</span> about <span>]</span></h3>
                        <div class="about-imag">
                            <img src="images/Adsız.png" alt="" />
                        </div>
                        <div class="about-text">
                            <p>This is Photoshop's version  of Lorem Ipsum. Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus a sit amet mauris. Morbi accumsan ipsum velit. Nam nec tellus a odio tincidunt auctor a ornare odio.</p>
                            <p>This is Photoshop's version  of Lorem Ipsum. Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus a sit amet mauris. . </p>
                        </div>
                        <div class="clearfix"></div>
                    </div>
                    <div class="about-sectiongrids">
                        <div class="col-md-6 about-leftgrid">
                            <div class="polls">
                                <div class="poll">
                                    <div class="poll-desc">
                                        <h4>Graphic Design</h4>
                                    </div>
                                    <div class="percentage">
                                        <p>75%</p>
                                    </div>
                                    <div class="clearfix"></div>
                                </div>
                                <div class="skills">
                                    <div style="width: 75%"></div>
                                </div>
                            </div>
                            <div class="polls">
                                <div class="poll">
                                    <div class="poll-desc">
                                        <h4>Ui/Ux</h4>
                                    </div>
                                    <div class="percentage">
                                        <p>75%</p>
                                    </div>
                                    <div class="clearfix"></div>
                                </div>
                                <div class="skills">
                                    <div style="width: 75%"></div>
                                </div>
                            </div>
                            <div class="polls">
                                <div class="poll">
                                    <div class="poll-desc">
                                        <h4>Logo Design</h4>
                                    </div>
                                    <div class="percentage">
                                        <p>75%</p>
                                    </div>
                                    <div class="clearfix"></div>
                                </div>
                                <div class="skills">
                                    <div style="width: 75%"></div>
                                </div>
                            </div>
                            <div class="polls">
                                <div class="poll">
                                    <div class="poll-desc">
                                        <h4>Html/Css</h4>
                                    </div>
                                    <div class="percentage">
                                        <p>75%</p>
                                    </div>
                                    <div class="clearfix"></div>
                                </div>
                                <div class="skills">
                                    <div style="width: 75%"></div>
                                </div>
                            </div>

                        </div>
                        <div class="col-md-6 about-rightgrid">
                            <div class="polls">
                                <div class="poll">
                                    <div class="poll-desc">
                                        <h4>web design</h4>
                                    </div>
                                    <div class="percentage">
                                        <p>75%</p>
                                    </div>
                                    <div class="clearfix"></div>
                                </div>
                                <div class="skills">
                                    <div style="width: 75%"></div>
                                </div>
                            </div>
                            <div class="polls">
                                <div class="poll">
                                    <div class="poll-desc">
                                        <h4>branding</h4>
                                    </div>
                                    <div class="percentage">
                                        <p>75%</p>
                                    </div>
                                    <div class="clearfix"></div>
                                </div>
                                <div class="skills">
                                    <div style="width: 75%"></div>
                                </div>
                            </div>
                            <div class="polls">
                                <div class="poll">
                                    <div class="poll-desc">
                                        <h4>Photography</h4>
                                    </div>
                                    <div class="percentage">
                                        <p>75%</p>
                                    </div>
                                    <div class="clearfix"></div>
                                </div>
                                <div class="skills">
                                    <div style="width: 75%"></div>
                                </div>
                            </div>
                            <div class="polls">
                                <div class="poll">
                                    <div class="poll-desc">
                                        <h4>Jquery</h4>
                                    </div>
                                    <div class="percentage">
                                        <p>75%</p>
                                    </div>
                                    <div class="clearfix"></div>
                                </div>
                                <div class="skills">
                                    <div style="width: 75%"></div>
                                </div>
                            </div>
                        </div>
                        <div class="clearfix"></div>
                    </div>
                    <div class="arrow1">
                        <a href="#contact" class="scroll">
                            <img src="images/arrow1.png" alt="" /></a>
                    </div>
                </div>
            </div>
        </div>
        <div class="footer-section" id="contact" id="contact">
            <div class="container">
                <div class="contact-header">
                    <h3><span>[</span>İletişim<span>]</span></h3>
                    <p>Nakliyat ve taşımacılık web sitesi hakkında her türlü soru ve görüşleriniz için bizimle iletişime geçebilirsiniz.</p>
                </div>
                <div class="social-icon">
                    <a href="#"><i class="icon1"></i></a>
                    <a href="#"><i class="icon2"></i></a>
                    <a href="#"><i class="icon3"></i></a>
                    <a href="#"><i class="icon4"></i></a>
                    <a href="#"><i class="icon5"></i></a>
                    <a href="#"><i class="icon6"></i></a>
                    <a href="#"><i class="icon7"></i></a>
                    <a href="#"><i class="icon8"></i></a>
                </div>
                <div class="contact">
                    <div class="col-md-4 contactgrid">
                        <asp:TextBox ID="TextBox1" runat="server"  class="text" name="Email" placeholder="İsim ve Soyisim" required=""></asp:TextBox>
                  
                      <%--  <input type="text" class="text" value=" name" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = ' name';}">--%>
                    </div>
                    <div class="col-md-4 contactgrid">
                            <asp:TextBox ID="TextBox2" runat="server"  class="text" name="Email" placeholder="Email" required=""></asp:TextBox>
                    </div>
                    <div class="col-md-4 contactgrid">
                           <asp:TextBox ID="TextBox3" runat="server"  class="text" name="Telefon" placeholder="Telefon" required=""></asp:TextBox>>
                    </div>
                    <div class="col-md-8 contactgrid">
                         <asp:TextBox ID="TextBox4" runat="server"  class="text" name="Mesajınız" placeholder="Mesajınız" required=""></asp:TextBox>>
                    </div>
                    <div class="col-md-8 contactgrid">
                   <asp:Button ID="Button1" type="button" runat="server" Text="[Mesaj Gönder]" OnClick="MesajGonder_Click" BackColor="#EBC20E" BorderColor="White" ForeColor="White" />
                      <%--  <input type="button" value="">--%>
                    </div>
                     <div class="col-md-4 contactgrid">
                         <asp:Label ID="lblSonuc" runat="server" Font-Bold="True" Font-Italic="True" ForeColor="Red" Width="134px"></asp:Label>
                    </div>
                    <div class="clearfix"></div>
                </div>
                <div class="footer-bottom">

                    <p>Copyright &copy; 2016 Nakliyat ve Taşımacılık İşlemleri | Tüm Hakları Saklıdır</p>

                </div>
                <script type="text/javascript">
                    $(document).ready(function () {
                        /*
                        var defaults = {
                            containerID: 'toTop', // fading element id
                            containerHoverID: 'toTopHover', // fading element hover id
                            scrollSpeed: 1200,
                            easingType: 'linear'
                        };
                        */

                        $().UItoTop({ easingType: 'easeOutQuart' });

                    });
                </script>
                <a href="#" id="toTop" style="display: block;"><span id="toTopHover" style="opacity: 1;"></span></a>
            </div>

        </div>
        <%--    <script type="text/javascript">
        function waitfor() {
            window.location.reload();
        }

        setTimeout("waitfor()", 5000);

</script>--%>
    </form>
</body>
</html>
