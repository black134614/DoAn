<%@ Page Title="" Language="C#" MasterPageFile="~/admin/MasterPageAdmin.master" AutoEventWireup="true" CodeFile="Banner.aspx.cs" Inherits="admin_Banner" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <title>Thay banner chính</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content" runat="Server">
    <nav>
        <ol class="breadcrumb">
            <li class="breadcrumb-item"><a href="Default.aspx">Trang chủ</a></li>
            <li class="breadcrumb-item"><a href="QuanLyGiaoDien.aspx">Quản Lý Giao Diện</a></li>
            <li class="breadcrumb-item active"><a href="#">Chỉnh sửa banner chính</a></li>
        </ol>
    </nav>
    <section id="home-shortcut">
        <asp:Repeater ID="Repeater_Main" runat="server">
            <ItemTemplate>
                <img class="row w-100 h-100 mx-0 mb-3 banner-img" src=<%# Eval("Link") %> alt=<%# Eval("Name") %> id="image" runat="server" /></ItemTemplate>
        </asp:Repeater>
        <div class="row form-group">
            <label class="col-2 col-form-label">
                Hình ảnh
            </label>
            <div class="col-10">
                <input type="file" id="myFile" accept="image/x-png,image/gif,image/jpeg" required>

                <button type="button" class="btn btn-sm btn-warning float-right" onclick="showLink()">Chọn</button>
            </div>
            <div class="col-2"></div>
            <input class="col-12 form-control text-left" id="imageLink" runat="server" readonly />
        </div>
        <div class="row form-group mr-1">
            <asp:LinkButton Text="Lưu" OnClick="btnSave_Click" OnClientClick="Bạn có muốn lưu?"
                ID="btnSave" class="btn btn-primary ml-auto" runat="server">
                <span class="fa fa-save">
                </span>
            </asp:LinkButton>
        </div>
         <div id="message" runat="server" class="text-danger text-center mb-3 bg-warning">ok</div>
    </section>
</asp:Content>

