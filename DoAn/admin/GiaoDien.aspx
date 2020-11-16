<%@ Page Title="" Language="C#" MasterPageFile="~/admin/MasterPageAdmin.master" AutoEventWireup="true" CodeFile="GiaoDien.aspx.cs" Inherits="admin_Banner" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <title>Quản Lý Giao Diện</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content" runat="Server">
    <nav>
        <ol class="breadcrumb">
            <li class="breadcrumb-item"><a href="index.html">Trang chủ</a></li>
            <li class="breadcrumb-item active"><a href="ArticleEdit.aspx">Quản Lý Giao Diện</a></li>
        </ol>
    </nav>
    <section id="home-shortcut">
        <div class="row">
            <div class="col-6 col col-md-3 my-3">
                <a href="Banner.aspx">
                    <div class="card h-100 p-3 text-center">
                        <span class="fa fa-list-alt fa-5x"></span>
                        <div>Banner Chính</div>
                    </div>
                </a>
            </div>
            <div class="col-6 col col-md-3 my-3">
                <a href="#">
                    <div class="card h-100 p-3 text-center">
                        <span class="fa fa-picture-o fa-5x"></span>
                        <div>Hình ảnh hoạt động</div>
                    </div>
                </a>
            </div>
            <div class="col-6 col col-md-3 my-3">
                <a href="#">
                    <div class="card h-100 p-3 text-center">
                        <span class="fa fa-video-camera fa-5x"></span>
                        <div>Video</div>
                    </div>
                </a>
            </div>
            <div class="col-6 col col-md-3 my-3">
                <a href="#">
                    <div class="card h-100 p-3 text-center">
                        <span class="fa fa-info-circle fa-5x"></span>
                        <div>Thông tin website</div>
                    </div>
                </a>
            </div>
        </div>
    </section>
</asp:Content>

