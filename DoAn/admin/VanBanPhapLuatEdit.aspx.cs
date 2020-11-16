using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CodeUtility;

public partial class admin_VanBanPhapLuat : System.Web.UI.Page
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
        int ID = 0;
        int.TryParse(Request.QueryString["ID"], out ID);

        message.Visible = false;

        String SoHieu = textbox_SoHieu.Value.Trim();
        String CoQuanBH = textbox_CoQuanBH.Value.Trim();
        String NgayBH = input_NgayBanHanh.Value;
        string NgayHL = input_NgayHieuLuc.Value;
        string LinkFile = imageLink.Value;
        LinkFile = LinkFile.Replace(@"C:\fakepath\", @"\FilesUpload\").Replace(@"\\", @"\");
        String TomTat = textarea_Detail.Value;


        DBEntities db = new DBEntities();
        if (ID == 0)
        {
            //them  moi noi dung
            return;
        }
        var query = (from d in db.VanBans
                     where d.VanBanID == ID
                     select d).FirstOrDefault();

        SoHieu = query.SoHieu;
        textbox_SoHieu.Value = SoHieu;
        CoQuanBH = query.CoQuanBH;
        textbox_CoQuanBH.Value = CoQuanBH;
        var temp = "01/01/2020".ToDateTime();
        temp = (DateTime)query.NgayBanHanh;
        input_NgayBanHanh.Value = temp.ToString("dd/MM/yyyy");
        temp = (DateTime)query.NgayHieuLuc;
        input_NgayHieuLuc.Value = temp.ToString("dd/MM/yyyy");
        imageLink.Value = query.link.Replace(@"\FilesUpload\", @"C:\fakepath\").Replace(@"\\", @"\");
        textarea_Detail.Value = query.MoTa;


    }

    protected void btn_Save_Click(object sender, EventArgs e)
    {
        int ID = 0;
        int.TryParse(Request.QueryString["ID"], out ID);

        String SoHieu = textbox_SoHieu.Value.Trim();
        String CoQuanBH = textbox_CoQuanBH.Value.Trim();
        DateTime NgayBH = input_NgayBanHanh.Value.ToDateTime();
        DateTime NgayHL = input_NgayHieuLuc.Value.ToDateTime();
        string LinkFile = imageLink.Value;
        LinkFile = LinkFile.Replace(@"C:\fakepath\", @"\FilesUpload\").Replace(@"\\", @"\");
        String MoTa = textarea_Detail.Value;

        DBEntities db = new DBEntities();

        if (SoHieu == String.Empty)
        {
            message.Visible = true;
            message.InnerHtml = "Nhập số hiệu!";
            textbox_SoHieu.Focus();
            return;
        }
        if (CoQuanBH == String.Empty)
        {
            message.Visible = true;
            message.InnerHtml = "Nhập cơ quan ban hành!";
            textbox_CoQuanBH.Focus();
            return;
        }
        if (NgayBH == null)
        {
            message.Visible = true;
            message.InnerHtml = "Nhập ngày ban hành!";
            input_NgayBanHanh.Focus();
            return;
        }
        if (NgayHL == null)
        {
            message.Visible = true;
            message.InnerHtml = "Nhập ngày hiệu lực!";
            input_NgayHieuLuc.Focus();
            return;
        }
        if (LinkFile == String.Empty)
        {
            message.Visible = true;
            message.InnerHtml = "chọn file của văn bản";
            return;
        }
        if (MoTa == String.Empty)
        {
            message.Visible = true;
            message.InnerHtml = "nhập mô tả của văn bản";
            textarea_Detail.Focus();
            return;
        }

        if (ID == 0)
        {
            using (db)
            {
                var newItem = new VanBan()
                {
                    SoHieu = SoHieu,
                    NgayBanHanh = NgayBH,
                    NgayHieuLuc = NgayHL,
                    CoQuanBH = CoQuanBH,
                    link = LinkFile,
                    MoTa = MoTa,
                    NguoiDungID = Session["ID"].ToInt()
                };
                try
                {
                    db.VanBans.Add(newItem);
                    db.SaveChanges();
                    LoadData();
                    message.InnerHtml = "Lưu Tin Mới Thành Công";
                    message.Visible = true;
                    Reset();
                }
                catch (Exception)
                {
                    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Có lỗi')", true);
                    return;
                }
            }
            return;
        }
        var query = (from d in db.VanBans
                     where d.VanBanID == ID
                     select d).FirstOrDefault();
        query.SoHieu = SoHieu;
        query.CoQuanBH = CoQuanBH;
        query.NgayBanHanh = NgayBH;
        query.NgayHieuLuc = NgayHL;
        query.link = LinkFile;
        query.MoTa = MoTa;

        try
        {
            db.SaveChanges();
            Response.Redirect("/admin/DanhMucVanBanPhapLuat.aspx");
        }
        catch (Exception)
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Có lỗi!')", true);
            return;
        }

    }

    public void Reset()
    {
        textbox_SoHieu.Value = "";
        textbox_CoQuanBH.Value = "";
        input_NgayBanHanh.Value = "";
        input_NgayHieuLuc.Value = "";
        imageLink.Value = "";
        textarea_Detail.Value = "";
    }
}