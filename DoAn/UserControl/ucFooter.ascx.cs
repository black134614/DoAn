using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class UserControl_ucCarousel : System.Web.UI.UserControl
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
        var query = from info in db.ThongTinWebSites
                    where info.TrangThai == true
                    select new
                    {
                        WebName = info.tenWebSite,
                        Address = info.DiaChi,
                        info.Email,
                        Phone = info.SoDienThoai,
                        info.Fax,
                        More = info.ThongTinThem
                    };
        Repeater_Main.DataSource = query.ToList().Take(1);
        Repeater_Main.DataBind();
    }
}