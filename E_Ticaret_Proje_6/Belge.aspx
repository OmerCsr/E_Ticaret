<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Belge.aspx.cs" Inherits="Belge" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <div id="page-wrapper" style="background-color:white">
               <div id="page-inner">
            <div class="row">
                <div class="col-md-12">
                    <form runat="server">
    <iframe id="player_frame" style="border-bottom: 2px solid #eee; border-top: 0px;" src="Belge.pdf" 
   height="682" width="1000"></iframe>
                        </form>
                    </div>
                </div>
            </div>
          </div>
</asp:Content>

