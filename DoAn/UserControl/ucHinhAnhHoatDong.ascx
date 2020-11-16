<%@ Control Language="C#" AutoEventWireup="true" CodeFile="ucHinhAnhHoatDong.ascx.cs" Inherits="UserControl_ucCarousel" %>
<div class="col mt-5 card-img" data-aos="fade-left">
    <asp:Repeater ID="Repeater_Preview" runat="server">
        <ItemTemplate>
            <div class="card">
                <a data-fancybox="preview-img" href='<%# Eval("Link") %>'
                    data-caption='<%# Eval("Title") %>'>
                    <img class="card-img-top img-fluid" style="height: 200px" src='<%# Eval("Link") %>' />
                </a>
                <div class="card-body">
                    <p class="card-text"><%# Eval("Description") %></p>
                </div>
            </div>
        </ItemTemplate>
    </asp:Repeater>
    <div class="d-none hidden-card">
        <asp:Repeater ID="Repeater_Main" runat="server">
            <ItemTemplate>
                <div class="card">
                    <a data-fancybox="preview-img" href='<%# Eval("Link") %>'
                        data-caption='<%# Eval("Description") %>'
                        data-thumbs='<%# Eval("Link") %>'></a>
                </div>
            </ItemTemplate>
        </asp:Repeater>
    </div>
</div>
