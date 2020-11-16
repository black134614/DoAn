using CodeUtility;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_MasterPageAdmin : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Session["Name"] != null)
            {
                userName.InnerHtml = Session["UserName"].ToString();
                imgUser.Attributes["src"] = Session["Image"].ToString();
                typeUser.InnerHtml = "user";
                if (Session["ID"].ToInt() == 1 || Session["Name"].ToString().ToLower() == "admin")
                {
                    typeUser.InnerHtml = "admin";
                }
            }
            else
            {
                Response.Redirect("~/admin/DangNhap.aspx");
            }
        }

    }

    protected void btn_Logout_Click(object sender, EventArgs e)
    {
        Session.Abandon();
        Response.Redirect("~/admin/DangNhap.aspx");
    }
}
