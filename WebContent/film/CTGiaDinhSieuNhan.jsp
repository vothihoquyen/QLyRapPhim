<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@page import="java.sql.ResultSet"%>
<%@page import="dao.DBConnect"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Em Gái Mưa here</title>
<link rel="stylesheet" type="text/css"
	href="/CMSPages/GetResource.ashx?stylesheetfile=/App_Themes/lotte/style.css" />
<link
	href="/CMSPages/GetResource.ashx?stylesheetfile=/App_Themes/lotte/jquery.mCustomScrollbar.css"
	rel="stylesheet" type="text/css" />
<link
	href="/CMSPages/GetResource.ashx?stylesheetfile=/App_Themes/lotte/calendar.css"
	rel="stylesheet" type="text/css" />

<!-- new css -->
<link
	href="/CMSPages/GetResource.ashx?stylesheetfile=/App_Themes/lotte/Content/font-awesome/css/font-awesome.css"
	rel="stylesheet" type="text/css" />
<link
	href="../css/bootstrap.css" rel="stylesheet" type="text/css" />
<link
	href="../css/slick/slick.css" rel="stylesheet" type="text/css" />
<link
	href="../css/slick/slick-theme.css" rel="stylesheet" type="text/css" />
<link href="../css/style.master.css" rel="stylesheet" type="text/css" />



<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	 <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<!-- new js -->
<script type="text/javascript"
	src="../js/bootstrap.js"></script>
<script type="text/javascript"
	src="../js/jQuery.print.js"></script>
<script type="text/javascript"
	src="../js/slick.js"></script>
