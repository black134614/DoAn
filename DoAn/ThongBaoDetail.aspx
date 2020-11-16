<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ThongBaoDetail.aspx.cs" Inherits="ChiTiet" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <title>Chi tiet</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content" runat="Server">
    <asp:Repeater ID="Repeater_Main" runat="server">
        <ItemTemplate>
            <div class="mt-4">
                <%#Eval("Content") %>
            </div>
        </ItemTemplate>
    </asp:Repeater>
</asp:Content>

