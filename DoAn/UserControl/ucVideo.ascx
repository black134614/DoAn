<%@ Control Language="C#" AutoEventWireup="true" CodeFile="ucVideo.ascx.cs" Inherits="UserControl_ucCarousel" %>
<div class="col mt-5 card-video owl-carousel owl-theme" data-aos="fade-left">
    <asp:Repeater ID="Repeater_Main" runat="server">
        <ItemTemplate>
            <div class="card">
                <a href='<%# Eval("Source","https://youtu.be/{0}") %>'>
                    <img class="card-img-top img-fluid" style="height: 200px" src='<%# Eval("Time") %>' />
                </a>
                <div class="card-body">
                    <p class="card-text"><%# Eval("Name") %></p>
                </div>
            </div>
        </ItemTemplate>
    </asp:Repeater>
</div>
