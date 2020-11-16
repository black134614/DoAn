<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ChiTiet.aspx.cs" Inherits="ChiTiet" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <title>
        ChiTiet
    </title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content" runat="Server">
    <nav class="d-block">
        <ol class="breadcrumb">
            <li class="breadcrumb-item"><a href="Default.aspx">Trang chủ</a></li>
            <li class="breadcrumb-item">
                <a href="list.html">Danh Sách
                </a>
            </li>
            <li class="breadcrumb-item active">Chi Tiết
            </li>
        </ol>
    </nav>
    <asp:Repeater ID="Repeater_Main" runat="server">
        <ItemTemplate>
            <div class="page-content-detail">
                <div class="item-date d-block float-right">
                    <span class="fa fa-calendar"></span>
                    <span><%# Eval("NgayDang","{0:dd/MM/yyyy}") %></span>
                </div>
                <br class="clearfix" />
                <h5 class="text-uppercase text-center my-2 title"><%# Eval("Title") %>
                </h5>
                <div class="item-img my-2">
                    <img class="img-fluid" src='<%# Eval("Images") %>' />
                </div>
                <span class="description font-italic my-2"><%# Eval("Description") %>
                </span>
                <p class="content text-justify mt-2">
                    <%# Eval("Detail") %>
                </p>
            </div>
    <div class="share-page float-right">
        <span>Chia sẻ bài viết: </span>
        <a class="btn btn-primary"
            href="#">
            <span class="fa fa-facebook"></span>
        </a>
        <a class="btn btn-danger"
            href="#">
            <span class="fa fa-youtube"></span>
        </a>
        <a class="btn btn-info"
            href="#">
            <span class="fa fa-twitter"></span>
        </a>
        <a class="btn btn-success"
            href="#">
            <span class="fa fa-instagram"></span>
        </a>
    </div>

        </ItemTemplate>
    </asp:Repeater>
</asp:Content>

