<%@ Page Title="" Language="C#" MasterPageFile="~/admin/MasterPageAdmin.master" AutoEventWireup="true" CodeFile="HeThong.aspx.cs" Inherits="admin_HeThong" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <title>Hệ Thống</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content" runat="Server">
    <nav>
        <ol class="breadcrumb">
            <li class="breadcrumb-item"><a href="Default.aspx">Trang chủ</a></li>
            <li class="breadcrumb-item active"><a href="#">Hệ Thống</a></li>
        </ol>
    </nav>
    <section id="home-shortcut">
        <div class="row">
            <div class="col-6 col col-md-3 my-3">
                <a href="DoiMatKhau.aspx">
                    <div class="card h-100 p-3 text-center">
                        <span class="fa fa-edit fa-5x"></span>
                        <div>Đổi mật khẩu</div>
                    </div>
                </a>
            </div>
            <div class="col-6 col col-md-3 my-3">
                <asp:LinkButton ID="btn_LogOut" OnClick="btn_LogOut_Click" OnClientClick="return confirm('Bạn có muốn đăng xuất')" runat="server">
                    <div class="card h-100 p-3 text-center">
                        <span class="fa fa-sign-out fa-5x"></span>
                        <div>Đăng Xuất</div>
                    </div>
                </asp:LinkButton>
            </div>
        </div>
    </section>
</asp:Content>

