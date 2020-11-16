<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<%@ Register Src="~/UserControl/ucCarousel.ascx" TagPrefix="uc1" TagName="ucCarousel" %>
<%@ Register Src="~/UserControl/ucVanBan.ascx" TagPrefix="uc1" TagName="ucVanBan" %>



<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <title>Quỹ Phát Triển Khoa Học - Kỹ Thuật Bình Dương - Trang chủ</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content" runat="Server">
    <uc1:ucCarousel runat="server" ID="ucCarousel" />
    <section class="content row">
        <asp:Repeater ID="Repeater_Main" runat="server">
            <ItemTemplate>
                <div class="my-3 col-xl-6">
                    <div class="page-item page-item-style1" data-aos="fade-up">
                        <a href='<%# Eval("mID","DanhSach.aspx?mID={0}") %>'>
                            <h4 class="text-uppercase page-item-title"><%# Eval("Name") %></h4>
                        </a>
                        <a href='<%# Eval("mID","DanhSach.aspx?mID={0}") %>' class="btn btn-sm btn-danger btn-more">Xem thêm</a>
                        <asp:Repeater ID="Repeater_Content" runat="server" DataSource=<%# Eval("TinB") %>>
                            <ItemTemplate>
                                <div class="page-item-content row my-3">
                                    <a href='<%# String.Format("/ChiTiet.aspx?mID={0}&ID={1}",Eval("mID"),Eval("ID")) %>' class="item-img col-lg-4 col-sm-3 col">
                                        <img class="rounded img-fluid" src='<%# Eval("Images") %>' />
                                    </a>
                                    <div class="item-content col-lg-8 col-sm-9 col m-auto">
                                        <a href='<%# String.Format("/ChiTiet.aspx?mID={0}&ID={1}",Eval("mID"),Eval("ID")) %>'>
                                            <h6 class="item-title text-uppercase" data-toggle="tooltip" data-placement="top" title='<%# Eval("Title") %>'>
                                                <%# Eval("Title") %>
                                            </h6>
                                        </a>
                                        <span class="item-description">
                                            <%# Eval("Description") %>
                                        </span>
                                    </div>
                                </div>
                            </ItemTemplate>
                        </asp:Repeater>
                    </div>
                </div>
            </ItemTemplate>
        </asp:Repeater>
        <uc1:ucVanBan runat="server" ID="ucVanBan" />
    </section>
</asp:Content>

