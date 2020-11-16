using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class UserControl_ucVanBan : System.Web.UI.UserControl
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
        var query = from dl in db.VanBans
                    select new
                    {
                        SH = dl.SoHieu,
                        Date = dl.NgayBanHanh,
                        Date2 = dl.NgayHieuLuc,
                        dl.MoTa,
                        dl.CoQuanBH,
                        dl.link
                    };
        Repeater_Main.DataSource = query.ToList();
        Repeater_Main.DataBind();
    }
}