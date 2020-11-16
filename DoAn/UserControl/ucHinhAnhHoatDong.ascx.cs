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
        var queryPrev = from img in db.HinhAnhHoatDongs
                    where img.Show == true
                    orderby img.HinhAnhHoatDongID ascending
                    select new
                    {
                        Title = img.Name,
                        Link = img.Name_Ext,
                        img.Description,
                    };
        Repeater_Preview.DataSource = queryPrev.ToList().Take(1);
        Repeater_Preview.DataBind();

        var query = from img in db.HinhAnhHoatDongs
                        where img.Show == true
                        orderby img.HinhAnhHoatDongID descending
                        select new
                        {
                            Title = img.Name,
                            Link = img.Name_Ext,
                            img.Description,
                        };
        Repeater_Main.DataSource = query.ToList().Skip(1);
        Repeater_Main.DataBind();
    }
}