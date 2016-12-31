<%@ Page Title="" Language="C#" MasterPageFile="~/Firma.master" AutoEventWireup="true" CodeFile="Firma_Arac_Kayit.aspx.cs" Inherits="Firma_Arac_Kayit" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <link href="css/tablo.css" rel="stylesheet" />
    <div id="page-wrapper">
        <div id="page-inner">
            <div class="row">
                <div class="col-md-12">
                    <form runat="server">
                        <!------------------------------------------------------------------------->
                        <div class="table-title">
                            <h4 style="color: red; font-size: 30px; font-weight: 400; font-style: normal; font-family: Roboto, helvetica, arial, sans-serif; text-shadow: -1px -1px 1px rgba(0, 0, 0, 0.1); text-transform: uppercase; text-align: center;">Araç Kayıt</h4>
                        </div>
                        <table class="table-fill">                    
                            <tbody class="table-hover">
                                <tr>
                                    <td class="text-left">Plaka No</td>
                                    <td class="text-left">
                                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="text-left">Trafiğe Çıkış Tarihi</td>
                                    <td class="text-left">
                                        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="text-left">Marka</td>
                                    <td class="text-left">
                                        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="text-left">Model Yılı</td>
                                    <td class="text-left">
                                        <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="text-left">Cinsi</td>
                                    <td class="text-left">
                                        <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="text-left">Tipi</td>
                                    <td class="text-left">
                                        <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                                    </td>
                                </tr>
                                    <tr>
                                        <td class="text-left">Muayene Geçerlilik Süresi</td>
                                        <td class="text-left">
                                            <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="text-left">Azami Yüklü Ağırlığı</td>
                                        <td class="text-left">
                                            <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
                                        </td>
                                    </tr>
                                 <tr>
                                        <td class="text-left">Ticari Adı</td>
                                        <td class="text-left">
                                            <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
                                        </td>
                                    </tr>
                                <tr>
                                    <td class="text-left">
                                        <asp:Button ID="kayitEt" runat="server" Text="Kayıt Et" OnClick="kayitEt_Click" BackColor="#C90000" BorderColor="#C90000" ForeColor="White"  />
                                    </td>
                                    <td class="text-left"></td>
                                </tr>
                            </tbody>
                        </table>
                        <!------------------------------------------------------------------------->
                    </form>
                </div>
            </div>
            <hr />
        </div>
    </div>
</asp:Content>

