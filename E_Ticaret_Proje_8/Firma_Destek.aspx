<%@ Page Title="" Language="C#" MasterPageFile="~/Firma.master" AutoEventWireup="true" CodeFile="Firma_Destek.aspx.cs" Inherits="Firma_Destek" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <link href="css/tablo.css" rel="stylesheet" />
    <div id="page-wrapper" style="background-color:white">
        <div id="page-inner">
            <div class="row">
                <div class="col-md-12">
                   
                     <form runat="server">
                <div class="table-title">
                            <h4 style="color: red; font-size: 30px; font-weight: 400; font-style: normal; font-family: Roboto, helvetica, arial, sans-serif; text-shadow: -1px -1px 1px rgba(0, 0, 0, 0.1); text-transform: uppercase; text-align: center;">Destek Paneli</h4>
                        </div>
                        <table class="table-fill">                    
                            <tbody class="table-hover">
                                <tr>
                                    <td class="text-left">Konu</td>
                                    <td class="text-left">
                                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="text-left">Mesaj</td>
                                    <td class="text-left">
                                        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                                    </td>
                                </tr
                                <tr>
                                    <td class="text-left">
                                        <asp:Button ID="MesajGonder" runat="server" Text="Mesaj Gönder" OnClick="MesajGonder_Click" BackColor="#C90000" BorderColor="#C90000" ForeColor="White"  />
                                    </td>
                                    <td class="text-left"></td>
                                </tr>
                            </tbody>
                        </table>


                   
     </form>
                </div>
            </div>
            <!-- /. ROW  -->
            <hr />

        </div>
        <!-- /. PAGE INNER  -->
    </div>
    <!-- /. PAGE WRAPPER  -->

    <!-- /. WRAPPER  -->
    <!-- SCRIPTS -AT THE BOTOM TO REDUCE THE LOAD TIME-->
</asp:Content>

