using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CodeUtility;

public partial class admin_TinBai : System.Web.UI.Page
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
        message.Visible = false;
        checkDuyet.Visible = false;
        if (Session["ID"] == null)
        {
            Response.Redirect("DangNhap.aspx");
            return;
        }
        if (Session["ID"].ToInt() == 1 || Session["Name"].ToString().ToLower() == "admin")
        {
            checkDuyet.Visible = true;
        }
        DBEntities db = new DBEntities();
        int id = Request.QueryString["ID"].ToInt();
        int mid = Request.QueryString["mID"].ToInt();
        if (id == 0 || mid == 0)
        {
            var query = from d in db.Menus
                        where d.Show == true
                        select new
                        {
                            ID = d.MenuID,
                            d.Name
                        };
            Repeater_Main.DataSource = query.ToList();
            Repeater_Main.DataBind();
        }
        using (var ctx = new DBEntities())
        {
            var anonymousObjResult = from d in ctx.TinBais
                                     where d.TinBaiID == id
                                     select new
                                     {
                                         d.TinBaiID,
                                         d.Title,
                                         d.Images,
                                         d.Description,
                                         d.Detail,
                                         d.Duyet,
                                         d.TinNoiBat,
                                         d.Menu,
                                         d.MenuID
                                     };

            foreach (var obj in anonymousObjResult)
            {
                inputName.Value = obj.Title;
                textDescription.Value = obj.Description;
                bool tinNoiBat = obj.TinNoiBat.ToBool();
                check_TinNoiBat.Checked = false;
                if (tinNoiBat == true)
                {
                    check_TinNoiBat.Checked = true;
                }
                var tem1 = obj.Images.Replace(@"\Img\TinBai\", @"C:\fakepath\").Replace(@"\\", @"\"); ;
                imageLink.Value = tem1;
                checkDuyet.Checked = false;
                if (obj.Duyet.ToBool() == true)
                {
                    checkDuyet.Checked = true;
                }
                //xu ly option
                var query = from d in db.Menus
                            where d.Show == true
                            select new
                            {
                                ID = d.MenuID,
                                d.Name
                            };
                Repeater_Main.DataSource = query.ToList();
                Repeater_Main.DataBind();
                textDetail.Value = obj.Detail;
            }
        }
    }

    protected void btnSave_Click(object sender, EventArgs e)
    {
        int id = Request.QueryString["ID"].ToInt();
        int mid = Request.QueryString["mID"].ToInt();

        string name = inputName.Value.Trim();
        string description = textDescription.Value;
        bool tinNoiBat = false;
        if (check_TinNoiBat.Checked == true)
        {
            tinNoiBat = true;
        }
        bool duyet = false;
        if (checkDuyet.Checked == true)
        {
            duyet = true;
        }
        int menuID = 0;
        int.TryParse(Request.Form["selectMenu"].ToString(), out menuID);
        string detail = textDetail.Value;
        string image = imageLink.Value;
        image = image.Replace(@"C:\fakepath\", @"\Img\TinBai\").Replace(@"\\", @"\");
        if (name == String.Empty)
        {
            inputName.Focus();
            message.InnerHtml = "Nhập tiêu đề!";
            message.Attributes["class"] = "text-danger text-center mx-auto my-2";
            message.Visible = true;
            return;
        }
        if (description == String.Empty)
        {
            textDescription.Focus();
            message.InnerHtml = "Nhập mô tả cho bài viết!";
            message.Attributes["class"] = "text-danger text-center mx-auto my-2";
            message.Visible = true;
            return;
        }
        if (detail == String.Empty)
        {
            textDetail.Focus();
            message.InnerHtml = "Nhập nội dung bài viết!";
            message.Attributes["class"] = "text-danger text-center mx-auto my-2";
            message.Visible = true;
            return;
        }
        if (image == String.Empty)
        {
            message.InnerHtml = "Bạn chưa chọn hình!";
            message.Attributes["class"] = "text-danger text-center mx-auto my-2";
            message.Visible = true;
            return;
        }

        if (id == 0 || mid == 0)
        {
            using (var db = new DBEntities())
            {
                var std = new TinBai()
                {
                    Title = name,
                    TitleLink = "",
                    Images = image,
                    Description = description,
                    Detail = detail,
                    Duyet = duyet,
                    Xoa = false,
                    NgayDang = DateTime.Now,
                    NguoiDungID = Session["ID"].ToInt(),
                    MenuID = menuID,
                    TinNoiBat = tinNoiBat
                };
                try
                {
                    db.TinBais.Add(std);
                    db.SaveChanges();
                    LoadData();
                    message.InnerHtml = "Lưu Tin Mới Thành Công";
                    message.Visible = true;
                    reset();
                }
                catch (Exception)
                {
                    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Có lỗi')", true);
                    return;
                }
            }
        }
        else
        {
            DBEntities db = new DBEntities();
            var queryLoad = (from d in db.TinBais
                             where d.MenuID == mid && d.TinBaiID == id
                             select d).First();
            queryLoad.Title = name;
            queryLoad.Description = description;
            queryLoad.Duyet = duyet;
            queryLoad.TinNoiBat = tinNoiBat;
            queryLoad.Images = image;
            queryLoad.Detail = detail;
            queryLoad.MenuID = menuID;
            try
            {
                db.SaveChanges();
                Response.Redirect("/admin/QuanLyTin.aspx");
            }
            catch (Exception)
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Có lỗi')", true);
                return;
            }
        }
    }

    public void reset()
    {
        inputName.Value = "";
        textDescription.Value = "";
        check_TinNoiBat.Checked = false;
        checkDuyet.Checked = false;
        imageLink.Value = "";
    }

}