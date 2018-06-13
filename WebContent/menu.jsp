<<<<<<< HEAD
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="container">
				<div class="row">
					<div class="cell mp_logo span3">
						<div class="cell_pad">
							<div class="sparky_logo">
								<a href="index.jsp">2NBQ</a>
							</div>
							<div class="sparky_slogan"></div>
						</div>
					</div>
					<div class="cell mp_topmenu span6">
						<div class="sparky_menu">

							<nav class="container_topmenu">
								<ul class="menu navv mnu_topmenu">
									<li class="item-195"><a href="index.html">Lịch chiếu</a></li>
									<li class="item-447"><a href="<%=request.getContextPath()%>/film/Phim.jsp">Phim</a></li>
									<li class="item-344 deeper parent"><a href="#">Giới thiệu</a>
									<ul>
											<li class="item-346"><a
												href="index.php/features/about-hot-theatre.html">Về dự án</a></li>
											<li class="item-348"><a
												href="index.php/features/infinite-color-schemes.html">Về chúng tôi</a></li>
										</ul></li>
									<li class="item-352 deeper parent"><a href="#">Quản lý</a>
									<ul>
											<li class="item-353"><a
												href="index.php/extensions/hot-full-carousel.html">Quản lý phim</a></li>
											<li class="item-426"><a
												href="<%=request.getContextPath()%>/admin/QuanLyTV.jsp">Quản lý thành viên</a></li>
											<li class="item-354"><a
												href="index.php/extensions/hot-slicebox.html">Quản lý lịch chiếu</a></li>
											<li class="item-355"><a
												href="index.php/extensions/hot-maps.html">Quản lý đạo diễn</a></li>
										</ul></li>
								</ul>
							</nav>
						</div>
					</div>
					<div class="cell mp_top1 span3">
						<div class="cell_pad">
							<div class="moduletable">
								<div class="custom">
									<a href="http://www.facebook.com/hotthemes"><i
										class="fa fa-facebook"></i></a><a
										href="http://twitter.com/hot_themes"><i
										class="fa fa-twitter"></i></a><a
										href="https://plus.google.com/b/101865138405372995937/"><i
										class="fa fa-google-plus"></i></a><a
										href="http://www.linkedin.com/company/hotthemes"><i
										class="fa fa-linkedin"></i></a><a
										href="http://pinterest.com/hotthemes"><i
										class="fa fa-pinterest"></i></a>
								</div>
							</div>

						</div>
					</div>
					<div class="clr"></div>
				</div>
			</div>
</body>
</html>
=======
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

        <title>Rạp phim 2NBQ</title>

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
>>>>>>> parent of 9104e47... hotfix menu, thêm chức năng QL đạo diễn
