<%@ Page Title="" Language="C#" MasterPageFile="~/admin/MasterPageAdmin.master" AutoEventWireup="true" CodeFile="VanBanPhapLuatEdit.aspx.cs" Inherits="admin_VanBanPhapLuat" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <title>Thêm / Chỉnh Sửa Văn Bản Pháp Luật</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content" runat="Server">
    <nav>
        <ol class="breadcrumb">
            <li class="breadcrumb-item"><a href="Default.aspx">Trang chủ</a></li>
             <li class="breadcrumb-item"><a href="QuanLyVanBanPhapLuat.aspx">Quản lý văn bản pháp luật</a></li>
            <li class="breadcrumb-item active"><a href="#">Thêm / chỉnh sửa văn bản pháp luật</a></li>
        </ol>
    </nav>
    <section id="home-shortcut">
        <div id="message" runat="server" class="text-danger text-center mb-3 bg-warning">ok</div>
        <div class="row">
            <label class="col-md-3 col-6 mb-3 col-form-label">
                Số hiệu
            </label>
            <div class="col-md-9 col-6 mb-3">
                <input type="text" class="form-control" id="textbox_SoHieu" runat="server" />
            </div>
        </div>
        <div class="row mb-3">
            <label class="col-md-3 col-6 col-form-label">
                Cơ quan ban hành
            </label>
            <div class="col-md-9 col-6">
                <input type="text" id="textbox_CoQuanBH" runat="server" class="form-control" />
            </div>
        </div>
        <div class="row mb-3">
            <label class="col-md-3 col-6 mb-3 mb-3 col-form-label">
                Ngày ban hành
            </label>
            <div class="col-md-5 col-6 mb-3">
                <input type="text" class="form-control date" id="input_NgayBanHanh" maxlength="10" placeholder="dd/MM/yyyy" runat="server" />
            </div>
        </div>
        <div class="row mb-3">
            <label class="col-md-3 col-6 mb-3 mb-3 col-form-label">
                Ngày hiệu lực
            </label>
            <div class="col-md-5 col-6 mb-3">
                <input type="text" class="form-control date" id="input_NgayHieuLuc" maxlength="10" placeholder="dd/MM/yyyy" runat="server" />
            </div>
        </div>
        <div class="row form-group mb-3">
            <label class="col-2 col-form-label">
                Tài liệu
            </label>
            <div class="col-10">
                <input type="file" name="upload" id="myFile" accept="application/pdf,application/vnd.ms-excel" required />

                <button type="button" class="btn btn-sm btn-warning float-right" onclick="showLink()">Chọn</button>
            </div>
            <input class="col-12 form-control text-left" id="imageLink" runat="server" readonly />
        </div>
        <div class="row form-group mb-3">
            <label class="col-12 col-form-label">
                Tóm tắt / trích yếu nội dung
            </label>
            <div class="col-12">
                <textarea class="editor-save form-control" id="textarea_Detail" runat="server" style="height: 100px"></textarea>
            </div>
        </div>
        <div class="row" style="padding-right: 10px;">
            <asp:LinkButton class="btn btn-primary ml-auto" ID="btn_Save" OnClick="btn_Save_Click" runat="server">
                <span class="fa fa-save"></span>
            </asp:LinkButton>
        </div>
    </section>
</asp:Content>

