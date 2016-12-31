<%@ Page Title="" Language="C#" MasterPageFile="~/Firma.master" AutoEventWireup="true" CodeFile="Firma_Profil.aspx.cs" Inherits="Firma_Profil" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <link href="css/tablo.css" rel="stylesheet" />

    <div id="page-wrapper">
        <div id="page-inner">
            <div class="row">
                <div class="col-md-12">
                    <form runat="server">
                        <asp:Button ID="Button1" runat="server" Text="Profilim" OnClick="Btn1_click" BackColor="red" />
                        <asp:Button ID="Button2" runat="server" Text="Profil Resmi Güncelle" OnClick="Btn2_click" />
                        <asp:Button ID="Button4" runat="server" Text="Profil Bilgi Güncelle" OnClick="Button4_Click" />
                        <asp:MultiView ID="MultiView1" runat="server">
                            <asp:View ID="View1" runat="server">
                                <!--------------------------------------------------->
                                Yüklenecek dosyayı seçiniz:<br />
                                <asp:FileUpload ID="FileUpload1" runat="server" />
                                &nbsp;
                               <asp:Button ID="Button3" runat="server" Text="Resmi Güncelle" OnClick="Button1_Click" />
                                <br />
                                <br />
                                <img alt="" id="res" runat="server" src="" style="width: 130px; height: 130px" />
                                <asp:Label ID="lblMesaj" runat="server" ForeColor="Red"></asp:Label>
                                <!--------------------------------------------------->
                            </asp:View>
                            <asp:View ID="View2" runat="server">
                                <table class="table-fill">
                                    <tr style="color: white;">

                                        <td>
                                            <img alt="" id="Img1" runat="server" src="" style="width: 130px; height: 130px; position: relative;" />
                                        </td>
                                        <td>
                                            <div class="table-title">

                                                <h4 style="color: red; font-size: 30px; font-weight: 400; font-style: normal; font-family: Roboto, helvetica, arial, sans-serif; text-shadow: -1px -1px 1px rgba(0, 0, 0, 0.1); text-transform: uppercase; text-align: center;">Profilim</h4>
                                            </div>
                                            <table class="table-fill">
                                                <tbody class="table-hover">
                                                    <tr>
                                                        <td class="text-left">
                                                            <asp:Label ID="lbltuyeadi" runat="server" Text="Kullanıcı Adı :"></asp:Label></td>
                                                        <td class="text-left">
                                                            <asp:Label ID="lblkadi" runat="server"></asp:Label></td>
                                                    </tr>
                                                    <tr>
                                                        <td class="text-left">
                                                            <asp:Label ID="lbltsifre" runat="server" Text="İsim :"></asp:Label></td>
                                                        <td class="text-left">
                                                            <asp:Label ID="lblisim" runat="server"></asp:Label></td>
                                                    </tr>
                                                    <tr>
                                                        <td class="text-left">
                                                            <asp:Label ID="lbltad" runat="server" Text="Soyisim :"></asp:Label></td>
                                                        <td class="text-left">
                                                            <asp:Label ID="lblsoyad" runat="server"></asp:Label></td>
                                                    </tr>
                                                    <tr>
                                                        <td class="text-left">
                                                            <asp:Label ID="lbltEmail" runat="server" Text="Email : "></asp:Label></td>
                                                        <td class="text-left">
                                                            <asp:Label ID="lblEmail" runat="server"></asp:Label></td>
                                                    </tr>
                                                    <tr>
                                                        <td class="text-left">
                                                            <asp:Label ID="lblttel" runat="server" Text="Telefon :"></asp:Label></td>
                                                        <td class="text-left">
                                                            <asp:Label ID="lbltelefon" runat="server"></asp:Label></td>
                                                    </tr>
                                                </tbody>
                                            </table>

                                        </td>
                                    </tr>
                                </table>

                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <!---------------------------------------------------------------------------->

                                <!---------------------------------------------------------------------------->
                            </asp:View>
                            <asp:View ID="View3" runat="server">

                                <div class="table-title">
                                    <h4 style="color: red; font-size: 30px; font-weight: 400; font-style: normal; font-family: Roboto, helvetica, arial, sans-serif; text-shadow: -1px -1px 1px rgba(0, 0, 0, 0.1); text-transform: uppercase; text-align: center;">Profil Güncelle</h4>
                                </div>

                                <table class="table-fill">

                                    <tbody class="table-hover">
                                        <tr>
                                            <td class="text-left">
                                                <asp:Label ID="LABEL" runat="server" Text="Kullanıcı Adı :"></asp:Label>
                                            </td>
                                            <td class="text-left">
                                                <asp:TextBox ID="Txtkadi" runat="server"></asp:TextBox>
                                            </td>
                                        </tr>

                                        <tr>
                                            <td class="text-left">
                                                <asp:Label ID="Label1" runat="server" Text="Şifre :"></asp:Label>
                                            </td>
                                            <td class="text-left">
                                                <asp:TextBox ID="TxtSifre" runat="server"></asp:TextBox>
                                            </td>
                                        </tr>

                                        <tr>
                                            <td class="text-left">
                                                <asp:Label ID="Label2" runat="server" Text="İsim :"></asp:Label>
                                            </td>
                                            <td class="text-left">
                                                <asp:TextBox ID="TxtAd" runat="server"></asp:TextBox>
                                            </td>
                                        </tr>

                                        <tr>
                                            <td class="text-left">
                                                <asp:Label ID="Label3" runat="server" Text="Soyisim :"></asp:Label>
                                            </td>
                                            <td class="text-left">
                                                <asp:TextBox ID="TxtSoyad" runat="server"></asp:TextBox>
                                            </td>
                                        </tr>

                                        <tr>
                                            <td class="text-left">
                                                <asp:Label ID="Label4" runat="server" Text="Email :"></asp:Label>
                                            </td>
                                            <td class="text-left">
                                                <asp:TextBox ID="TxtEmail" runat="server"></asp:TextBox>
                                            </td>
                                        </tr>

                                        <tr>
                                            <td class="text-left">
                                                <asp:Label ID="Label5" runat="server" Text="Telefon :"></asp:Label>
                                            </td>
                                            <td class="text-left">
                                                <asp:TextBox ID="TxtTel" runat="server"></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="text-left">
                                                <asp:Button ID="Button5" runat="server" Text="Bilgilerimi Güncelle" OnClick="Button5_Click" />
                                            </td>
                                            <td class="text-left"></td>
                                        </tr>
                                    </tbody>
                                </table>

                            </asp:View>

                        </asp:MultiView>
                    </form>
                </div>
            </div>
            <hr />
        </div>
    </div>
</asp:Content>
