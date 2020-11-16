<%@ Page Title="" Language="C#" MasterPageFile="~/admin/MasterPageAdmin.master" AutoEventWireup="true" CodeFile="VanBanPhapLuat.aspx.cs" Inherits="admin_VanBanPhapLuat" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <title>Văn Bản Pháp Luật</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content" runat="Server">
    <nav>
        <ol class="breadcrumb">
            <li class="breadcrumb-item"><a href="Default.aspx">Trang chủ</a></li>
            <li class="breadcrumb-item"><a href="QuanLyVanBanPhapLuat.aspx">Quản lý văn bản pháp luật</a></li>
            <li class="breadcrumb-item active"><a href="#">Danh mục văn bản pháp luật</a></li>
        </ol>
    </nav>
    <section id="home-shortcut">
        <div class="row">
            <div class="col-6 col col-md-3 my-3">
                <a href="DanhMucVanBanPhapLuat.aspx">
                    <div class="card h-100 p-3 text-center">
                        <span class="fa fa-plus-square fa-5x"></span>
                        <div>Danh Mục Văn bản pháp luật</div>
                    </div>
                </a>
            </div>
            <div class="col-6 col col-md-3 my-3">
                <a href="VanBanPhapLuatEdit.aspx">
                    <div class="card h-100 p-3 text-center">
                        <span class="fa fa-edit fa-5x"></span>
                        <div>Thêm văn bản</div>
                    </div>
                </a>
            </div>
        </div>
    </section>
</asp:Content>

