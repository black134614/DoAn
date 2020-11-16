using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CodeUtility;

public partial class ChiTiet : System.Web.UI.Page
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
        int ID = Request.QueryString["ID"].ToInt();
        DBEntities db = new DBEntities();
        var query = from dl in db.TinBais
                    where dl.TinBaiID == ID && dl.Xoa == false && dl.Duyet == true
                    select new
                    {
                        ID = dl.TinBaiID,
                        dl.Title,
                        dl.Images,
                        dl.Description,
                        dl.Detail,
                        dl.NgayDang
                    };
        Repeater_Main.DataSource = query.ToList();
        Repeater_Main.DataBind();
    }
}