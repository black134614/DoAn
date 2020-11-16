<%@ Control Language="C#" AutoEventWireup="true" CodeFile="ucThongBao.ascx.cs" Inherits="UserControl_ucCarousel" %>
<div class="col mt-lg-5" data-aos="fade-left">
    <asp:Repeater ID="Repeater_Main" runat="server">
        <ItemTemplate>
            <div class="card text-center h-100">
                <div class="card-header">
                    <%# Eval("Name") %>
                </div>
                <div class="card-body">
                    <h5 class="card-title"><%# Eval("Detail") %></h5>
                    <p class="card-text">
                        <%# Eval("Description") %>
                    </p>
                    <a href='<%# Eval("ID","../ThongBaoDetail.aspx?ID={0}") %>' class="btn btn-primary">Xem thêm</a>
                </div>
                <div class="card-footer text-muted">
                    <%# Eval("PostDate", "{0:dd/M/yyyy}") %>
                </div>
            </div>
        </ItemTemplate>
    </asp:Repeater>
</div>
