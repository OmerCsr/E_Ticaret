<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="form1.aspx.cs" Inherits="form1" %>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <!-- /. NAV SIDE  -->
    <div id="page-wrapper">
        <div id="page-inner">
            <div class="row">
                <div class="col-md-12">
                    <form runat="server">                 
                      <asp:Button ID="gelen" runat="server" Text="Gelen Mesajlar" OnClick="gelen_Click" />
                            <asp:Button ID="giden" runat="server" Text="Gönderilmiş Mesajlar" OnClick="giden_Click" />
                          <asp:Panel ID="Panel1" runat="server">
                                                       <div class="table-title">
                            <h4 style="color: red; font-size: 30px; font-weight: 400; font-style: normal; font-family: Roboto, helvetica, arial, sans-serif; text-shadow: -1px -1px 1px rgba(0, 0, 0, 0.1); text-transform: uppercase; text-align: center;">Gelen Mesajlar</h4>
                        </div>
                            <asp:DataList ID="DataList1" runat="server" Height="197px" Width="414px">
                                <ItemTemplate>
                     
                                    <table class="table-fill">                    
                                        <tbody class="table-hover">
                                        <tr>
                                            <td width="19%">
                                                <b>Konu</b>
                                            </td>
                                            <td >
                                                <b>:</b>
                                            </td>
                                            <td ><%#Eval("konu")%></td>
                                        </tr>

                                        <tr>
                                            <td width="19%">
                                                <b>Mesaj</b>
                                            </td>
                                            <td>
                                                <b>:</b>
                                            </td>
                                            <td><%#Eval("mesaj")%></td>
                                        </tr>

                                        <tr>
                                            <td width="19%">
                                                <b>Gönderen</b>
                                            </td>
                                            <td>
                                                <b>:</b>
                                            </td>
                                            <td><%#Eval("Gönderen")%> </td>
                                        </tr>

                                            <tr>
                                            <td width="19%">
                                                <b>Tarih</b>
                                            </td>
                                            <td>
                                                <b>:</b>
                                            </td>
                                            <td><%#Eval("tarih")%> </td>
                                        </tr>

                                            <tr>
                                            <td width="19%">
                                                <b>İlan Numarası</b>
                                            </td>
                                            <td>
                                                <b>:</b>
                                            </td>
                                            <td><%#Eval("İlan Numarası")%> </td>
                                        </tr>

                                          <tr>
                                            <td width="19%">
                                              <asp:Button ID="Cevap" runat="server" Text="Cevap Yaz" OnClick="Cevap_Click" />
                                            </td>
                                        </tr>
                                            </tbody>
                                    </table>
                                </ItemTemplate>

                            </asp:DataList>
                        </asp:Panel>
                        <asp:Panel ID="Panel2" runat="server">

                             <div class="table-title">
                            <h4 style="color: red; font-size: 30px; font-weight: 400; font-style: normal; font-family: Roboto, helvetica, arial, sans-serif; text-shadow: -1px -1px 1px rgba(0, 0, 0, 0.1); text-transform: uppercase; text-align: center;">Cevap Yaz</h4>
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
                                    <asp:TextBox ID="TextBox2" runat="server" TextMode="MultiLine"></asp:TextBox>
                                    </td>
                                </tr
                                    <asp:TextBox ID="TextBox3" runat="server" TextMode="MultiLine"></asp:TextBox>
                                     <asp:TextBox ID="TextBox4" runat="server" TextMode="MultiLine"></asp:TextBox>
                                <tr>
                                    <td class="text-left">
                                        <asp:Button ID="Mesaj" runat="server" Text="Mesaj Gönder" OnClick="Mesaj_Click" BackColor="#C90000" BorderColor="#C90000" ForeColor="White"  />
                                    </td>
                                    <td class="text-left"></td>
                                </tr>
                            </tbody>
                        </table>


                        </asp:Panel>

                        <asp:Panel ID="Panel3" runat="server">
                                                   <div class="table-title">
                            <h4 style="color: red; font-size: 30px; font-weight: 400; font-style: normal; font-family: Roboto, helvetica, arial, sans-serif; text-shadow: -1px -1px 1px rgba(0, 0, 0, 0.1); text-transform: uppercase; text-align: center;">Gönderilmiş Mesajlar</h4>
                        </div>
                                <asp:DataList ID="DataList2" runat="server" Height="197px" Width="414px">
                                <ItemTemplate>
                       
                                    <table class="table-fill">                    
                                        <tbody class="table-hover">
                                        <tr>
                                            <td width="19%">
                                                <b>Konu</b>
                                            </td>
                                            <td >
                                                <b>:</b>
                                            </td>
                                            <td ><%#Eval("konu")%></td>
                                        </tr>

                                        <tr>
                                            <td width="19%">
                                                <b>Mesaj</b>
                                            </td>
                                            <td>
                                                <b>:</b>
                                            </td>
                                            <td><%#Eval("mesaj")%></td>
                                        </tr>

                                        <tr>
                                            <td width="19%">
                                                <b>Mesajı Alan</b>
                                            </td>
                                            <td>
                                                <b>:</b>
                                            </td>
                                            <td><%#Eval("Alıcı")%> </td>
                                        </tr>

                                            <tr>
                                            <td width="19%">
                                                <b>Tarih</b>
                                            </td>
                                            <td>
                                                <b>:</b>
                                            </td>
                                            <td><%#Eval("tarih")%> </td>
                                        </tr>

                                            <tr>
                                            <td width="19%">
                                                <b>İlan Numarası</b>
                                            </td>
                                            <td>
                                                <b>:</b>
                                            </td>
                                            <td><%#Eval("İlan Numarası")%> </td>
                                        </tr>

                                   
                                            </tbody>
                                    </table>
                                </ItemTemplate>

                            </asp:DataList>


                        </asp:Panel>

                    </form>
                </div>
            </div>

            <hr />
        </div>
    </div>

</asp:Content>

