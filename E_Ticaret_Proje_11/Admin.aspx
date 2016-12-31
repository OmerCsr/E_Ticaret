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
                <a class="navbar-brand" href="Admin.aspx">E-NAKLİYAT</a>
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

                                <asp:Button ID="Kullanıcılar" runat="server" Text="Kullanıcılar" Style="background-color: transparent" BorderColor="Transparent" OnClick="Kullanıcılar_Click1" />
                            </a>
                        </li>
                        <li>
                            <a href="#"><i class="fa fa-desktop fa-3x"></i>
                                <asp:Button ID="Araclar" runat="server" Text="Kayıtlı Araclar" Style="background-color: transparent" BorderColor="Transparent" OnClick="Araclar_Click1" />
                            </a>
                        </li>
                        <li>
                            <a href="#"><i class="fa fa-qrcode fa-3x"></i>
                                <asp:Button ID="Destek" runat="server" Text="Destek Mesajları" Style="background-color: transparent" BorderColor="Transparent" OnClick="Destek_Click" />
                            </a>
                        </li>
                        <li>
                            <a href="#"><i class="fa fa-bar-chart-o fa-3x"></i>
                                <asp:Button ID="firma" runat="server" Text="Firma Bilgileri" Style="background-color: transparent" BorderColor="Transparent" OnClick="firma_Click" />
                            </a>
                        </li>
                        <li>
                              <a href="#"><i class="fa fa-edit fa-3x"></i>
                                <asp:Button ID="ilan" runat="server" Text="İlanlar" Style="background-color: transparent" BorderColor="Transparent" OnClick="ilan_Click" />
                            </a>
                        </li>
                        <li>
                              <a href="#"><i class="fa fa-table fa-3x"></i>
                                <asp:Button ID="mesaj" runat="server" Text="Mesajlar" Style="background-color: transparent" BorderColor="Transparent" OnClick="mesaj_Click" />
                            </a>
                        </li>
                        <li>
                            <a href="#"><i class="fa fa-bar-chart-o fa-3x"></i>
                                <asp:Button ID="teklif" runat="server" Text="Teklifler" Style="background-color: transparent" BorderColor="Transparent" OnClick="teklif_Click"/>
                            </a>
                        </li>

                    </ul>

                </div>

            </nav>
            <%---------------------------------------------------------------------------------------------------------------------------%>
            <asp:Panel ID="Panel1" runat="server">
                <div id="page-wrapper" style="background-color: white">
                    <div id="page-inner">
                        <div class="row">
                            <div class="col-md-12">

                                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False"
                                    CellPadding="4" DataSourceID="mySqlDataSource" ForeColor="#333333"
                                    GridLines="None" DataKeyNames="kadi">
                                    <AlternatingRowStyle BackColor="White" />
                                    <Columns>
                                        <asp:TemplateField ShowHeader="False">
                                            <EditItemTemplate>
                                                <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="True"
                                                    CommandName="Update" Text="Update"></asp:LinkButton>
                                                &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False"
                                                    CommandName="Cancel" Text="Cancel"></asp:LinkButton>
                                            </EditItemTemplate>
                                            <ItemTemplate>
                                                <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False"
                                                    CommandName="Edit" Text="Edit"></asp:LinkButton>
                                                &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False"
                                                    CommandName="Delete"
                                                    OnClientClick="javascript:return confirm('are you sure you want to delete.');"
                                                    Text="Delete"></asp:LinkButton>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:BoundField DataField="kadi" HeaderText="kadi" SortExpression="kadi" />
                                        <asp:BoundField DataField="sifre" HeaderText="sifre" SortExpression="sifre" />
                                        <asp:BoundField DataField="ad" HeaderText="ad" SortExpression="ad" />
                                        <asp:BoundField DataField="soyad" HeaderText="soyad" SortExpression="soyad" />
                                        <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
                                        <asp:BoundField DataField="telefon" HeaderText="telefon" SortExpression="telefon" />
                                        <asp:BoundField DataField="id" HeaderText="id" SortExpression="id" />
                                    </Columns>
                                    <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                                    <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                                    <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                                    <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                                    <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                                    <SortedAscendingCellStyle BackColor="#FDF5AC" />
                                    <SortedAscendingHeaderStyle BackColor="#4D0000" />
                                    <SortedDescendingCellStyle BackColor="#FCF6C0" />
                                    <SortedDescendingHeaderStyle BackColor="#820000" />
                                </asp:GridView>
                                <asp:SqlDataSource ProviderName="MySql.Data.MySqlClient" ID="mySqlDataSource" runat="server" DataSourceMode="DataReader"
                                    ConnectionString="server=MYSQL5012.SmarterASP.NET;database=db_a1439f_eticare;uid=a1439f_eticare;password=Omer1234;"
                                    SelectCommand="SELECT * FROM kullanicitablo;"
                                    DeleteCommand="DELETE FROM kullanicitablo WHERE kadi = @kadi"
                                    UpdateCommand="UPDATE kullanicitablo SET kadi=@kadi, sifre=@sifre,
	  ad=@ad, soyad=@soyad,email=@email,telefon=@telefon WHERE kadi=@kadi">

                                    <UpdateParameters>
                                        <asp:Parameter Name="kadi" Type="String" />
                                        <asp:Parameter Name="sifre" Type="String" />
                                        <asp:Parameter Name="ad" Type="String" />
                                        <asp:Parameter Name="soyad" Type="String" />
                                        <asp:Parameter Name="email" Type="String" />
                                        <asp:Parameter Name="telefon" Type="String" />

                                    </UpdateParameters>

                                    <DeleteParameters>
                                        <asp:Parameter Name="kadi" Type="String" />

                                    </DeleteParameters>

                                </asp:SqlDataSource>

                            </div>
                        </div>
                    </div>
                </div>
            </asp:Panel>
            <%---------------------------------------------------------------------------------------------------------------------------%>
            <asp:Panel ID="Panel2" runat="server">
                <div id="page-wrapper" style="background-color: white">
                    <div id="page-inner">
                        <div class="row">
                            <div class="col-md-12">

                                <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False"
                                    CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333"
                                    GridLines="None" DataKeyNames="kAdi,id">
                                    <AlternatingRowStyle BackColor="White" />
                                    <Columns>
                                        <asp:TemplateField ShowHeader="False">
                                            <EditItemTemplate>
                                                <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="True"
                                                    CommandName="Update" Text="Update"></asp:LinkButton>
                                                &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False"
                                                    CommandName="Cancel" Text="Cancel"></asp:LinkButton>
                                            </EditItemTemplate>
                                            <ItemTemplate>
                                                <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False"
                                                    CommandName="Edit" Text="Edit"></asp:LinkButton>
                                                &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False"
                                                    CommandName="Delete"
                                                    OnClientClick="javascript:return confirm('Silmek istediğinize emin misiniz ?');"
                                                    Text="Delete"></asp:LinkButton>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:BoundField DataField="id" HeaderText="id" SortExpression="id" />
                                        <asp:BoundField DataField="kAdi" HeaderText="kAdi" SortExpression="kAdi" />
                                        <asp:BoundField DataField="plakaNo" HeaderText="plakaNo" SortExpression="plakaNo" />
                                        <asp:BoundField DataField="trafigeCikisTarihi" HeaderText="trafigeCikisTarihi" SortExpression="trafigeCikisTarihi" />
                                        <asp:BoundField DataField="marka" HeaderText="marka" SortExpression="marka" />
                                        <asp:BoundField DataField="modelYili" HeaderText="modelYili" SortExpression="modelYili" />
                                        <asp:BoundField DataField="cinsi" HeaderText="cinsi" SortExpression="cinsi" />
                                        <asp:BoundField DataField="tipi" HeaderText="tipi" SortExpression="tipi" />
                                        <asp:BoundField DataField="muayeneGecerlilikSuresi" HeaderText="	muayeneGecerlilikSuresi" SortExpression="muayeneGecerlilikSuresi" />
                                        <asp:BoundField DataField="azariYukluAgirligi" HeaderText="azariYukluAgirligi" SortExpression="azariYukluAgirligi" />
                                        <asp:BoundField DataField="ticariAdi" HeaderText="ticariAdi" SortExpression="ticariAdi" />
                                    </Columns>
                                    <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                                    <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                                    <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                                    <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                                    <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                                    <SortedAscendingCellStyle BackColor="#FDF5AC" />
                                    <SortedAscendingHeaderStyle BackColor="#4D0000" />
                                    <SortedDescendingCellStyle BackColor="#FCF6C0" />
                                    <SortedDescendingHeaderStyle BackColor="#820000" />
                                </asp:GridView>
                                <asp:SqlDataSource ProviderName="MySql.Data.MySqlClient" ID="SqlDataSource1" runat="server" DataSourceMode="DataReader"
                                    ConnectionString="server=MYSQL5012.SmarterASP.NET;database=db_a1439f_eticare;uid=a1439f_eticare;password=Omer1234;"
                                    SelectCommand="SELECT * FROM arackayit;"
                                    DeleteCommand="DELETE FROM arackayit WHERE id=@id"
                                    UpdateCommand="UPDATE arackayit SET kAdi=@kAdi, plakaNo=@plakaNo,
	  trafigeCikisTarihi=@trafigeCikisTarihi, marka=@marka,modelYili=@modelYili,cinsi=@cinsi,tipi=@tipi,muayeneGecerlilikSuresi=@muayeneGecerlilikSuresi,azariYukluAgirligi=@azariYukluAgirligi WHERE id=@id">

                                    <UpdateParameters>
                                        <asp:Parameter Name="kAdi" Type="String" />
                                        <asp:Parameter Name="plakaNo" Type="String" />
                                        <asp:Parameter Name="trafigeCikisTarihi" Type="String" />
                                        <asp:Parameter Name="marka" Type="String" />
                                        <asp:Parameter Name="modelYili" Type="String" />
                                        <asp:Parameter Name="cinsi" Type="String" />
                                        <asp:Parameter Name="tipi" Type="String" />
                                        <asp:Parameter Name="muayeneGecerlilikSuresi" Type="String" />
                                        <asp:Parameter Name="azariYukluAgirligi" Type="String" />
                                    </UpdateParameters>

                                    <DeleteParameters>
                                        <asp:Parameter Name="id" Type="Int32" />

                                    </DeleteParameters>

                                </asp:SqlDataSource>

                            </div>
                        </div>
                    </div>
                </div>
            </asp:Panel>
            <%---------------------------------------------------------------------------------------------------------------------------%>
            <asp:Panel ID="Panel3" runat="server">
                <div id="page-wrapper" style="background-color: white">
                    <div id="page-inner">
                        <div class="row">
                            <div class="col-md-12">

                                <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False"
                                    CellPadding="4" DataSourceID="SqlDataSource2" ForeColor="#333333"
                                    GridLines="None" DataKeyNames="kAdi,id">
                                    <AlternatingRowStyle BackColor="White" />
                                    <Columns>
                                        <asp:TemplateField ShowHeader="False">
                                            <EditItemTemplate>
                                                <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="True"
                                                    CommandName="Update" Text="Update"></asp:LinkButton>
                                                &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False"
                                                    CommandName="Cancel" Text="Cancel"></asp:LinkButton>
                                            </EditItemTemplate>
                                            <ItemTemplate>
                                                <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False"
                                                    CommandName="Edit" Text="Edit"></asp:LinkButton>
                                                &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False"
                                                    CommandName="Delete"
                                                    OnClientClick="javascript:return confirm('Silmek istediğinize emin misiniz ?');"
                                                    Text="Delete"></asp:LinkButton>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:BoundField DataField="id" HeaderText="id" SortExpression="id" />
                                        <asp:BoundField DataField="kAdi" HeaderText="kAdi" SortExpression="kAdi" />
                                        <asp:BoundField DataField="konu" HeaderText="konu" SortExpression="konu" />
                                        <asp:BoundField DataField="mesaj" HeaderText="mesaj" SortExpression="mesaj" />                                   
                                    </Columns>
                                    <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                                    <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                                    <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                                    <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                                    <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                                    <SortedAscendingCellStyle BackColor="#FDF5AC" />
                                    <SortedAscendingHeaderStyle BackColor="#4D0000" />
                                    <SortedDescendingCellStyle BackColor="#FCF6C0" />
                                    <SortedDescendingHeaderStyle BackColor="#820000" />
                                </asp:GridView>
                                <asp:SqlDataSource ProviderName="MySql.Data.MySqlClient" ID="SqlDataSource2" runat="server" DataSourceMode="DataReader"
                                    ConnectionString="server=MYSQL5012.SmarterASP.NET;database=db_a1439f_eticare;uid=a1439f_eticare;password=Omer1234;"
                                    SelectCommand="SELECT * FROM destek;"
                                    DeleteCommand="DELETE FROM destek WHERE id=@id"
                                    UpdateCommand="UPDATE destek SET kAdi=@kAdi,konu=@konu,mesaj=@mesaj WHERE id=@id">

                                    <UpdateParameters>
                                        <asp:Parameter Name="kAdi" Type="String" />
                                        <asp:Parameter Name="konu" Type="String" />
                                        <asp:Parameter Name="mesaj" Type="String" />
                                 
                                    </UpdateParameters>

                                    <DeleteParameters>
                                        <asp:Parameter Name="id" Type="Int32" />

                                    </DeleteParameters>

                                </asp:SqlDataSource>

                            </div>
                        </div>
                    </div>
                </div>
            </asp:Panel>
             <%---------------------------------------------------------------------------------------------------------------------------%>
                 <asp:Panel ID="Panel4" runat="server">
                <div id="page-wrapper" style="background-color: white">
                    <div id="page-inner">
                        <div class="row">
                            <div class="col-md-12">

                                <asp:GridView ID="GridView4" runat="server" AutoGenerateColumns="False"
                                    CellPadding="4" DataSourceID="SqlDataSource3" ForeColor="#333333"
                                    GridLines="None" DataKeyNames="kAdi,id">
                                    <AlternatingRowStyle BackColor="White" />
                                    <Columns>
                                        <asp:TemplateField ShowHeader="False">
                                            <EditItemTemplate>
                                                <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="True"
                                                    CommandName="Update" Text="Update"></asp:LinkButton>
                                                &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False"
                                                    CommandName="Cancel" Text="Cancel"></asp:LinkButton>
                                            </EditItemTemplate>
                                            <ItemTemplate>
                                                <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False"
                                                    CommandName="Edit" Text="Edit"></asp:LinkButton>
                                                &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False"
                                                    CommandName="Delete"
                                                    OnClientClick="javascript:return confirm('Silmek istediğinize emin misiniz ?');"
                                                    Text="Delete"></asp:LinkButton>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:BoundField DataField="id" HeaderText="id" SortExpression="id" />
                                        <asp:BoundField DataField="kAdi" HeaderText="kAdi" SortExpression="kAdi" />
                                        <asp:BoundField DataField="firmaAdi" HeaderText="firmaAdi" SortExpression="firmaAdi" />
                                        <asp:BoundField DataField="ad" HeaderText="ad" SortExpression="ad" />
                                        <asp:BoundField DataField="soyad" HeaderText="soyad" SortExpression="soyad" />
                                        <asp:BoundField DataField="vergiDairesi" HeaderText="vergiDairesi" SortExpression="vergiDairesi" />
                                        <asp:BoundField DataField="vergiNo" HeaderText="vergiNo" SortExpression="vergiNo" />
                                        <asp:BoundField DataField="adres" HeaderText="adres" SortExpression="adres" />
                                        <asp:BoundField DataField="il" HeaderText="	il" SortExpression="il" />
                                        <asp:BoundField DataField="ilce" HeaderText="ilce" SortExpression="ilce" />
                                        <asp:BoundField DataField="postaKodu" HeaderText="postaKodu" SortExpression="postaKodu" />
                                        <asp:BoundField DataField="telefon" HeaderText="telefon" SortExpression="telefon" />
                                        <asp:BoundField DataField="fax" HeaderText="fax" SortExpression="fax" />
                                        <asp:BoundField DataField="webAdresi" HeaderText="webAdresi" SortExpression="webAdresi" />
                                        <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
                                        <asp:BoundField DataField="aracSayisi" HeaderText="aracSayisi" SortExpression="aracSayisi" />
                                    </Columns>
                                    <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                                    <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                                    <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                                    <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                                    <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                                    <SortedAscendingCellStyle BackColor="#FDF5AC" />
                                    <SortedAscendingHeaderStyle BackColor="#4D0000" />
                                    <SortedDescendingCellStyle BackColor="#FCF6C0" />
                                    <SortedDescendingHeaderStyle BackColor="#820000" />
                                </asp:GridView>
                                <asp:SqlDataSource ProviderName="MySql.Data.MySqlClient" ID="SqlDataSource3" runat="server" DataSourceMode="DataReader"
                                    ConnectionString="server=MYSQL5012.SmarterASP.NET;database=db_a1439f_eticare;uid=a1439f_eticare;password=Omer1234;"
                                    SelectCommand="SELECT * FROM firmabilgileri;"
                                    DeleteCommand="DELETE FROM firmabilgileri WHERE id=@id"
                                    UpdateCommand="UPDATE firmabilgileri SET kAdi=@kAdi, firmaAdi=@firmaAdi,
	  ad=@ad, soyad=@soyad,vergiDairesi=@vergiDairesi,vergiNo=@vergiNo,adres=@adres,il=@il,ilce=@ilce,postaKodu=@postaKodu,telefon=@telefon,fax=@fax,webAdresi=@webAdresi,email=@email,aracSayisi=@aracSayisi WHERE id=@id">

                                    <UpdateParameters>
                                        <asp:Parameter Name="kAdi" Type="String" />
                                        <asp:Parameter Name="firmaAdi" Type="String" />
                                        <asp:Parameter Name="ad" Type="String" />
                                        <asp:Parameter Name="soyad" Type="String" />
                                        <asp:Parameter Name="vergiDairesi" Type="String" />
                                        <asp:Parameter Name="vergiNo" Type="String" />
                                        <asp:Parameter Name="adres" Type="String" />
                                        <asp:Parameter Name="il" Type="String" />
                                        <asp:Parameter Name="ilce" Type="String" />

                                        <asp:Parameter Name="postaKodu" Type="String" />
                                        <asp:Parameter Name="telefon" Type="String" />
                                        <asp:Parameter Name="fax" Type="String" />
                                        <asp:Parameter Name="webAdresi" Type="String" />
                                        <asp:Parameter Name="email" Type="String" />
                                        <asp:Parameter Name="aracSayisi" Type="String" />
                                    </UpdateParameters>

                                    <DeleteParameters>
                                        <asp:Parameter Name="id" Type="Int32" />

                                    </DeleteParameters>

                                </asp:SqlDataSource>

                            </div>
                        </div>
                    </div>
                </div>
            </asp:Panel>
              <%---------------------------------------------------------------------------------------------------------------------------%>
                 <asp:Panel ID="Panel5" runat="server">
                <div id="page-wrapper" style="background-color: white">
                    <div id="page-inner">
                        <div class="row">
                            <div class="col-md-12">

                                <asp:GridView ID="GridView5" runat="server" AutoGenerateColumns="False"
                                    CellPadding="4" DataSourceID="SqlDataSource4" ForeColor="#333333"
                                    GridLines="None" DataKeyNames="kAdi,id">
                                    <AlternatingRowStyle BackColor="White" />
                                    <Columns>
                                        <asp:TemplateField ShowHeader="False">
                                            <EditItemTemplate>
                                                <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="True"
                                                    CommandName="Update" Text="Update"></asp:LinkButton>
                                                &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False"
                                                    CommandName="Cancel" Text="Cancel"></asp:LinkButton>
                                            </EditItemTemplate>
                                            <ItemTemplate>
                                                <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False"
                                                    CommandName="Edit" Text="Edit"></asp:LinkButton>
                                                &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False"
                                                    CommandName="Delete"
                                                    OnClientClick="javascript:return confirm('Silmek istediğinize emin misiniz ?');"
                                                    Text="Delete"></asp:LinkButton>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:BoundField DataField="id" HeaderText="id" SortExpression="id" />
                                        <asp:BoundField DataField="kAdi" HeaderText="kAdi" SortExpression="kAdi" />
                                        <asp:BoundField DataField="nereden" HeaderText="nereden" SortExpression="nereden" />
                                        <asp:BoundField DataField="bulunduguKat" HeaderText="bulunduguKat" SortExpression="bulunduguKat" />
                                        <asp:BoundField DataField="bAsansor" HeaderText="bAsansor" SortExpression="bAsansor" />
                                        <asp:BoundField DataField="nereye" HeaderText="nereye" SortExpression="nereye" />
                                        <asp:BoundField DataField="gidecegiKat" HeaderText="gidecegiKat" SortExpression="gidecegiKat" />
                                        <asp:BoundField DataField="gAsansor" HeaderText="gAsansor" SortExpression="gAsansor" />
                                        <asp:BoundField DataField="evinOdaSayisi" HeaderText="evinOdaSayisi" SortExpression="evinOdaSayisi" />
                                        <asp:BoundField DataField="baslangicTarihi" HeaderText="baslangicTarihi" SortExpression="baslangicTarihi" />
                                        <asp:BoundField DataField="bitisTarihi" HeaderText="bitisTarihi" SortExpression="bitisTarihi" />
                                    </Columns>
                                    <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                                    <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                                    <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                                    <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                                    <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                                    <SortedAscendingCellStyle BackColor="#FDF5AC" />
                                    <SortedAscendingHeaderStyle BackColor="#4D0000" />
                                    <SortedDescendingCellStyle BackColor="#FCF6C0" />
                                    <SortedDescendingHeaderStyle BackColor="#820000" />
                                </asp:GridView>
                                <asp:SqlDataSource ProviderName="MySql.Data.MySqlClient" ID="SqlDataSource4" runat="server" DataSourceMode="DataReader"
                                    ConnectionString="server=MYSQL5012.SmarterASP.NET;database=db_a1439f_eticare;uid=a1439f_eticare;password=Omer1234;"
                                    SelectCommand="SELECT * FROM ilanlar;"
                                    DeleteCommand="DELETE FROM ilanlar WHERE id=@id"
                                    UpdateCommand="UPDATE ilanlar SET kAdi=@kAdi, nereden=@nereden,bulunduguKat=@bulunduguKat, bAsansor=@bAsansor,nereye=@nereye,gidecegiKat=@gidecegiKat,gAsansor=@gAsansor,evinOdaSayisi=@evinOdaSayisi,baslangicTarihi=@baslangicTarihi,bitisTarihi=@bitisTarihi WHERE id=@id">

                                    <UpdateParameters>
                                        <asp:Parameter Name="kAdi" Type="String" />
                                        <asp:Parameter Name="nereden" Type="String" />
                                        <asp:Parameter Name="bulunduguKat" Type="String" />
                                        <asp:Parameter Name="bAsansor" Type="String" />
                                        <asp:Parameter Name="nereye" Type="String" />
                                        <asp:Parameter Name="gidecegiKat" Type="String" />
                                        <asp:Parameter Name="gAsansor" Type="String" />
                                        <asp:Parameter Name="evinOdaSayisi" Type="String" />
                                        <asp:Parameter Name="baslangicTarihi" Type="String" />
                                        <asp:Parameter Name="bitisTarihi" Type="String" />                                
                                    </UpdateParameters>

                                    <DeleteParameters>
                                        <asp:Parameter Name="id" Type="Int32" />

                                    </DeleteParameters>

                                </asp:SqlDataSource>

                            </div>
                        </div>
                    </div>
                </div>
            </asp:Panel>
             <%---------------------------------------------------------------------------------------------------------------------------%>
                 <asp:Panel ID="Panel6" runat="server">
                <div id="page-wrapper" style="background-color: white">
                    <div id="page-inner">
                        <div class="row">
                            <div class="col-md-12">

                                <asp:GridView ID="GridView6" runat="server" AutoGenerateColumns="False"
                                    CellPadding="4" DataSourceID="SqlDataSource5" ForeColor="#333333"
                                    GridLines="None" DataKeyNames="id">
                                    <AlternatingRowStyle BackColor="White" />
                                    <Columns>
                                        <asp:TemplateField ShowHeader="False">
                                            <EditItemTemplate>
                                                <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="True"
                                                    CommandName="Update" Text="Update"></asp:LinkButton>
                                                &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False"
                                                    CommandName="Cancel" Text="Cancel"></asp:LinkButton>
                                            </EditItemTemplate>
                                            <ItemTemplate>
                                                <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False"
                                                    CommandName="Edit" Text="Edit"></asp:LinkButton>
                                                &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False"
                                                    CommandName="Delete"
                                                    OnClientClick="javascript:return confirm('Silmek istediğinize emin misiniz ?');"
                                                    Text="Delete"></asp:LinkButton>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:BoundField DataField="id" HeaderText="id" SortExpression="id" />
                                        <asp:BoundField DataField="alici" HeaderText="alici" SortExpression="alici" />
                                        <asp:BoundField DataField="gonderen" HeaderText="gonderen" SortExpression="gonderen" />
                                        <asp:BoundField DataField="konu" HeaderText="konu" SortExpression="konu" />
                                        <asp:BoundField DataField="mesaj" HeaderText="mesaj" SortExpression="mesaj" />
                                        <asp:BoundField DataField="tarih" HeaderText="tarih" SortExpression="tarih" />
                                    </Columns>
                                    <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                                    <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                                    <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                                    <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                                    <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                                    <SortedAscendingCellStyle BackColor="#FDF5AC" />
                                    <SortedAscendingHeaderStyle BackColor="#4D0000" />
                                    <SortedDescendingCellStyle BackColor="#FCF6C0" />
                                    <SortedDescendingHeaderStyle BackColor="#820000" />
                                </asp:GridView>
                                <asp:SqlDataSource ProviderName="MySql.Data.MySqlClient" ID="SqlDataSource5" runat="server" DataSourceMode="DataReader"
                                    ConnectionString="server=MYSQL5012.SmarterASP.NET;database=db_a1439f_eticare;uid=a1439f_eticare;password=Omer1234;"
                                    SelectCommand="SELECT * FROM mesajlar;"
                                    DeleteCommand="DELETE FROM mesajlar WHERE id=@id"
                                    UpdateCommand="UPDATE mesajlar SET alici=@alici,gonderen=@gonderen, konu=@konu,mesaj=@mesaj,tarih=@tarih WHERE id=@id">

                                    <UpdateParameters>
                                        <asp:Parameter Name="alici" Type="String" />
                                        <asp:Parameter Name="gonderen" Type="String" />
                                        <asp:Parameter Name="konu" Type="String" />
                                        <asp:Parameter Name="mesaj" Type="String" />
                                        <asp:Parameter Name="tarih" Type="String" />                              
                                    </UpdateParameters>

                                    <DeleteParameters>
                                        <asp:Parameter Name="id" Type="Int32" />

                                    </DeleteParameters>

                                </asp:SqlDataSource>

                            </div>
                        </div>
                    </div>
                </div>
            </asp:Panel>
               <%---------------------------------------------------------------------------------------------------------------------------%>
                 <asp:Panel ID="Panel7" runat="server">
                <div id="page-wrapper" style="background-color: white">
                    <div id="page-inner">
                        <div class="row">
                            <div class="col-md-12">

                                <asp:GridView ID="GridView7" runat="server" AutoGenerateColumns="False"
                                    CellPadding="4" DataSourceID="SqlDataSource6" ForeColor="#333333"
                                    GridLines="None" DataKeyNames="id">
                                    <AlternatingRowStyle BackColor="White" />
                                    <Columns>
                                        <asp:TemplateField ShowHeader="False">
                                            <EditItemTemplate>
                                                <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="True"
                                                    CommandName="Update" Text="Update"></asp:LinkButton>
                                                &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False"
                                                    CommandName="Cancel" Text="Cancel"></asp:LinkButton>
                                            </EditItemTemplate>
                                            <ItemTemplate>
                                                <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False"
                                                    CommandName="Edit" Text="Edit"></asp:LinkButton>
                                                &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False"
                                                    CommandName="Delete"
                                                    OnClientClick="javascript:return confirm('Silmek istediğinize emin misiniz ?');"
                                                    Text="Delete"></asp:LinkButton>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:BoundField DataField="id" HeaderText="id" SortExpression="id" />
                                         <asp:BoundField DataField="kAdi" HeaderText="kAdi" SortExpression="kAdi" />
                                        <asp:BoundField DataField="AkAdi" HeaderText="AkAdi" SortExpression="AkAdi" />
                                        <asp:BoundField DataField="ilanId" HeaderText="ilanId" SortExpression="ilanId" />
                                        <asp:BoundField DataField="fiyat" HeaderText="	fiyat" SortExpression="	fiyat" />
                                        <asp:BoundField DataField="kamyonPlaka" HeaderText="kamyonPlaka" SortExpression="kamyonPlaka" />
                                        <asp:BoundField DataField="teklifDurumu" HeaderText="teklifDurumu" SortExpression="teklifDurumu" />
                                    </Columns>
                                    <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                                    <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                                    <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                                    <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                                    <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                                    <SortedAscendingCellStyle BackColor="#FDF5AC" />
                                    <SortedAscendingHeaderStyle BackColor="#4D0000" />
                                    <SortedDescendingCellStyle BackColor="#FCF6C0" />
                                    <SortedDescendingHeaderStyle BackColor="#820000" />
                                </asp:GridView>
                                <asp:SqlDataSource ProviderName="MySql.Data.MySqlClient" ID="SqlDataSource6" runat="server" DataSourceMode="DataReader"
                                    ConnectionString="server=MYSQL5012.SmarterASP.NET;database=db_a1439f_eticare;uid=a1439f_eticare;password=Omer1234;"
                                    SelectCommand="SELECT * FROM teklifler;"
                                    DeleteCommand="DELETE FROM teklifler WHERE id=@id"
                                    UpdateCommand="UPDATE teklifler SET kAdi=@kAdi,AkAdi=@AkAdi,ilanId=@ilanId,fiyat=@fiyat,kamyonPlaka=@kamyonPlaka,teklifDurumu=@teklifDurumu WHERE id=@id">

                                    <UpdateParameters>
                                        <asp:Parameter Name="kAdi" Type="String" />
                                        <asp:Parameter Name="AkAdi" Type="String" />
                                        <asp:Parameter Name="ilanId" Type="String" />
                                        <asp:Parameter Name="fiyat" Type="String" />
                                        <asp:Parameter Name="kamyonPlaka" Type="String" />
                                         <asp:Parameter Name="teklifDurumu" Type="String" />                                
                                    </UpdateParameters>

                                    <DeleteParameters>
                                        <asp:Parameter Name="id" Type="Int32" />

                                    </DeleteParameters>

                                </asp:SqlDataSource>

                            </div>
                        </div>
                    </div>
                </div>
            </asp:Panel>
        </form>
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
