<%@ Page Title="" Language="C#" MasterPageFile="~/admin/MasterPageAdmin.master" AutoEventWireup="true" CodeFile="DanhMuc.aspx.cs" Inherits="admin_DanhMuc" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <title>Quản lý Menu (Danh mục)</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content" runat="Server">
    <nav>
        <ol class="breadcrumb">
            <li class="breadcrumb-item"><a href="/admin/Default.aspx">Trang chủ</a></li>
            <li class="breadcrumb-item"><a href="QuanLyGiaoDien.aspx">Quản Lý Giao Diện</a></li>
            <li class="breadcrumb-item active"><a href="#">Quản lý Menu (Danh mục)</a></li>
        </ol>
        <button class="btn btn-primary ml-auto save-change d-none">
            <span class="fa fa-save"></span>
        </button>
    </nav>
    <section id="home-shortcut">
        <div class="new-category mb-3">
            <div class="fa fa-plus fa-2x text-uppercase mb-3">Danh Mục</div>
            <div>
                <div class="form-row align-items-center">
                    <div class="col-sm-7 my-1">
                        <div class="input-group">
                            <div class="input-group-prepend">
                                <div class="input-group-text">Tên Danh Mục</div>
                            </div>
                            <input type="text" class="form-control" id="inputTitle" runat="server" placeholder="...">
                        </div>
                    </div>
                    <div class="col-auto my-1 ml-auto">
                        <div class="form-check">
                            <input class="form-check-input" type="checkbox" id="checkboxShow" runat="server">
                            <label class="form-check-label" for="autoSizingCheck2">
                                Hiển Thị
                            </label>
                        </div>
                    </div>
                    <div class="col-auto my-1">
                        <asp:Button Text="Xóa" ID="btnDel" runat="server" OnClick="btnDel_Click" class="btn btn-danger"
                            OnClientClick="return confirm('Bạn có muốn xóa menu cùng tất cả bài viết liên quan?');" disabled></asp:Button>
                    </div>
                    <div class="col-auto my-1">
                        <asp:Button Text="Lưu" class="btn btn-primary" ID="btnSave" OnClick="btnSave_Click" runat="server"
                            OnClientClick="return confirm('Bạn có muốn lưu?');" />
                    </div>
                    <div class="col-auto my-1">
                        <a class="btn btn-primary" id="btnCancel" runat="server"
                            onclick="return confirm('Bạn có muốn hủy thao tác')" href="~/admin/DanhMuc.aspx">Hủy
                        </a>
                    </div>
                    <div id="message" runat="server" class="text-center text-info col-12 m-2 bg-warning">
                    </div>
                    <div id="moreInfo" runat="server" class="text-center text-info col-12 m-2 bg-warning text-danger d-none">
                    </div>
                </div>
            </div>
        </div>
        <table class="table table-striped text-center">
            <thead>
                <tr>
                    <th scope="col">STT</th>
                    <th scope="col" class="text-left">Tên Danh Mục</th>
                    <th scope="col">Hiển thị</th>
                    <th scope="col">Sửa</th>
                </tr>
            </thead>
            <tbody>
                <asp:Repeater ID="Repeater_Main" runat="server">
                    <ItemTemplate>
                        <tr>
                            <th scope="row"><%# Container.ItemIndex + 1 %></th>
                            <td class="text-left"><%# Eval("Title") %></td>
                            <td>
                                <div class="form-check">
                                    <input class="form-check-input" type="checkbox" id="showCategory" <%# Convert.ToBoolean(Eval("Show")) ? "checked" : "" %> disabled>
                                </div>
                            </td>
                            <td>
                                <a class="btn p-0 text-primary" href='<%# Eval("ID","DanhMuc.aspx?ID={0}") %>'>
                                    <span class="fa fa-edit"></span>
                                    <a></td>
                        </tr>
                    </ItemTemplate>
                </asp:Repeater>
            </tbody>
        </table>
    </section>
</asp:Content>
