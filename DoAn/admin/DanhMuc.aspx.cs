using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CodeUtility;

public partial class admin_DanhMuc : System.Web.UI.Page
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
        btnCancel.Visible = false;
        if (ID != 0)
        {
            btnCancel.Visible = true;
            btnDel.Attributes.Remove("disabled");
            moreInfo.InnerHtml = "Bạn Đang Chỉnh Sửa Menu!";
            moreInfo.Attributes["class"] = "text-center text-info col-12 m-2 bg-warning text-danger d-block";
            var queryInput = (from d in db.Menus
                              orderby d.Positon
                              where d.MenuID == ID
                              select new
                              {
                                  Title = d.Name,
                                  d.Show
                              }).First();
            inputTitle.Value = queryInput.Title.ToString();
            checkboxShow.Checked = false;
            if (queryInput.Show == true)
            {
                checkboxShow.Checked = true;
            }
        }
        var query = from d in db.Menus
                    orderby d.Positon
                    select new
                    {
                        ID = d.MenuID,
                        Title = d.Name,
                        d.Show
                    };
        Repeater_Main.DataSource = query.ToList();
        Repeater_Main.DataBind();
    }

    protected void btnDel_Click(object sender, EventArgs e)
    {
        if (Session["ID"].ToInt() != 1 || Session["Name"].ToString().ToLower() != "admin")
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Bạn phải là admin mới xóa được menu!')", true);
            return;
        }
        int ID = Request.QueryString["ID"].ToInt();
        if (inputTitle.Value.Trim() == String.Empty)
        {
            inputTitle.Focus();
            message.InnerHtml = "Đừng để trống tên menu!";
            message.Attributes["class"] = "text-center text-info col-12 m-2 bg-warning";
            moreInfo.Visible = false;
            return;
        }
        if (ID != 0)
        {
            using (var context = new DBEntities())
            {
                var std = (from d in context.Menus
                           where d.MenuID == ID
                           select d
                    ).First();
                var tin = from d in context.TinBais
                          where d.MenuID == ID
                          select d;
                foreach (var item in tin)
                {
                    context.TinBais.Remove(item);
                };
                context.Menus.Remove(std);

                context.SaveChanges();
                Response.Redirect("DanhMuc.aspx");
            }
        }
    }

    protected void btnSave_Click(object sender, EventArgs e)
    {
        int ID = Request.QueryString["ID"].ToInt();
        if (ID != 0)
        {
            DBEntities db = new DBEntities();
            var query = (from d in db.Menus
                         where d.MenuID == ID
                         select d).First();
            query.Name = inputTitle.Value.Trim();
            if (inputTitle.Value.Trim() == String.Empty)
            {
                inputTitle.Focus();
                message.InnerHtml = "Nhập tên menu!";
                message.Attributes["class"] = "text-center text-info col-12 m-2 bg-warning";
                moreInfo.Visible = false;
                return;

            }
            if (checkboxShow.Checked)
            {
                query.Show = true;
            }
            else
            {
                query.Show = false;
            }
                try
                {
                    db.SaveChanges();
                    message.InnerHtml = "Lưu thay đổi thành công!";
                    message.Attributes["class"] = "text-center text-info col-12 m-2 bg-warning";
                    moreInfo.Visible = false;
                    LoadData();
                }
                catch (Exception)
                {
                    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Có lỗi')", true);
                    return;
                }
        }
        else
        {
            bool show = false;
            if (checkboxShow.Checked)
            {
                show = true;
            }
            if (inputTitle.Value.Trim() == String.Empty)
            {
                inputTitle.Focus();
                message.InnerHtml = "Nhập tên menu!";
                message.Attributes["class"] = "text-center text-info col-12 m-2 bg-warning";
                moreInfo.Visible = false;
                return;

            }
            using (var context = new DBEntities())
            {
                var std = new Menu()
                {
                    Name = inputTitle.Value.Trim(),
                    NameLink = "",
                    Show = show,
                    Positon = 99,
                    NguoiDungID = Session["ID"].ToInt()
                };
                context.Menus.Add(std);
                try
                {
                    context.SaveChanges();
                    message.InnerHtml = "Thêm Mới thành công!";
                    message.Attributes["class"] = "text-center text-info col-12 m-2 bg-sucess";
                    moreInfo.Visible = false;
                    LoadData();

                }
                catch (Exception)
                {
                    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Có lỗi')", true);
                    return;
                }
            }
        }
    }


}