</head>
<body>
	<section>
	<div class="container">
		<div class="row">
			<div class="col-xs-12">
				<div class="movie-details">
					<div class="left-col">
						<div alt="GIA ĐÌNH SIÊU NHÂN 2" class="movie-img img-background"
							style="background-image: url('../images/sieunhan.jpg')"></div>

					</div>
					<div class="right-col">
					  <%

                        Connection con = DBConnect.getConnection();
                        String sql = "select * from PHIM p join LOAIPHIM l on p.IDLPHIM = l.IDLPHIM join DAODIEN d on p.IDDD = d.IDDD  where TENPHIM = N'GIA ĐÌNH SIÊU NHÂN 2' ";
                        Statement st = con.createStatement();
                        ResultSet rs = st.executeQuery(sql);
                        while (rs.next()) {
                    %>
						<div class="caption">
							<h3>
								GIA ĐÌNH SIÊU NHÂN 2 <span class="pull-right"> 
							</h3>

							<div class="sub">
								Đăng ngày : <span> 15.04.2018 - 12:24</span> Bởi : <span>
									admin</span> Lượt xem : <span> 13.156</span>
							</div>
							<ul class="list-unstyled">
								<li><span class="dn_ldtmv70"> Khởi chiếu</span><span
									class="dn_ldtmv330"> <%=rs.getNString("NGAYKHOICHIEU") %></span>
									<div class="clearfix"></div></li>
								<li><span class="dn_ldtmv70"> Loại phim</span><span
									class="dn_ldtmv330"><%=rs.getNString("TENLPHIM") %></span>
									<div class="clearfix"></div></li>
								<li><span class="dn_ldtmv70"> Diễn viên</span><span
									class="dn_ldtmv330"><%=rs.getNString("DIENVIEN") %></span>
									<div class="clearfix"></div></li>
								<li><span class="dn_ldtmv70"> Đạo diễn</span><span
									class="dn_ldtmv330"><%=rs.getNString("TENDD") %></span>
									<div class="clearfix"></div></li>
								<li><span class="dn_ldtmv70"> Thời lượng</span><span
									class="dn_ldtmv330"><%=rs.getNString("THOILUONG") %></span>
									<div class="clearfix"></div></li>
								<li style="height: 10px"></li>
							</ul>
						
						</div>
							 <%
                        }
                    %>
       					</div>
				</div>

				</div>
				</div>
				</div>
				
	</section>
	<section class="section-white">
	<div class="container">
		<div class="row">
			<div class="col-xs-12">
				<ul class="nav nav-tabs lot-tab" role="tablist">
					<li role="presentation" class="active"><a
						href="#tomtacnoidung" role="tab" aria-controls="tomtacnoidung"
						data-toggle="tab">Tóm tắt nội dung</a></li>
					<li role="presentation"><a href="#lichchieuphim" role="tab"
						aria-controls="lichchieuphim" data-toggle="tab">Lịch chiếu
							phim</a></li>

				</ul>

				<div class="tab-content nav-tabs-content">
					<div role="tabpanel" class="tab-pane active" id="tomtacnoidung" >
						<div style="text-align: center;">
							<iframe allow="autoplay; encrypted-media" allowfullscreen=""
								frameborder="0" height="315"
								src="https://www.youtube.com/embed/_-bR50sIbK8" width="560"></iframe>
							<br /> &nbsp;
						</div>
						<div>
							<span style="font-size: 16px;"><span
								style="font-family: times new roman, times, serif;">Gia
									Đình Siêu Nhân 2 đánh dấu những chuyến phiêu lưu anh hùng đầy
									hấp dẫn với sự đổi vai đầy táo bạo. Lần này, mẹ dẻo Helen
									(Elastigirl) sẽ đi thực chiến giải cứu thế giới trong khi bố
									khỏe Bob (Mr. Incredible) lùi về hậu phương trông nom những đứa
									con siêu nhân láu lỉnh gồm: con gái Violet ( siêu năng lực tàng
									hình và tạo ra từ trường làm chắn bảo vệ), con trai Dash (chạy
									siêu nhanh) và cậu út Jack-Jack với sức mạnh chưa được khám
									phá. Một ác nhân bí ẩn xuất hiện với một âm mưu đáng sợ khiến
									cho gia đình siêu nhân phải &ldquo;tái xuất giang hồ&rdquo;.
									Liệu gia đình siêu nhân sẽ vượt qua khó khăn này như thế nào?</span></span><br />
							<br /> <strong
								style="font-family: &amp; quot; times new roman&amp;quot; , times , serif; font-size: 16px; text-align: justify;">&nbsp;GIA
								ĐÌNH SIÊU NHÂN 2&nbsp;</strong><span
								style="font-family: &amp; quot; times new roman&amp;quot; , times , serif; font-size: 16px; text-align: justify;">khởi
								chiếu từ&nbsp;</span><strong
								style="font-family: &amp; quot; times new roman&amp;quot; , times , serif; font-size: 16px; text-align: justify;">15.06.2018</strong><span
								style="font-family: &amp; quot; times new roman&amp;quot; , times , serif; font-size: 16px; text-align: justify;">&nbsp;tại
								hệ thống rạp chiếu phim Lotte Cinema.</span><br /> <br /> &nbsp;
						</div>
						<div style="text-align: center;">
							<span
								style="font-family: &amp; quot; times new roman&amp;quot; , times , serif; font-size: 16px; text-align: justify;"><img
								alt="INCREDIBLES-2_POSTER-(4).jpg"
								src="../images/pstergd.jpg"
								style="width: 1000px; height: 1429px;"
								title="INCREDIBLES-2_POSTER-(4).jpg" /><br /> <br /> <img
								alt="INCREDIBLES-2_H1-(1).jpg"
								src="../images/INCREDIBLES-2_H1-(1).jpg"
								style="width: 1371px; height: 744px;"
								title="INCREDIBLES-2_H1-(1).jpg" /><br /> <br /> <img
								alt="INCREDIBLES-2_H2-(1).jpg"
								src="../images/INCREDIBLES-2_H2-(1).jpg"
								style="width: 1487px; height: 807px;"
								title="INCREDIBLES-2_H2-(1).jpg" /><br /> <br /> <img
								alt="INCREDIBLES-2_H3-(1).jpg"
								src="../images/INCREDIBLES-2_H3-(1).jpg"
								style="width: 1371px; height: 744px;"
								title="INCREDIBLES-2_H3-(1).jpg" /></span><br /> &nbsp;
						</div>

					</div>

					</div>
					</div>
					</div>
					</div>
					</section>
</body>
</html>