<%@ Page Title="" Language="C#" MasterPageFile="~/Firma.master" AutoEventWireup="true" CodeFile="Firma_Arac_Kayit.aspx.cs" Inherits="Firma_Arac_Kayit" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <link href="css/tablo.css" rel="stylesheet" />
    <div id="page-wrapper" style="background-color:white">
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
                                                           <br />
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Plaka No Boş Bırakılmaz" ForeColor="#d24747"></asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="text-left">Trafiğe Çıkış Tarihi</td>
                                    <td class="text-left">
                                        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                                                           <br />
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Trafiğe çıkış tarihi boş bırakılmaz." ForeColor="#d24747"></asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="text-left">Marka</td>
                                    <td class="text-left">
                                        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                                                           <br />
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" ErrorMessage="Marka Kısmı Boş Bırakılmaz" ForeColor="#d24747"></asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="text-left">Model Yılı</td>
                                    <td class="text-left">
                                        <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                                                           <br />
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox4" ErrorMessage="MOdel Yılı Kısmı Boş Bırakılmaz" ForeColor="#d24747"></asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="text-left">Cinsi</td>
                                    <td class="text-left">
                                        <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                                                           <br />
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox5" ErrorMessage="Cinsi Kısmı Boş Bırakılmaz" ForeColor="#d24747"></asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="text-left">Tipi</td>
                                    <td class="text-left">
                                        <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                                                           <br />
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBox6" ErrorMessage="Tipi Kısmı Boş Bırakılmaz" ForeColor="#d24747"></asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                    <tr>
                                        <td class="text-left">Muayene Geçerlilik Süresi</td>
                                        <td class="text-left">
                                            <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
                                                               <br />
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="TextBox7" ErrorMessage="Muayene Geçerlilik Süresi Kısmı Boş Bırakılmaz" ForeColor="#d24747"></asp:RequiredFieldValidator>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="text-left">Azami Yüklü Ağırlığı</td>
                                        <td class="text-left">
                                            <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
                                                               <br />
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="TextBox8" ErrorMessage="Azami Yüklü Ağırlığı Kısmı Boş Bırakılmaz" ForeColor="#d24747"></asp:RequiredFieldValidator>
                                        </td>
                                    </tr>
                                 <tr>
                                        <td class="text-left">Ticari Adı</td>
                                        <td class="text-left">
                                            <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
                                                               <br />
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="TextBox9" ErrorMessage="Ticari Adı Kısmı Boş Bırakılmaz" ForeColor="#d24747"></asp:RequiredFieldValidator>
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

