<%@ Page Title="" Language="C#" MasterPageFile="~/Firma.master" AutoEventWireup="true" CodeFile="Firma_Bilgiler.aspx.cs" Inherits="Firma_Bilgiler" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <link href="css/tablo.css" rel="stylesheet" />
    <div id="page-wrapper" style="background-color:white">
        <div id="page-inner">
            <div class="row">
                <div class="col-md-12">
                    <form runat="server">
                        <!------------------------------------------------------------------------->
                        <asp:Panel ID="Panel1" runat="server">
                             <div class="table-title">
                            <h4 style="color: red; font-size: 30px; font-weight: 400; font-style: normal; font-family: Roboto, helvetica, arial, sans-serif; text-shadow: -1px -1px 1px rgba(0, 0, 0, 0.1); text-transform: uppercase; text-align: center;">Firma Kayıt</h4>
                        </div>
                        <table class="table-fill">                    
                            <tbody class="table-hover">
                                <tr>
                                    <td class="text-left">Firma Adı</td>
                                    <td class="text-left">
                                        <asp:TextBox ID="TextBox1" runat="server" ></asp:TextBox>
                                                                           <br />
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Firma Adı Boş Bırakılmaz" ForeColor="#d24747"></asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="text-left">Firma Sahibinin Adı</td>
                                    <td class="text-left">
                                        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                                                                           <br />
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Firma Sahibinin Adı Boş Bırakılmaz" ForeColor="#d24747"></asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="text-left">Firma Sahibinin Soyadı</td>
                                    <td class="text-left">
                                        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                                                                           <br />
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" ErrorMessage="Firma Sahibinin Soyadı Boş Bırakılmaz" ForeColor="#d24747"></asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="text-left">Vergi Dairesi</td>
                                    <td class="text-left">
                                        <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                                                                           <br />
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox4" ErrorMessage="Vergi Dairesi Boş Bırakılamaz" ForeColor="#d24747"></asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="text-left">Vergi No</td>
                                    <td class="text-left">
                                        <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                                                                           <br />
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox5" ErrorMessage="Vergi No Boş Bırakılamaz" ForeColor="#d24747"></asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="text-left">Tam Adres</td>
                                    <td class="text-left">
                                        <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                                                                           <br />
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBox6" ErrorMessage="Tam Adres Boş Bırakılamaz" ForeColor="#d24747"></asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                    <tr>
                                        <td class="text-left">İl</td>
                                        <td class="text-left">
                                            <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
                                                                               <br />
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="TextBox7" ErrorMessage="İl Boş Bırakılmaz" ForeColor="#d24747"></asp:RequiredFieldValidator>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="text-left">İlçe</td>
                                        <td class="text-left">
                                            <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
                                                                               <br />
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="TextBox8" ErrorMessage="İlçe Boş Bırakılmaz" ForeColor="#d24747"></asp:RequiredFieldValidator>
                                        </td>
                                    </tr>
                                 <tr>
                                        <td class="text-left">Posta Kodu</td>
                                        <td class="text-left">
                                            <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
                                                                               <br />
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="TextBox9" ErrorMessage="Posta Kodu Boş Bırakılmaz" ForeColor="#d24747"></asp:RequiredFieldValidator>
                                        </td>
                                    </tr>
                                  <tr>
                                        <td class="text-left">Telefon</td>
                                        <td class="text-left">
                                            <asp:TextBox ID="TextBox10" runat="server"></asp:TextBox>
                                                                               <br />
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="TextBox10" ErrorMessage="Telefon Boş Bırakılmaz" ForeColor="#d24747"></asp:RequiredFieldValidator>
                                        </td>
                                    </tr>
                                  <tr>
                                        <td class="text-left">Fax</td>
                                        <td class="text-left">
                                            <asp:TextBox ID="TextBox11" runat="server"></asp:TextBox>
                                                                               <br />
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="TextBox11" ErrorMessage="Fax Boş Bırakılamaz" ForeColor="#d24747"></asp:RequiredFieldValidator>
                                        </td>
                                    </tr>
                                  <tr>
                                        <td class="text-left">Web Adresi</td>
                                        <td class="text-left">
                                            <asp:TextBox ID="TextBox12" runat="server"></asp:TextBox>
                                                                               <br />
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ControlToValidate="TextBox12" ErrorMessage="Web Adresi Boş Bırakılamaz" ForeColor="#d24747"></asp:RequiredFieldValidator>
                                        </td>
                                    </tr>
                                  <tr>
                                        <td class="text-left">Email</td>
                                        <td class="text-left">
                                            <asp:TextBox ID="TextBox13" runat="server"></asp:TextBox>
                                                                               <br />
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" ControlToValidate="TextBox13" ErrorMessage="Email Boş Bırakılamaz" ForeColor="#d24747"></asp:RequiredFieldValidator>
                                        </td>
                                    </tr>
                                  <tr>
                                        <td class="text-left">Arac Sayısı</td>
                                        <td class="text-left">
                                            <asp:TextBox ID="TextBox14" runat="server"></asp:TextBox>
                                                                               <br />
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" ControlToValidate="TextBox14" ErrorMessage="Arac Sayısı Bırakılamaz" ForeColor="#d24747"></asp:RequiredFieldValidator>
                                        </td>
                                    </tr>
                                <tr>
                                    <td class="text-left">
                                        <asp:Button ID="kayitEt" runat="server" Text="Kayıt Et" BackColor="#C90000" BorderColor="#C90000" ForeColor="White" OnClick="kayitEt_Click"  />
                                    </td>
                                    <td class="text-left"></td>
                                </tr>
                            </tbody>
                        </table>
                        </asp:Panel>                   
                        <!------------------------------------------------------------------------->
                    </form>
                </div>
            </div>
            <hr />
        </div>
    </div>
</asp:Content>

