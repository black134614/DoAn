﻿//------------------------------------------------------------------------------
// <auto-generated>
//    This code was generated from a template.
//
//    Manual changes to this file may cause unexpected behavior in your application.
//    Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

using System;
using System.Collections.Generic;

public partial class Banner
{
    public int ID { get; set; }
    public string Name { get; set; }
    public string Link { get; set; }
    public Nullable<bool> Show { get; set; }
    public Nullable<int> NguoiDungID { get; set; }

    public virtual NguoiDung NguoiDung { get; set; }
}

public partial class ChuyenDe
{
    public int ChuyenDeID { get; set; }
    public string Name { get; set; }
    public string LinkFile { get; set; }
    public Nullable<bool> Show { get; set; }
    public Nullable<int> NguoiDungID { get; set; }

    public virtual NguoiDung NguoiDung { get; set; }
}

public partial class HinhAnhHoatDong
{
    public int HinhAnhHoatDongID { get; set; }
    public string Name { get; set; }
    public string Name_Ext { get; set; }
    public string Description { get; set; }
    public Nullable<bool> Show { get; set; }
    public Nullable<int> NguoiDungID { get; set; }

    public virtual NguoiDung NguoiDung { get; set; }
}

public partial class LienKetHuuIch
{
    public int LienKetHuuIchID { get; set; }
    public string Name { get; set; }
    public string Link { get; set; }
    public Nullable<bool> Show { get; set; }
    public Nullable<int> NguoiDungID { get; set; }

    public virtual NguoiDung NguoiDung { get; set; }
}

public partial class Menu
{
    public Menu()
    {
        this.TinBais = new HashSet<TinBai>();
    }

    public int MenuID { get; set; }
    public string Name { get; set; }
    public string NameLink { get; set; }
    public bool Show { get; set; }
    public Nullable<int> Positon { get; set; }
    public int NguoiDungID { get; set; }

    public virtual NguoiDung NguoiDung { get; set; }
    public virtual ICollection<TinBai> TinBais { get; set; }
}

public partial class NguoiDung
{
    public NguoiDung()
    {
        this.Banners = new HashSet<Banner>();
        this.ChuyenDes = new HashSet<ChuyenDe>();
        this.HinhAnhHoatDongs = new HashSet<HinhAnhHoatDong>();
        this.LienKetHuuIches = new HashSet<LienKetHuuIch>();
        this.Menus = new HashSet<Menu>();
        this.TabThongTins = new HashSet<TabThongTin>();
        this.ThongBaos = new HashSet<ThongBao>();
        this.ThongTinWebSites = new HashSet<ThongTinWebSite>();
        this.TinBais = new HashSet<TinBai>();
        this.VanBans = new HashSet<VanBan>();
        this.Videos = new HashSet<Video>();
    }

    public int NguoiDungID { get; set; }
    public string Name { get; set; }
    public string TenDV { get; set; }
    public string SDT { get; set; }
    public string Email { get; set; }
    public string LoginName { get; set; }
    public string Password { get; set; }
    public Nullable<bool> TrangThai { get; set; }
    public string image { get; set; }

    public virtual ICollection<Banner> Banners { get; set; }
    public virtual ICollection<ChuyenDe> ChuyenDes { get; set; }
    public virtual ICollection<HinhAnhHoatDong> HinhAnhHoatDongs { get; set; }
    public virtual ICollection<LienKetHuuIch> LienKetHuuIches { get; set; }
    public virtual ICollection<Menu> Menus { get; set; }
    public virtual ICollection<TabThongTin> TabThongTins { get; set; }
    public virtual ICollection<ThongBao> ThongBaos { get; set; }
    public virtual ICollection<ThongTinWebSite> ThongTinWebSites { get; set; }
    public virtual ICollection<TinBai> TinBais { get; set; }
    public virtual ICollection<VanBan> VanBans { get; set; }
    public virtual ICollection<Video> Videos { get; set; }
}

public partial class TabThongTin
{
    public int TabThongTinID { get; set; }
    public string Name { get; set; }
    public string Content { get; set; }
    public Nullable<bool> Show { get; set; }
    public Nullable<int> NguoiDungID { get; set; }

    public virtual NguoiDung NguoiDung { get; set; }
}

public partial class ThongBao
{
    public int ThongBaoID { get; set; }
    public string Name { get; set; }
    public string Detail { get; set; }
    public Nullable<System.DateTime> PostDate { get; set; }
    public Nullable<bool> Show { get; set; }
    public Nullable<int> NguoiDungID { get; set; }
    public string Description { get; set; }
    public string Content { get; set; }

    public virtual NguoiDung NguoiDung { get; set; }
}

public partial class ThongTinWebSite
{
    public int ThongTinWebSiteID { get; set; }
    public string tenWebSite { get; set; }
    public string DiaChi { get; set; }
    public string SoDienThoai { get; set; }
    public string Fax { get; set; }
    public string Email { get; set; }
    public string ThongTinThem { get; set; }
    public Nullable<int> NguoiDungID { get; set; }
    public Nullable<bool> TrangThai { get; set; }

    public virtual NguoiDung NguoiDung { get; set; }
}

public partial class TinBai
{
    public int TinBaiID { get; set; }
    public string Title { get; set; }
    public string TitleLink { get; set; }
    public string Images { get; set; }
    public string Description { get; set; }
    public string Detail { get; set; }
    public Nullable<bool> Duyet { get; set; }
    public Nullable<bool> Xoa { get; set; }
    public Nullable<System.DateTime> NgayDang { get; set; }
    public int NguoiDungID { get; set; }
    public int MenuID { get; set; }
    public Nullable<bool> TinNoiBat { get; set; }

    public virtual Menu Menu { get; set; }
    public virtual NguoiDung NguoiDung { get; set; }
}

public partial class VanBan
{
    public int VanBanID { get; set; }
    public string SoHieu { get; set; }
    public Nullable<System.DateTime> NgayBanHanh { get; set; }
    public Nullable<System.DateTime> NgayHieuLuc { get; set; }
    public string MoTa { get; set; }
    public string CoQuanBH { get; set; }
    public string link { get; set; }
    public Nullable<int> NguoiDungID { get; set; }

    public virtual NguoiDung NguoiDung { get; set; }
}

public partial class Video
{
    public int VideoID { get; set; }
    public string Name { get; set; }
    public string Source { get; set; }
    public string Time { get; set; }
    public Nullable<bool> Show { get; set; }
    public Nullable<int> NguoiDungID { get; set; }

    public virtual NguoiDung NguoiDung { get; set; }
}
