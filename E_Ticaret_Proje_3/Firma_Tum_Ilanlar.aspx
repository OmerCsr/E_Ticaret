<%@ Page Title="" Language="C#" MasterPageFile="~/Firma.master" AutoEventWireup="true" CodeFile="Firma_Tum_Ilanlar.aspx.cs" Inherits="Firma_Tum_Ilanlar" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <!-- /. NAV SIDE  -->
    <div id="page-wrapper">
        <div id="page-inner">
            <div class="row">
                <div class="col-md-12">
                    <form runat="server">
                        <asp:Panel ID="Panel2" runat="server">
                            <asp:GridView ID="GridView1" Width="100%" OnRowCommand="gvTest_RowCommand" runat="server" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Vertical" onrowcreated="GridView1_RowCreated" >
                                <AlternatingRowStyle BackColor="#DCDCDC" />
                                <EditRowStyle Wrap="True" />
                                <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                                <HeaderStyle BackColor="#B41818" Font-Bold="True" ForeColor="White" />
                                <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                                <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
                                <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                                <SortedAscendingHeaderStyle BackColor="#0000A9" />
                                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                                <SortedDescendingHeaderStyle BackColor="#000065" />

                                <Columns>
            

                 <asp:ButtonField ButtonType="Button" CommandName="mesaj" Text="Mesaj Gönder" />
                 <asp:ButtonField ButtonType="Button" CommandName="teklif" Text="Teklif Ver" />
            
                                    
                                </Columns>
                            </asp:GridView>
                        </asp:Panel>

                        <asp:Panel ID="Panel1" runat="server">  
                    
                <div class="table-title">
                            <h4 style="color: red; font-size: 30px; font-weight: 400; font-style: normal; font-family: Roboto, helvetica, arial, sans-serif; text-shadow: -1px -1px 1px rgba(0, 0, 0, 0.1); text-transform: uppercase; text-align: center;">Teklif Gönder</h4>
                        </div>
                        <table class="table-fill">                    
                            <tbody class="table-hover">
                                <tr>
                                    <td class="text-left">Fiyat</td>
                                    <td class="text-left">
                                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="text-left">Plaka</td>
                                    <td class="text-left">
                                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                                    </td>
                                </tr>
                                         <tr>
                                    <td class="text-left"></td>
                                    <td class="text-left">
                                    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                                    </td>
                                </tr>
                                     <tr>
                                    <td class="text-left"></td>
                                    <td class="text-left">
                                    <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                                    </td>
                                </tr>

                                <tr>
                                    <td class="text-left">
                                        <asp:Button ID="TeklifVer" runat="server" Text="Teklif Gönder" OnClick="TeklifVer_Click" BackColor="#C90000" BorderColor="#C90000" ForeColor="White"  />
                                    </td>
                                    <td class="text-left"></td>
                                </tr>
                            </tbody>
                        </table>


                   

                        </asp:Panel>

                    </form>
                </div>
            </div>

            <hr />

        </div>

    </div>

</asp:Content>
