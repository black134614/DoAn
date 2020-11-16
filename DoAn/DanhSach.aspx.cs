using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CodeUtility;


public partial class DanhSach : System.Web.UI.Page
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
        int mID = Request.QueryString["mID"].ToInt();
        DBEntities db = new DBEntities();

        var query = from list in db.TinBais
                    where list.MenuID == mID && list.Xoa == false && list.Duyet == true
                    orderby list.NgayDang descending
                    select new
                    {
                        ID = list.TinBaiID,
                        list.Title,
                        list.Description,
                        list.Images
                    };

        Repeater_Main.DataSource = query.ToList();
        Repeater_Main.DataBind();
    }
}