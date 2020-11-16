<%@ Control Language="C#" AutoEventWireup="true" CodeFile="ucMainMenu.ascx.cs" Inherits="UserControl_ucMainMenu" %>
<ul class="navbar-nav mr-auto">
    <li class="nav-item active">
        <a class="nav-link" href="../Default.aspx">
            <span class="fa fa-home"></span>
        </a>
    </li>
    <asp:Repeater ID="Repeater_Main" runat="server">
        <ItemTemplate>
            <li class="nav-item dropdown">
                <a class="nav-link" href='<%# Eval("ID","/DanhSach.aspx?mID={0}") %>'>
                    <%# Eval("Title") %>
                </a>
            </li>
        </ItemTemplate>
    </asp:Repeater>
    <li class="nav-item dropdown">
        <a class="nav-link" href="#">Liên Hệ
        </a>
    </li>
</ul>
