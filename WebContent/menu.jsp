<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

        <link href="https://fonts.googleapis.com/css?family=Yesteryear"
              rel="stylesheet">
        <style>
            .menuDropbtn {
                background-color: #4CAF50 !important;
                color: white !important;
                padding: 12px !important;
                font-size: 16px !important;
                border: none !important;
                cursor: pointer !important;
            }

            .menuDropdown {
                position: relative !important;
                display: inline-block !important;
                float: left !important;
            }

            .menuDropdown-content {
                display: none !important;
                position: absolute !important;
                right: 0 !important;
                background-color: #f9f9f9 !important;
                min-width: 160px !important;
                box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2) !important;
                z-index: 1 !important;
            }

            .menuDropdown-content a {
                color: black !important;
                padding: 12px 16px !important;
                text-decoration: none !important;
                display: block !important;
            }

            .form-group{
                padding: 12px 16px !important;
                display: block !important;
            }

            .menuDropdown-content a:hover {background-color: #f1f1f1}

            .menuDropdown:hover .menuDropdown-content {
                display: block !important;
            }

            .menuDropdown:hover .menuDropbtn {
                background-color: #000000 !important;
            }

            .menubar {
                width: 100% !important;
                position: fixed !important;
                background-color: #4CAF50 !important;
                height: auto !important;
                z-index: 1;
            }

            .menuRight{
                float: right !important;
            }

            .brandMenu{
                background-color: #4CAF50 !important;
                color: white !important;
                padding: 12px !important;
                font-size: 16px !important;
                border: none !important;
                cursor: pointer !important;
                font-family: "Yesteryear", cursive !important;
                font-weight: bold !important;
                text-decoration: none !important;
            }

        </style>
    </head>
    <body>
        <div class="menubar">
            <div class="menuDropdown brandMenu">
                <a class="menuDropbtn brandMenu" href="<%= request.getContextPath()%>">2NBQ</a>
            </div>
            <div class="menuDropdown">
                <button class="menuDropbtn">Lịch chiếu</button>
            </div> <div class="menuDropdown">
                <button class="menuDropbtn">Phim</button>
                <div class="menuDropdown-content" style="left:0;">
                    <a href="#">Phim đang chiếu</a>
                    <a href="#">Phim sắp</a>
                </div>
            </div>
            <div class="menuDropdown">
                <button class="menuDropbtn">Giới thiệu</button>
                <div class="menuDropdown-content" style="left:0;">
                    <a href="#">Về dự án</a>
                    <a href="#">Về chúng tôi</a>
                </div>
            </div>
            <% if (true) {%>
            <div class="menuDropdown">
                <button class="menuDropbtn">Chức năng quản lý</button>
                <div class="menuDropdown-content" style="left:0;">
                    <a href="<%= request.getContextPath()%>/admin/thanhVien">Quản lý thành viên</a>
                    <a href="<%= request.getContextPath()%>/admin/phim">Quản lý phim</a>
                    <a href="<%= request.getContextPath()%>/admin/lichChieu">Quản lý lịch chiếu</a>
                    <a href="<%= request.getContextPath()%>/admin/daoDien">Quản lý đạo diễn</a>
                </div>
            </div>
            <%}%>

            <div class="menuDropdown">
                <button class="menuDropbtn">Icon thay đổi ngôn ngữ</button>
                <div class="menuDropdown-content" style="left:0;">
                    <a href="#">Tiếng Việt</a>
                    <a href="#">English</a>
                    <a href="#">Français</a>
                </div>
            </div>
            <div class="menuDropdown menuRight">
                <button class="menuDropbtn">Đăng ký</button>
                <div class="menuDropdown-content">
                    <form class="form">
                        <div class="form-group">
                            <label for="email">Địa chỉ email</label>
                            <input type="email" class="" id="email" placeholder="email@example.com">
                        </div>
                        <div class="form-group">
                            <label for="password">Mật khẩu</label>
                            <input type="password" class="" id="password" placeholder="pa$$w0rD">
                        </div>
                        <div class="form-group">
                            <label for="re-password">Nhập lại mật khẩu</label>
                            <input type="password" class="" id="re-password" placeholder="retype-pa$$w0rD">
                        </div>

                        <button type="submit" class="">Đăng ký</button>
                    </form>
                </div>
            </div>
            <div class="menuDropdown menuRight">
                <button class="menuDropbtn">Đăng nhập</button>
                <div class="menuDropdown-content">
                    <form class="form">
                        <div class="form-group">
                            <label for="emailField">Địa chỉ email</label>
                            <input type="email" class="" id="emailField" placeholder="email@example.com">
                        </div>
                        <div class="form-group">
                            <label for="passwordField">Mật khẩu</label>
                            <input type="password" class="" id="passwordField" placeholder="pa$$w0rD">
                        </div>
                        <button type="submit" class="">Đăng nhập</button>
                    </form>
                    <div class="dropdown-divider"></div>
                    <a href="#">Quên mật khẩu?</a>
                </div>
            </div>
        </div>
    </body>
</html>
