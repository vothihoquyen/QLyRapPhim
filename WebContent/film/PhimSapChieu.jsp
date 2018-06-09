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
<title>Phim</title>
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
<link href="../css/bootstrap.css" rel="stylesheet" type="text/css" />
<link href="../css/slick/slick.css" rel="stylesheet" type="text/css" />
<link href="../css/slick/slick-theme.css" rel="stylesheet"
	type="text/css" />
<link href="../css/style.master.css" rel="stylesheet" type="text/css" />



<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<!-- new js -->
<script type="text/javascript" src="../js/bootstrap.js"></script>
<script type="text/javascript" src="../js/jQuery.print.js"></script>
<script type="text/javascript" src="../js/slick.js"></script>

</head>
<body>
	<script>
		$(".phimsc").addClass('active');
	</script>
	
	<section>
	<div class="container">
		<div class="row">
			<div class="col-xs-12">
				<ul
					class="list-inline list-unstyled lot-tab lot-tab-non-boder lot-tab-long text-uppercase text-center"
					role="tablist">
					<li class="phimdc"><a href="Phim.jsp" class="btn"> Phim
							đang chiếu </a></li>
					<li class="phimsc"><a href="PhimSapChieu.jsp" class="btn">
							Phim sắp chiếu </a></li>
				</ul>
			</div>
		</div>
	</div>
	</section>

	<section>
	<div class="container">
		<div class="row" id="box">
			<div class="tab-content nav-tabs-content movie-bt-30 col-pad-8"
				id="box">
				<%
					Connection con = DBConnect.getConnection();
					String sql = "Select * from PHIM where THOILUONG = '' ";
					Statement st = con.createStatement();
					ResultSet rs = st.executeQuery(sql);
					while (rs.next()) {
				%>

				<div role="tabpanel" class="tab-pane active" id="nowPlaying">
					<div class="col-xs-3">
						<div class="movie-box">
							<div class="movie-img img-background"
								style="width: 275px; height: 390px; margin-bottom: 10px;background-image: url('<%=rs.getNString("HINH")%> ')"></div>
							<div class="movie-overlay">
								<div class="over">
									<a class="btn btn-border-yellow"
										href="<%=rs.getNString("CHITIET")%>"> Chi tiết </a>
								</div>
							</div>
							<div class="movie-footer">
								<div class="movie-name">
									<a title="<%=rs.getNString("TENPHIM")%>" style="width: 275px"
										href="<%=rs.getNString("CHITIET")%>"><%=rs.getNString("TENPHIM")%></a>
								</div>
							</div>
						</div>

					</div>
				</div>
				<%
					}
				%>
			</div>
		</div>
	</div>
	</section>
</body>
</html>