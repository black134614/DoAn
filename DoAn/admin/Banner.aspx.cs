using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_Banner :  System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            LoadData();
        }
    }

    public void LoadData()
    {
        message.Visible = false;

        DBEntities db = new DBEntities();
        var query = from d in db.Banners
                     where d.Show == true
                     select d ;
        Repeater_Main.DataSource = query.ToList().Take(1);
        Repeater_Main.DataBind();
    }

    protected void btnSave_Click(object sender, EventArgs e)
    {
        DBEntities db = new DBEntities();
        var query = (from d in db.Banners
                     where d.Show == true
                     select d).FirstOrDefault() ;

        string link = imageLink.Value;
        if (link == string.Empty)
        {
            message.Visible = true;
            message.InnerHtml = "bạn chưa chọn hình!";
            return;
        }
        query.Link = link.Replace(@"C:\fakepath\", @"\Img\System\").Replace(@"\\", @"\") ;
        try
        {
            db.SaveChanges();
            Response.Redirect(Request.Url.ToString());
            message.InnerHtml = "Lưu thay đổi thành công!";
        }
        catch (Exception)
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Có lỗi')", true);
            return;
        }
    }

}