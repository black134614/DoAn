﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_HeThong :  System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btn_LogOut_Click(object sender, EventArgs e)
    {
        Session.Abandon();
        Response.Redirect("~/admin/DangNhap.aspx");
    }
}