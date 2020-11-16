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

    }

    protected void btn_Login_Click(object sender, EventArgs e)
    {
        var userName = input_UserName.Value.Trim();
        var password = input_Password.Value.Trim();
        DBEntities db = new DBEntities();
        var query = from d in db.NguoiDungs
                    where d.LoginName == userName && d.Password == password
                    select new
                    {
                        Name = d.Name
                    };

        var queryLoginName = from d in db.NguoiDungs
                    where d.LoginName == userName && d.Password == password
                    select new
                    {
                        LoginName = d.LoginName
                    };

        var queryID = from d in db.NguoiDungs
                      where d.LoginName == userName && d.Password == password
                      select new
                      {
                          ID = d.NguoiDungID
                      };

        var queryImg = from d in db.NguoiDungs
                      where d.LoginName == userName && d.Password == password
                      select new
                      {
                          d.image
                      };

        var count = query.Count();
        if (count != 0)
        {
            var UserName = query.FirstOrDefault().ToString();
            UserName = Text(UserName).Trim();

            var LoginName = queryLoginName.FirstOrDefault().ToString();
            LoginName = Text(LoginName).Trim();

            string id = queryID.FirstOrDefault().ToString();
            id = Text(id);

            string img = queryImg.FirstOrDefault().ToString();
            img = Text(img).Trim();

            Session["Name"] = LoginName;
            Session["UserName"] = UserName;
            Session["ID"] = id;
            Session["Image"] = img;
            Session.Timeout = 15;
            Response.Redirect("/admin/Default.aspx");
        }
        else
        {
            fb_message.InnerHtml = "Tên đăng nhập hoặc mật khẩu sai!";
            fb_message.Attributes["class"] = "invalid-feedback d-block";
            input_UserName.Focus();
            return;
        }
    }

    public string Text(string temp)
    {
        int a = temp.IndexOf('=') + 1;
        int b = temp.Length - (temp.IndexOf('}') - 1);
        int c = temp.Length - (a + b);
        return temp = temp.Substring(a, c);
    }
}