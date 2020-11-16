using CodeUtility;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_DangNhap : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            LoadData();
            message.Visible = false;
        }
    }
     public void LoadData()
    {
        if (Session["Name"] == null)
        {
            Response.Redirect("/admin/DangNhap.aspx");
        }
        input_UserName.Value = Session["Name"].ToString();

    }


    protected void btn_Confirm_Click(object sender, EventArgs e)
    {
        if (Session["ID"] == null)
        {
            Response.Redirect("/admin/DangNhap.aspx");
        }
        int ID = Session["ID"].ToInt();

        String userName = input_UserName.Value;
        String password = input_Password.Value;
        if (password != input_RePassword.Value)
        {
            input_Password.Focus();
            input_Password.Value = String.Empty;
            input_RePassword.Value = String.Empty;
            ms_Password.InnerHtml = "Bạn cần nhập 2 lần mật khẩu giống nhau";
            ms_Password.Attributes["class"] = "invalid-feedback d-block";
            return;
        }
        DBEntities db = new DBEntities();
        var query = (from d in db.NguoiDungs
                    where d.NguoiDungID == ID
                    select d).FirstOrDefault();
        query.Password = password;
        try
        {
            db.SaveChanges();
            message.Visible = true;
            message.InnerHtml = "Đổi mật khẩu thành công!";
            message.Attributes["class"] = "text-success bg-warning mt-3 p-2 rounded";
        }
        catch (Exception)
        {
            message.Visible = true;
            message.InnerHtml = "Đổi mật khẩu không thành công!";
            message.Attributes["class"] = "text-dannger bg-warning mt-3 p-2 rounded";
            return;
        }
    }
}