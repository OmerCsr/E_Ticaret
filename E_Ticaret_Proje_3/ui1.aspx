<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ui1.aspx.cs" Inherits="ui1" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <link href="css/tablo.css" rel="stylesheet" />
    <div id="page-wrapper">
        <div id="page-inner">
            <div class="row">
                <div class="col-md-12">
                    <form runat="server">
                        <!------------------------------------------------------------------------->
                        <div class="table-title">
                            <h4 style="color: red; font-size: 30px; font-weight: 400; font-style: normal; font-family: Roboto, helvetica, arial, sans-serif; text-shadow: -1px -1px 1px rgba(0, 0, 0, 0.1); text-transform: uppercase; text-align: center;">İlan Ver</h4>
                        </div>
                        <table class="table-fill">                    
                            <tbody class="table-hover">
                                <tr>
                                    <td class="text-left">Nereden</td>
                                    <td class="text-left">
                                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="text-left">Nereye</td>
                                    <td class="text-left">
                                        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="text-left">Taşınılan Kat</td>
                                    <td class="text-left">
                                        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="text-left">Taşınacak Kat</td>
                                    <td class="text-left">
                                        <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="text-left">Taşınacak Evin Oda Sayısı </td>
                                    <td class="text-left">
                                        <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="text-left">Bitiş Tarihi</td>
                                    <td class="text-left">
                                        <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                                    </td>
                                    <tr>
                                        <td class="text-left">Bulunduğu Evde Asansör Var Mı?</td>
                                        <td class="text-left">
                                            <asp:CheckBox ID="CheckBox1" runat="server" />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="text-left">Gideceği Evde Asansör Var Mı?</td>
                                        <td class="text-left">
                                            <asp:CheckBox ID="CheckBox2" runat="server" />
                                        </td>
                                    </tr>
                                </tr>
                                <tr>
                                    <td class="text-left">
                                        <asp:Button ID="ilanVer" runat="server" Text="İlan Ver" OnClick="ilanVer_Click" BackColor="#C90000" BorderColor="#C90000" ForeColor="White"  />
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

