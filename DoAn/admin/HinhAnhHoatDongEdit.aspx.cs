using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_HinhAnhHoatDong : System.Web.UI.Page
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
        int ID = 0;
        int.TryParse(Request.QueryString["ID"], out ID);
        DBEntities db = new DBEntities();
        if (ID != 0)
        {
            var query = from d in db.HinhAnhHoatDongs
                         where d.HinhAnhHoatDongID == ID
                         select d;

            checkbox_Show.Checked = false;
            if ((Boolean)query.FirstOrDefault().Show == true)
            {
                checkbox_Show.Checked = true;
            }
            imageLink.Value = query.FirstOrDefault().Name_Ext.ToString();

            Repeater_Main.DataSource = query.ToList();
            Repeater_Main.DataBind();
        }
    }

    protected void btnSave_Click(object sender, EventArgs e)
    {
        int ID = 0;
        int.TryParse(Request.QueryString["ID"], out ID);
        DBEntities db = new DBEntities();

        string Link = imageLink.Value;
        if (Link == String.Empty)
        {
            message.Visible = true;
            message.InnerHtml = "Chọn ảnh đăng";
            return;
        }
        bool Show = false;
        if (checkbox_Show.Checked == true)
        {
            Show = true;
        }

        if (ID == 0)
        {
            using (db)
            {
                var newItem = new HinhAnhHoatDong();
                newItem.Name_Ext = Link.Replace(@"C:\fakepath\", @"\Img\System\").Replace(@"\\", @"\");
                newItem.Show = Show;

                try
                {
                    db.HinhAnhHoatDongs.Add(newItem);
                    db.SaveChanges();
                    message.InnerHtml = "Thêm hình mới thành công";
                    message.Visible = true;
                    LoadData();
                }
                catch (Exception)
                {
                    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Có lỗi')", true);
                    return;
                }
            }
        }
        else
        {
            var query = (from d in db.HinhAnhHoatDongs
                        where d.HinhAnhHoatDongID == ID
                        select d).FirstOrDefault();
            query.Name_Ext = Link;
            query.Show = Show;
            try
            {
                db.SaveChanges();
                Response.Redirect("/admin/HinhAnhHoatDong.aspx");
            }
            catch (Exception)
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Có lỗi!')", true);
                return;
            }
        }
    }
}