<%@ Control Language="C#" AutoEventWireup="true" CodeFile="ucTabThongTin.ascx.cs" Inherits="UserControl_ucCarousel" %>
<div class="col mt-lg-5" data-aos="fade-left">
    <div class="card h-100">
        <div class="card-header">
            <ul class="nav nav-tabs card-header-tabs" id="myTab" role="tablist">
                <asp:Repeater ID="Repeater_TabTitle" runat="server">
                    <ItemTemplate>
                        <li class="nav-item" role="presentation">
                            <a class='<%# (Container.ItemIndex == 0 ? "nav-link active" : "nav-link") %>'
                               data-toggle="tab" href='<%# Eval("ID") %>' role="tab">
                                <%# Eval("Name") %>
                            </a>
                        </li>
                    </ItemTemplate>
                </asp:Repeater>
            </ul>
        </div>
        <div class="card-body tab-content">
            <asp:Repeater ID="Repeater_TabContent" runat="server">
                <ItemTemplate>
                    <div class='<%# (Container.ItemIndex == 0 ? "tab-pane fade show active" : "tab-pane fade") %>' id='<%# Eval("ID") %>' role="tabpanel">
                        <%# Eval("Content") %>
                    </div>
                </ItemTemplate>
            </asp:Repeater>
        </div>
    </div>
</div>
