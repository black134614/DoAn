<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="DanhSach.aspx.cs" Inherits="DanhSach" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <title>Danh sach</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content" runat="Server">
    <nav class="d-block">
        <ol class="breadcrumb">
            <li class="breadcrumb-item"><a href="Default.aspx">Trang chủ</a></li>
            <li class="breadcrumb-item active">Danh sách
            </li>
        </ol>
    </nav>
    <asp:Repeater ID="Repeater_Main" runat="server">
        <ItemTemplate>
            <div class="page-content-item row mb-2 align-items-center">
                <a href='<%# Eval("ID","ChiTiet.aspx?ID={0}") %>' class="col-xl-4 col-lg-3 col-md-5 col-4">
                    <img class="item-img rounded img-thumbnail" src='<%# Eval("Images") %>' />
                </a>
                <div class="item-content col-xl-8 col-lg-9 col-md-7 col-8">
                    <a href='<%# Eval("ID","ChiTiet.aspx?ID={0}") %>' data-toggle="tooltip"
                        data-placement="top" title='<%#Eval("Title") %>'>
                        <h5 class="item-content-title item-title text-uppercase">
                            <%#Eval("Title") %>
                        </h5>
                    </a>
                    <span class="item-content-description">
                        <%#Eval("Description") %>
                    </span>
                </div>
            </div>
        </ItemTemplate>
    </asp:Repeater>
    <hr />
    <hr />
</asp:Content>

