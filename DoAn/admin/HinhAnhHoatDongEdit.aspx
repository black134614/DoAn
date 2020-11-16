<%@ Page Title="" Language="C#" MasterPageFile="~/admin/MasterPageAdmin.master" AutoEventWireup="true" CodeFile="HinhAnhHoatDongEdit.aspx.cs" Inherits="admin_HinhAnhHoatDong" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <title>Hình ảnh hoạt động</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content" runat="Server">
    <nav>
        <ol class="breadcrumb">
            <li class="breadcrumb-item"><a href="/admin/Default.aspx">Trang chủ</a></li>
             <li class="breadcrumb-item"><a href="QuanLyGiaoDien.aspx">Quản Lý Giao Diện</a></li>
            <li class="breadcrumb-item active"><a href="#">Thêm / Sửa Hình ảnh hoạt động</a></li>
        </ol>
    </nav>
    <section id="home-shortcut">
        <img class="row mx-0 mb-3 banner-img" src='' id="image" runat="server" />
        <asp:Repeater ID="Repeater_Main" runat="server">
            <ItemTemplate>
                <img class="row mx-0 mb-3 banner-img" src='<%# Eval("Name_Ext") %>' alt='<%# Eval("Name") %>' id="image" runat="server" />
            </ItemTemplate>
        </asp:Repeater>
        <div class="row form-group">
            <div class="col-12 mb-3">
                <input type="file" id="myFile" accept="image/x-png,image/gif,image/jpeg" required>

                <button type="button" class="btn btn-sm btn-warning float-right" onclick="showLink()">Chọn</button>
            </div>
            <input class="col-12 form-control text-left" id="imageLink" runat="server" readonly />
        </div>
        <div class="row form-group ml-0 mr-1">
            <div class="col-2">
                <input type="checkbox" id="checkbox_Show" runat="server" class="form-check-input" />
                <label class="form-check-label">Hiển Thị</label>
            </div>
            <asp:LinkButton Text="Lưu" OnClick="btnSave_Click" OnClientClick="Bạn có muốn lưu?"
                ID="btnSave" class="btn btn-primary ml-auto" runat="server">
                <span class="fa fa-save">
                </span>
            </asp:LinkButton>
        </div>
        <div id="message" runat="server" class="text-danger text-center mb-3 bg-warning">ok</div>
    </section>
</asp:Content>

