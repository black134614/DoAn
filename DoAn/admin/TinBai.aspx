<%@ Page Title="" Language="C#" MasterPageFile="~/admin/MasterPageAdmin.master" AutoEventWireup="true" CodeFile="TinBai.aspx.cs" Inherits="admin_TinBai" ValidateRequest="false" %>

<%@ Import Namespace="CodeUtility" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <title>Đăng / Cập nhập tin tức</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content" runat="Server">
    <nav>
        <ol class="breadcrumb pull-left">
            <li class="breadcrumb-item"><a href="/admin/default.aspx">Trang chủ</a></li>
            <li class="breadcrumb-item"><a href="/admin/QuanLyTinBai.aspx">Quản lý tin tức</a></li>
            <li class="breadcrumb-item active"><a href="#">Đăng / cập nhật tin tức</a></li>
        </ol>
        <a class="btn btn-primary rounded-pill pull-right" href="/admin/TinBai.aspx" target="_blank">
            <i class="fa fa-plus"></i>
        </a>
    </nav>
    <section id="article-edit">
        <div class="row form-group bg-info">
            <h5 id="message" runat="server" class="text-warning text-center mx-auto my-2">Lưu ok!</h5>
        </div>
        <div class="row form-group">
            <label class="col-2 col-form-label">
                Tiêu đề
            </label>
            <div class="col-10">
                <input id="inputName" runat="server" class="form-control" type="text" required />
            </div>
        </div>
        <div class="row form-group">
            <label class="col-2 col-form-label">
                Mô tả
            </label>
            <div class="col-10">
                <textarea class="form-control" id="textDescription" runat="server" rows="3"></textarea>
            </div>
        </div>
        <div class="row form-group">
            <label class="col-2 col-form-label invisible">
                Tin Nổi Bật
            </label>
            <div class="col-4">
                <div class="form-check">
                    <input class="form-check-input" type="checkbox" id="check_TinNoiBat" runat="server">
                    <label class="form-check-label" for="check_TinNoiBat">
                        Tin Nổi Bật
                    </label>
                </div>
            </div>
            <label class="col-2 col-form-label invisible">
                Duyệt bài viết
            </label>
            <div class="col-4">
                <div class="form-check">
                    <input class="form-check-input" type="checkbox" id="checkDuyet" runat="server">
                    <label class="form-check-label" for="checkDuyet">
                        Admin duyệt bài viết
                    </label>
                </div>
            </div>
        </div>
        <div class="row form-group">
            <label class="col-3 col-form-label">
                Thuộc danh mục
            </label>
            <div class="form-group col-9">
                <select name="selectMenu" class="form-control">
                    <asp:Repeater ID="Repeater_Main" runat="server">
                        <ItemTemplate>
                            <option value='<%# Eval("ID") %>' <%# Eval("ID").ToInt() == Request.QueryString["mID"].ToInt()? "selected" : "" %>><%# Eval("Name") %></option>
                        </ItemTemplate>
                    </asp:Repeater>
                </select>
            </div>
        </div>
        <div class="row form-group">
            <label class="col-2 col-form-label">
                Hình ảnh
            </label>
            <div class="col-10">
                <input type="file" id="myFile" accept="image/x-png,image/gif,image/jpeg" required>

                <button type="button" class="btn btn-sm btn-warning float-right" onclick="showLink()">Chọn</button>
            </div>
            <div class="col-2"></div>
            <input class="col-10 form-control text-left" id="imageLink" runat="server" readonly />

        </div>
        <div class="row form-group">
            <label class="col-2 col-form-label">
                Nội dung
            </label>
            <div class="col-10">
                <textarea class="editor editor-save" id="textDetail" runat="server" style="height: 400px"></textarea>
            </div>
        </div>
        <div class="row form-group mr-1">
            <asp:LinkButton Text="Lưu" OnClick="btnSave_Click" OnClientClick="Bạn có muốn lưu?"
                ID="btnSave" class="btn btn-primary ml-auto" runat="server">
                <span class="fa fa-save">

                </span>
            </asp:LinkButton>
        </div>
    </section>
</asp:Content>

