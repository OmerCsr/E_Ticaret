<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="chart1.aspx.cs" Inherits="chart1" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div id="page-wrapper">
        <div id="page-inner">
            <div class="row">
                <div class="col-md-12">
                    <form runat="server">
<!--**************************************************************************************-->
                        <asp:DropDownList ID="DropDownList1" runat="server"></asp:DropDownList>
<!--**************************************************************************************-->
                        <asp:Panel ID="Panel1" runat="server">
                            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                        </asp:Panel>

                    </form>
                </div>
            </div>
            <hr />
        </div>
    </div>
</asp:Content>
