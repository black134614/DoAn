<%@ Control Language="C#" AutoEventWireup="true" CodeFile="ucFooter.ascx.cs" Inherits="UserControl_ucCarousel" %>
<footer class="mt-4">
    <div class="sub-main-menu">
        <ul class="nav justify-content-center">
            <li class="nav-item">
                <a class="nav-link active" href="../Default.aspx">
                    <span class="fa fa-home"></span>
                    Trang chủ
                </a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="../Sitemap.aspx">
                    <span class="fa fa-sitemap"></span>
                    Size map
                </a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="../LienHe.aspx">
                    <span class="fa fa-phone"></span>
                    Liên hệ
                </a>
            </li>
            <li class="nav-item">
                <%-- code mã hóa chuẩn link --%>
                <a class="nav-link" href="mailto:QuyPTKHCNDB@DBmail.com?subject=V%E1%BA%A5n%20%C4%91%E1%BB%81%20c%E1%BB%A7a%20b%E1%BA%A1n&body=N%E1%BB%99i%20dung%20chi%20ti%E1%BA%BFt%20v%E1%BA%A5n%20%C4%91%E1%BB%81%20c%E1%BB%A7a%20b%E1%BA%A1n">
                    <span class="fa fa-comments-o"></span>
                    Góp ý
                </a>
            </li>
        </ul>
    </div>
    <hr />
    <asp:Repeater ID="Repeater_Main" runat="server">
        <ItemTemplate>
            <div class="site-info text-center">
                <h6 class="text-uppercase"><%# Eval("WebName") %></h6>
                <span><%# Eval("Address") %></span>
                <span>Điên thoại: <%# Eval("Phone") %> - Fax: <%# Eval("Fax") %></span>
                <span>Email: <%# Eval("Email") %>     Website: quykhcnbd.khcnbinhduong.gov.vn</span>
                <span><%# Eval("More") %></span>
            </div>
        </ItemTemplate>
    </asp:Repeater>
</footer>
