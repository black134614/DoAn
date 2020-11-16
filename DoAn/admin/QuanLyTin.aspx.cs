using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CodeUtility;

public partial class admin_QuanLyTin : System.Web.UI.Page
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
        var query = from d in db.TinBais
                    where d.Xoa == false
                    select new
                    {
                        d.Title,
                        DanhMuc = d.Menu.Name,
                        NguoiDung = d.NguoiDung.Name,
                        d.Duyet,
                        ID = d.TinBaiID,
                        mID = d.MenuID
                    };
        int count = 0;
        count = query.Count();
        sumBaiViet.InnerHtml = "" + count;
        Repeater_Main.DataSource = query.ToList();
        Repeater_Main.DataBind();
    }

    protected void btnDelete_Click(object sender, EventArgs e)
    {
        if (Session["ID"].ToInt() != 1 || Session["Name"].ToString().ToLower() != "admin")
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Bạn phải là admin mới xóa được bài viết')", true);
            return;
        }
        LinkButton btnDelete = sender as LinkButton;
        int ID = 0;
        Int32.TryParse(btnDelete.CommandArgument, out ID);

        using (var context = new DBEntities())
        {

            var tin = (from d in context.TinBais
                       where d.TinBaiID == ID
                       select d).FirstOrDefault();

            try
            {
                tin.Xoa = true;
                //context.TinBais.Remove(tin); xóa luôn
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