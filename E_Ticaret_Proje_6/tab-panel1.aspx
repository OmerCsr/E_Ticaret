﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="tab-panel1.aspx.cs" Inherits="tab_panel1" %>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <!-- /. NAV SIDE  -->
   
    <div id="page-wrapper" style="background-color:white">
        <div id="page-inner">
            <div class="row">
                <div class="col-md-12">
                    <form runat="server">
                        <asp:GridView ID="GridView1" Width="100%" runat="server" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Vertical">
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
                                <asp:TemplateField>
                                    <ItemStyle Width="80px" Wrap="false" />
                                    <ItemTemplate>
                                        <asp:Button Text="Oku"  ID="btnOku" runat="server" BackColor="#C90000" BorderColor="#C90000" ForeColor="White"  />
                                        <asp:Button Text="Sil"  runat="server" ID="btnSil" BackColor="#C90000" BorderColor="#C90000" ForeColor="White"  />

                                    </ItemTemplate>
                                </asp:TemplateField>
                            </Columns>

                        </asp:GridView>
                    </form>
                </div>
            </div>

            <hr />

        </div>

    </div>

</asp:Content>

