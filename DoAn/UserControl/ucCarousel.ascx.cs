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
        var query = from mainCarousel in db.TinBais
                    where mainCarousel.TinNoiBat == true && mainCarousel.Duyet == true && mainCarousel.Xoa == false
                    orderby mainCarousel.NgayDang
                    select new
                    {
                        mID = mainCarousel.MenuID,
                        ID = mainCarousel.TinBaiID,
                        mainCarousel.Title,
                        mainCarousel.Images
                    };
        Repeater_Main.DataSource = query.ToList();
        Repeater_Main.DataBind();
    }
}