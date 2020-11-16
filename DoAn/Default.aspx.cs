using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
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
        var query = from dl in db.Menus
                    where dl.Show == true
                    orderby dl.Positon ascending
                    select new
                    {
                        mID = dl.MenuID,
                        dl.Name,
                        TinB = (from dt in db.TinBais
                                where dt.MenuID == dl.MenuID && dt.Xoa == false && dt.Duyet == true
                                orderby dt.NgayDang descending
                                select new
                                {
                                    ID = dt.TinBaiID,
                                    dt.Title,
                                    dt.Images,
                                    dt.Description,
                                    mID = dt.MenuID
                                }
                                ).Take(3)
                    };

        Repeater_Main.DataSource = query.ToList();
        Repeater_Main.DataBind();
    }
}