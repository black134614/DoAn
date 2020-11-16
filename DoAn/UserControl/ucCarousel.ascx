<%@ Control Language="C#" AutoEventWireup="true" CodeFile="ucCarousel.ascx.cs" Inherits="UserControl_ucCarousel" %>
<div class="main-page-carousel owl-carousel owl-theme mb-3">
    <asp:Repeater runat="server" ID="Repeater_Main">
        <ItemTemplate>
            <div class="item">
                <a href='<%# String.Format("/ChiTiet.aspx?mID={0}&ID={1}",Eval("mID"),Eval("ID"))%>'>
                    <div class="item-img">
                        <img class="img-fluid" src='<%# Eval("Images") %>' />
                    </div>
                </a>
                <a href='<%# String.Format("/ChiTiet.aspx?mID={0}&ID={1}",Eval("mID"),Eval("ID"))%>'>
                    <h5 class="item-title text-uppercase text-center mt-1">
                        <%# Eval("Title") %>
                    </h5>
                </a>
            </div>
        </ItemTemplate>
    </asp:Repeater>
</div>
