<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Blank1.aspx.cs" Inherits="Blank1" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="page-wrapper" style="background-color: white">
        <div id="page-inner">
            <div class="row">
                <div class="col-md-12">
                    <form runat="server">
                        <!--**************************************************************************************-->
                        <asp:Panel ID="Panel1" runat="server">
                            <asp:GridView ID="GridView1" Width="100%" runat="server" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Vertical" OnRowCommand="gvTest_RowCommand" HorizontalAlign="Center">
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


                                    <asp:ButtonField ButtonType="Button" CommandName="bilgiler" Text="Firma ve Aracın Bilgileri" />


                                </Columns>
                            </asp:GridView>


                        </asp:Panel>
                        <asp:Panel ID="Panel2" runat="server">

                            <asp:GridView ID="GridView2" Width="100%" runat="server" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Vertical" OnRowCommand="gvTest_RowCommand">
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
                                        <ItemTemplate>
                                            <asp:CheckBox ID="CheckBox1" runat="server" />
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                </Columns>

                                <Columns>
                                    <asp:ButtonField ButtonType="Button" CommandName="yoksay" Text="Yoksay" />
                                    <asp:ButtonField ButtonType="Button" CommandName="kabul" Text="Kabul Et" />
                                </Columns>

                            </asp:GridView>


                        </asp:Panel>


                        <!--**************************************************************************************-->

                    </form>
                </div>
            </div>
            <hr />
        </div>
    </div>

</asp:Content>

