<%@ Control Language="C#" AutoEventWireup="true" CodeFile="ucVanBan.ascx.cs" Inherits="UserControl_ucVanBan" %>
<div class="my-3 col-12">
    <div class="max-item" data-aos="fade-up">
        <div class="item-title pb-5">
            <h4 class="text-uppercase text-center d-inline-block float-left">văn bản đã ban hành
            </h4>
            <a href="#"
                class="btn btn-warning float-right">Xem Thêm..
            </a>
        </div>
        <div class="clearfix"></div>
        <table class="table-responsive">
            <thead class="thead-dark">
                <tr>
                    <th scope="col" style="width: 160px;">Số hiệu</th>
                    <th scope="col" style="width: 160px;" class="text-center">Ngày ban hành</th>
                    <th scope="col" style="width: 200px;" class="text-center">Cơ quan ban hành</th>
                    <th scope="col">Trích yếu nội dung</th>
                </tr>
            </thead>
            <asp:Repeater ID="Repeater_Main" runat="server">
                <ItemTemplate>
                    <tbody>
                        <tr class='<%# ((Container.ItemIndex + 2)%2==0 ? "table-info" : "") %>'>
                            <th scope="row"><%# Eval("SH") %></th>
                            <td class="text-center"><%# Eval("Date","{0:dd/MM/yyyy}") %></td>
                            <td class="text-center"><%# Eval("CoQuanBH") %></td>
                            <td class="table-row " data-href='<%# Eval("link") %>'>
                                <span class="d-none d-xl-block"><%# Eval("MoTa") %></span>
                                <a href='<%# Eval("link") %>' class="btn btn-info d-xl-none d-block float-lg-right">Tải</a>
                            </td>
                        </tr>
                    </tbody>
                </ItemTemplate>
            </asp:Repeater>
        </table>
    </div>
</div>
