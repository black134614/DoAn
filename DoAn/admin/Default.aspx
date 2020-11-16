<%@ Page Title="" Language="C#" MasterPageFile="~/admin/MasterPageAdmin.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="admin_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <title>Quỹ Phát Triển Khoa Học Công Nghệ BD - trang chu</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content" runat="Server">
    <nav>
        <ol class="breadcrumb">
            <li class="breadcrumb-item active"><a href="#">Trang chủ</a></li>
        </ol>
    </nav>
    <section id="home-shortcut">
        <div class="row">
            <div class="col-6 col col-md-3 my-3">
                <a href="QuanLyTinBai.aspx">
                    <div class="card h-100">
                        <img src="images/icons/article-icon.png" class="card-img-top" />
                        <div class="card-body">
                            <h5 class="card-title text-center">Quản Lý Tin</h5>
                        </div>
                    </div>
                </a>
            </div>
            <div class="col-6 col col-md-3 my-3">
                <a href="QuanLyGiaoDien.aspx">
                    <div class="card h-100">
                        <img src="images/icons/picture-icon.png" class="card-img-top" />
                        <div class="card-body">
                            <h5 class="card-title text-center">Menu</h5>
                        </div>
                    </div>
                </a>
            </div>
            <div class="col-6 col col-md-3 my-3">
                <a href="QuanLyVanBanPhapLuat.aspx">
                    <div class="card h-100">
                        <img src="images/icons/Docs.png" class="card-img-top" />
                        <div class="card-body">
                            <h5 class="card-title text-center">Văn Bản Pháp Luật</h5>
                        </div>
                    </div>
                </a>
            </div>
            <div class="col-6 col col-md-3 my-3">
                <a href="HeThong.aspx">
                    <div class="card h-100">
                        <img src="images/icons/Settings.png" class="card-img-top" />
                        <div class="card-body">
                            <h5 class="card-title text-center">Hệ Thống</h5>
                        </div>
                    </div>
                </a>
            </div>
        </div>
    </section>
</asp:Content>

