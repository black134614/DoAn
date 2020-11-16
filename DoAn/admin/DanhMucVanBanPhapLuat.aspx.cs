using CodeUtility;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CodeUtility;

public partial class admin_VanBanPhapLuat : System.Web.UI.Page
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
        DBEntities db = new DBEntities();
        var query = from d in db.VanBans
                    select d;
        Repeater_Main.DataSource = query.ToList();
        Repeater_Main.DataBind();
    }

    protected void btn_delete_Click(object sender, EventArgs e)
    {
        int ID = 0;
        LinkButton btn_delete = sender as LinkButton;
        int.TryParse(btn_delete.CommandArgument, out ID);
        if (Session["ID"].ToInt() != 1 || Session["Name"].ToString().ToLower() != "admin")
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Bạn phải là admin mới xóa được bài viết')", true);
            return;
        }
        using (var context = new DBEntities())
        {

            var tin = (from d in context.VanBans
                       where d.VanBanID == ID
                       select d).FirstOrDefault();

            try
            {
                context.VanBans.Remove(tin);
                context.SaveChanges();
                LoadData();
            }
            catch (Exception)
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Có lỗi khi xóa dữ liệu')", true);
                return;
            }
        }
    }
}