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
                            <h4 style="color: red; font-size: 30px; font-weight: 400; font-style: normal; font-family: Roboto, helvetica, arial, sans-serif; text-shadow: -1px -1px 1px rgba(0, 0, 0, 0.1); text-transform: uppercase; text-align: center; ">Araç Kayıt</h4>
                        </div>
                        <table class="table-fill">
                            <thead>
                                <tr>
                                    <th class="text-left">Month</th>
                                    <th class="text-left">Sales</th>
                                </tr>
                            </thead>
                            <tbody class="table-hover">
                                <tr>
                                    <td class="text-left">January</td>
                                    <td class="text-left">$ 50,000.00</td>
                                </tr>
                                <tr>
                                    <td class="text-left">February</td>
                                    <td class="text-left">$ 10,000.00</td>
                                </tr>
                                <tr>
                                    <td class="text-left">March</td>
                                    <td class="text-left">$ 85,000.00</td>
                                </tr>
                                <tr>
                                    <td class="text-left">April</td>
                                    <td class="text-left">$ 56,000.00</td>
                                </tr>
                                <tr>
                                    <td class="text-left">May</td>
                                    <td class="text-left">$ 98,000.00</td>
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

