<%@ Page Title="" Language="C#" MasterPageFile="~/admin/MasterPageAdmin.master" AutoEventWireup="true" CodeFile="QuanLyTin.aspx.cs" Inherits="admin_QuanLyTin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <title>Quản Lý Tin Tức</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content" runat="Server">
    <nav>
        <ol class="breadcrumb">
            <li class="breadcrumb-item"><a href="/admin/Default.aspx">Trang chủ</a></li>
            <li class="breadcrumb-item"><a href="/admin/QuanLyTinBai.aspx">Quản lý tin tức</a></li>
            <li class="breadcrumb-item active"><a href="#">Danh sách tin tức</a></li>
        </ol>
    </nav>
    <section id="home-shortcut">
        <div class="row m-0">
            <div class="input-group mb-3">
                <div class="input-group-prepend">
                    <button class="btn btn-outline-secondary" type="button" id="button-addon1">
                        <span class="fa fa-search"></span>
                    </button>
                </div>
                <input type="text" class="form-control" placeholder="Từ khóa tìm kiếm bài viết ...">
            </div>
        </div>
        <div class="row mx-0 my-3">
            Hiện đang có tất cả <span class="text-primary mx-1" id="sumBaiViet" runat="server">3000 </span>bài viết
        </div>
        <table class="table table-hover w-100 text-center" style="font-size: 14px">
            <thead>
                <tr>
                    <th scope="col">#</th>
                    <th scope="col" class="table-active text-left">Tiêu Đề</th>
                    <th scope="col">Danh Mục</th>
                    <th scope="col" class="table-active">Người Đăng</th>
                    <th scope="col">Duyệt</th>
                    <th scope="col" class="table-active">Xóa</th>
                    <th scope="col">Chi Tiết</th>
                </tr>
            </thead>
            <tbody>
                <asp:Repeater ID="Repeater_Main" runat="server">
                    <ItemTemplate>
                        <tr>
                            <th scope="row"><%# Container.ItemIndex + 1 %></th>
                            <td class="table-active text-left"><%# Eval("Title") %></td>
                            <td><%# Eval("DanhMuc") %></td>
                            <td class="table-active"><%# Eval("NguoiDung") %></td>
                            <td>
                                <input type="checkbox" disabled value="" <%#( Convert.ToBoolean(Eval("Duyet")) ? "checked" : "") %> />
                            </td>
                            <td class="table-active">
                                <asp:LinkButton Text="Xóa" class="btn bg-transparent text-danger" ID="btnDelete" runat="server"
                                    OnClick="btnDelete_Click" CommandArgument='<%# Eval("ID") %>'
                                    OnClientClick="return confirm('Bạn có muốn xóa bài viết này?!')">
                                     <span class="fa fa-trash-o"></span>
                                </asp:LinkButton>
                            </td>
                            <td>
                                <a class="btn bg-transparent text-primary" href='<%# String.Format("/admin/TinBai.aspx?ID={0}&mID={1}",Eval("ID"), Eval("mID")) %>'>
                                    <span class="fa fa-folder-open-o"></span>
                                </a>
                            </td>
                        </tr>
                    </ItemTemplate>
                </asp:Repeater>
            </tbody>
        </table>
    </section>
</asp:Content>

