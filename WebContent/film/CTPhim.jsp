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
<title>Chi tiết phim</title>
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
				 <%

                        Connection con = DBConnect.getConnection();
                        Statement st = con.createStatement();
                        String Phim_id =(String) session.getAttribute("Phim_id");
                        String sql = "select * from PHIM p join LOAIPHIM l on p.IDLPHIM = l.IDLPHIM join DAODIEN d on p.IDDD = d.IDDD;";
                        if(Phim_id != null){
                        	sql = "select * from PHIM p join LOAIPHIM l on p.IDLPHIM = l.IDLPHIM join DAODIEN d on p.IDDD = d.IDDD where IDPHIM ='" + Phim_id + "';";
                        }
                        ResultSet rs = st.executeQuery(sql);
                        while (rs.next()) {
                    %>
					<div class="left-col">
						<div alt="<%=rs.getNString("TENPHIM") %>" class="movie-img img-background" name="hinh"
							style="background-image: url('<%=rs.getString("HINH") %>')"></div>

					</div>
					<div class="right-col">
						<div class="caption">
							<h3 name =" name" value="<%=rs.getString("TENPHIM")%>">
								<%=rs.getNString("TENPHIM") %><span class="pull-right"> 
							</h3>

							<div class="sub">
								Đăng ngày : <span> 15.04.2018 - 12:24</span> Bởi : <span>
									admin</span> Lượt xem : <span> 13.156</span>
							</div>
							<ul class="list-unstyled">
								<li><span class="dn_ldtmv70" > Khởi chiếu</span><span
									class="dn_ldtmv330" name="ngay" value="<%=rs.getNString("NGAYKHOICHIEU") %>"> <%=rs.getNString("NGAYKHOICHIEU") %></span>
									<div class="clearfix"></div></li>
								<li><span class="dn_ldtmv70"> Loại phim</span><span
									class="dn_ldtmv330" name="tenLP" value="<%=rs.getNString("TENLPHIM") %>"><%=rs.getNString("TENLPHIM") %></span>
									<div class="clearfix"></div></li>
								<li><span class="dn_ldtmv70"> Diễn viên</span><span
									class="dn_ldtmv330" name="tenDV" value="<%=rs.getNString("DIENVIEN") %>"><%=rs.getNString("DIENVIEN") %></span>
									<div class="clearfix"></div></li>
								<li><span class="dn_ldtmv70"> Đạo diễn</span><span
									class="dn_ldtmv330" name="tenDD" value="<%=rs.getNString("TENDD") %>"><%=rs.getNString("TENDD") %></span>
									<div class="clearfix"></div></li>
								<li><span class="dn_ldtmv70"> Thời lượng</span><span
									class="dn_ldtmv330" name = "TL" value ="<%=rs.getNString("THOILUONG") %>"><%=rs.getNString("THOILUONG") %></span>
									<div class="clearfix"></div></li>
								<li style="height: 10px"></li>
							</ul>
						
						</div>
       					</div>
       												 <%
                        }
                    %>
       					
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
						
												<div>
							</div>
							</div>
							</div>
							</div>
							</div>
							</div>
					</section>
</body>
</html>