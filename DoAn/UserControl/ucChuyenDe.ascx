<%@ Control Language="C#" AutoEventWireup="true" CodeFile="ucChuyenDe.ascx.cs" Inherits="UserControl_ucCarousel" %>
<div class="col mt-5" data-aos="fade-left">
    <div class="card h-100">
        <div class="card-header">
            Chuyên Đề
        </div>
        <div class="card-body">
            <ul class="sub-list text-left">
                <asp:Repeater ID="Repeater_Main" runat="server">
                    <ItemTemplate>
                        <li>
                            <a href='<%# Eval("ID","/ChiTietPDF.aspx?ID={0}") %>'>
                                <%# Eval("Title") %>
                            </a>
                        </li>
                    </ItemTemplate>
                </asp:Repeater>
            </ul>
        </div>
    </div>
</div>
