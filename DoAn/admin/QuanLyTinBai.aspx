<%@ Page Title="" Language="VB" MasterPageFile="~/admin/MasterPageAdmin.master" AutoEventWireup="false" CodeFile="QuanLyTinBai.aspx.vb" Inherits="admin_QuanLyTinBai" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <title>Quản Lý Tin</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content" runat="Server">
    <nav>
        <ol class="breadcrumb">
            <li class="breadcrumb-item"><a href="Default.aspx">Trang chủ</a></li>
            <li class="breadcrumb-item active"><a href="#">Quản lý tin tức</a></li>
        </ol>
    </nav>
    <section id="home-shortcut">
        <div class="row">
            <div class="col-6 col col-md-3 my-3">
                <a href="QuanLyTin.aspx">
                    <div class="card h-100 p-3 text-center">
                        <span class="fa fa-th-large fa-5x"></span>
                        <div>Danh Mục Tin tức</div>
                    </div>
                </a>
            </div>
            <div class="col-6 col col-md-3 my-3">
                <a href="TinBai.aspx">
                    <div class="card h-100 p-3 text-center">
                        <span class="fa fa-plus fa-5x"></span>
                        <div>Đăng tin mới</div>
                    </div>
                </a>
            </div>
        </div>
    </section>
</asp:Content>

