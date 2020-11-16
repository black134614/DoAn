<%@ Control Language="C#" AutoEventWireup="true" CodeFile="ucBanner.ascx.cs" Inherits="UserControl_ucBanner" %>
<section class="banner text-center animate__animated animate__bounce">
    <asp:Repeater ID="Repeater_Main" runat="server">
        <ItemTemplate>
            <img class="img-fluid" src='<%# Eval("Link") %>' alt='<%# Eval("Name") %>' /></ItemTemplate>
    </asp:Repeater>
</section>
