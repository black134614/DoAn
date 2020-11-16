<%@ Page Title="" Language="C#" MasterPageFile="~/admin/MasterPageAdmin.master" AutoEventWireup="true" CodeFile="DanhMucVanBanPhapLuat.aspx.cs" Inherits="admin_VanBanPhapLuat" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <title>Văn Bản Pháp Luật</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content" runat="Server">
    <nav>
        <ol class="breadcrumb">
            <li class="breadcrumb-item"><a href="index.html">Trang chủ</a></li>
            <li class="breadcrumb-item"><a href="ArticleList.aspx">Danh sách tin tức</a></li>
            <li class="breadcrumb-item active"><a href="ArticleEdit.aspx">Đăng/cập nhật tin tức</a></li>
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
                <input type="text" class="form-control" placeholder="Từ khóa tìm kiếm  ...">
            </div>
        </div>
        <table class="table table-hover w-100 text-center" style="font-size: 14px">
            <thead>
                <tr>
                    <th scope="col">#</th>
                    <th scope="col" class="table-active text-left">Số hiệu</th>
                    <th scope="col">Ngày ban hành</th>
                    <th scope="col" class="table-active">Ngày hiệu lực</th>
                    <th scope="col">Mô tả</th>
                    <th scope="col" class="table-active">Xóa</th>
                    <th scope="col">Chi Tiết</th>
                </tr>
            </thead>
            <tbody>
                <asp:Repeater ID="Repeater_Main" runat="server">
                    <ItemTemplate>
                        <tr>
                            <th scope="row"><%# Container.ItemIndex + 1 %></th>
                            <td class="table-active text-left"><%# Eval("SoHieu") %></td>
                            <td><%# Eval("NgayBanHanh") %></td>
                            <td class="table-active"><%# Eval("NgayHieuLuc") %></td>
                            <td>
                                <%# Eval("MoTa") %>
                            </td>
                            <td class="table-active">
                                <asp:LinkButton class="btn bg-transparent text-danger"
                                    ID="btn_delete" runat="server" CommandArgument=<%# Eval("VanBanID") %>
                                    OnClick="btn_delete_Click">
                                    <span class="fa fa-trash-o"></span>
                                </asp:LinkButton>
                            </td>
                            <td>
                                <a href='<%# Eval("VanBanID","/admin/VanBanPhapLuatEdit.aspx?ID={0}") %>' class="btn bg-transparent text-primary">
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
