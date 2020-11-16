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
        var query = from Tab in db.TabThongTins
                    where Tab.Show == true
                    select new
                    {
                        ID = Tab.TabThongTinID,
                        Tab.Name,
                        Tab.Content
                    };
        Repeater_TabTitle.DataSource = query.ToList().Take(2);
        Repeater_TabTitle.DataBind();

        Repeater_TabContent.DataSource = query.ToList().Take(2);
        Repeater_TabContent.DataBind();
    }
}