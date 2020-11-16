using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CodeUtility;

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
        DBEntities db = new DBEntities();
        var query = from d in db.HinhAnhHoatDongs
                    select new
                    {
                        d.Name,
                        d.Description,
                        d.Show,
                        d.HinhAnhHoatDongID,
                        NguoiDung = d.NguoiDung.Name
                    };

        Repeater_Main.DataSource = query.ToList();
        Repeater_Main.DataBind();
    }

    protected void btnDelete_Click(object sender, EventArgs e)
    {
        int ID = 0;
        LinkButton btnDelete = sender as LinkButton;
        int.TryParse(btnDelete.CommandArgument, out ID);

        DBEntities db = new DBEntities();
        var query = (from d in db.HinhAnhHoatDongs
                     where d.HinhAnhHoatDongID == ID
                     select d).FirstOrDefault();
        try
        {
            db.HinhAnhHoatDongs.Remove(query);
            db.SaveChanges();
            message.Visible = true;
            message.InnerHtml = "Đã xóa thành công!";
            LoadData();
        }
        catch (Exception)
        {
            message.Visible = true;
            message.InnerHtml = "Xóa thất bại! đã có lỗi! vui lòng kiểm tra lại";
            return;
        }
    }
}