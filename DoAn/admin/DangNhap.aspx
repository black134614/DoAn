<%@ Page Language="C#" AutoEventWireup="true" CodeFile="DangNhap.aspx.cs" Inherits="admin_DangNhap" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
      <meta charset="utf-8" />
    <title>Quỹ Phát Triển Khoa Học Công Nghệ BD - Login</title>
    <!--Css-->
    <link href="Content/bootstrap.css" rel="stylesheet" />
    <link href="Content/font-awesome.css" rel="stylesheet" />
    <link href="Plugins/Fancybox/jquery.fancybox.css" rel="stylesheet" />
    <link href="Content/style.css" rel="stylesheet" />
    <link href="Content/responsive.css" rel="stylesheet" />
</head>
<body>
    <header style="background: #00BAF2">
        <nav class="navbar w-100" style="background: url(images/bgBanner.png) no-repeat left center;">
            <img src="images/login.png" />
            <h4 class="text-uppercase text-light ml-auto">đăng nhập hệ thống</h4>
        </nav>
    </header>
    <form class="needs-validation" runat="server" novalidate>
        <div class="card text-center mx-auto mt-5" style="width: 20rem; box-shadow: 0 0 14px rgba(0,0,0,.1);">
            <div class="card-header bg-transparent" style="box-shadow: 0 0 14px rgba(0,0,0,.1);">
                <img style="height: 130px; width: 130px" src="images/logo_cisti_bd.png" />
            </div>
            <div class="card-body">
                <h5 class="card-title">Đăng Nhập</h5>
                <div class="mt-3">
                    <input type="text" class="form-control" id="input_UserName" runat="server" placeholder="Tên Đăng Nhập" required/>
                    <div id="fb_message" runat="server" class="invalid-feedback">
                        Tên Đăng Nhập Không Đúng!
                    </div>
                </div>
                <div class="mt-3">
                    <input type="password" class="form-control" id="input_Password" runat="server" placeholder="Mật Khẩu" required/>
                    <div class="invalid-feedback">
                        Mật Khẩu Không Đúng!
                    </div>
                </div>
                <asp:Button Text="Đăng Nhập" class="btn btn-primary mt-3" ID="btn_Login" OnClick="btn_Login_Click" runat="server" />
            </div>
        </div>
    </form>
    <script>
        // Example starter JavaScript for disabling form submissions if there are invalid fields
        (function () {
            'use strict';
            window.addEventListener('load', function () {
                // Fetch all the forms we want to apply custom Bootstrap validation styles to
                var forms = document.getElementsByClassName('needs-validation');
                // Loop over them and prevent submission
                var validation = Array.prototype.filter.call(forms, function (form) {
                    form.addEventListener('submit', function (event) {
                        if (form.checkValidity() === false) {
                            event.preventDefault();
                            event.stopPropagation();
                        }
                        form.classList.add('was-validated');
                    }, false);
                });
            }, false);
        })();
    </script>

    <section id="Script">
        <script src="Scripts/popper.js"></script>
        <script src="Scripts/jquery-3.0.0.js"></script>
        <script src="Scripts/bootstrap.js"></script>
        <script src="Plugins/Fancybox/jquery.fancybox.js"></script>
        <script src="Scripts/script.js"></script>
    </section>
</body>
</html>
