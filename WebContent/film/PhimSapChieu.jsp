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
	<section class="bg-color-yellow-1 section-movie-banner">
	<div class="container">
		<div>
				<div class="col-xs-3">
					<div class="movie-box-banner">
						<div class="movie-box">
							<a title="(3D)THẾ GIỚI KHỦNG LONG: VƯƠNG QUỐC SỤP ĐỔ"
								href="/Phim/THE-GIOI-KHUNG-LONG-VUONG-QUOC-SUP-ĐO-(1).aspx">
								<div class="movie-img img-background"
									style="background-image: url('../images/khunglong.jpg')">
								</div>
							</a>
							<div class="movie-footer">
								<div class="movie-name">
									<a title="(3D) THẾ GIỚI KHỦNG LONG: VƯƠNG QUỐC SỤP ĐỔ"
										href="/Phim/THE-GIOI-KHUNG-LONG-VUONG-QUOC-SUP-ĐO-(1).aspx">
										(3D)THẾ GIỚI KHỦNG ... </a>
									<p class="color-gray">
										Từ <strong>08/06/2018 </strong> đến <strong>22/06/2018</strong>
									</p>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="col-xs-9">
					<div class="trailer-movie"></div>
					<div class="hidden movie-fulldesc">
						<div style="text-align: center;">
							<iframe allow="autoplay; encrypted-media" allowfullscreen=""
								frameborder="0" height="315"
								src="https://www.youtube.com/embed/6ZKi0GeoPbg" width="560"></iframe>
							<br /> &nbsp;
						</div>
					</div>
				</div>
			</div>
			<div>
				<div class="col-xs-3">
					<div class="movie-box-banner">
						<div class="movie-box">
							<a title="(C18) NGÔI NHÀ QUỶ ÁM "
								href="/Phim/NGOI-NHA-QUY-AM.aspx">
								<div class="movie-img img-background"
									style="background-image: url('../images/ngoinha.jpg')">
								</div>
							</a>
							<div class="movie-footer">
								<div class="movie-name">
									<a title="NGÔI NHÀ QUỶ ÁM "
										href="/Phim/NGOI-NHA-QUY-AM.aspx">NGÔI NHÀ QUỶ ÁM </a>
									<p class="color-gray">
										Từ <strong>08/06/2018 </strong> đến <strong>22/06/2018</strong>
									</p>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="col-xs-9">
					<div class="trailer-movie"></div>
					<div class="hidden movie-fulldesc">
						<div style="text-align: center;">
							<iframe allow="autoplay; encrypted-media" allowfullscreen=""
								frameborder="0" height="543"
								src="https://www.youtube.com/embed/7KX6t-1FaaY" width="1000"></iframe>
							<br /> &nbsp;
						</div>
					</div>
				</div>
			</div>

			<div>
				<div class="col-xs-3">
					<div class="movie-box-banner">
						<div class="movie-box">
							<a title=" EM GÁI MƯA " href="/Phim/EM-GAI-MUA.aspx">
								<div class="movie-img img-background"
									style="background-image: url('../images/emgaimua.jpg')">
								</div>
							</a>
							<div class="movie-footer">
								<div class="movie-name">
									<a title=" EM GÁI MƯA " href="/Phim/EM-GAI-MUA.aspx">
										EM GÁI MƯA </a>
									<p class="color-gray">
										Từ <strong>30/05/2018 </strong> đến <strong>15/06/2018</strong>
									</p>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="col-xs-9">
					<div class="trailer-movie"></div>
					<div class="hidden movie-fulldesc">
						<div style="text-align: center;">
							<iframe allow="autoplay; encrypted-media" allowfullscreen=""
								frameborder="0" height="315"
								src="https://www.youtube.com/embed/xt_iS0OsQ_4" width="560"></iframe>
						</div>
					</div>
				</div>
			</div>

			
		<script>
			$(function() {
				var fulldesc = $('.movie-fulldesc');
				fulldesc.each(function() {
					var iframe = $(this).find('iframe')[0];
					var src = $(iframe).attr("src");
					if (src.indexOf('https://www.youtube.com') > -1) {
						$(this).siblings('.trailer-movie').html(
								"<iframe allowfullscreen frameborder='0' height='456' src='"
										+ src + "' width='100%'></iframe>");
					}
				});

				$('#movie-slider-banner')
						.slick(
								{
									slidesToShow : 1,
									slidesToScroll : 1,
									dots : false,
									autoplay : false,
									infinite : false,
									autoplaySpeed : 4000,
									speed : 500,
									arrows : true,
									fade : false,
									centerMode : false,
									focusOnSelect : true,
									prevArrow : "<div class='slick-prev'><img  src='../App_Themes/lotte/img/btn_m_prev_on.png'></div>",
									nextArrow : "<div class='slick-next'><img  src='../App_Themes/lotte/img/btn_m_next_on.png'></div>"
								});
			});
		</script>
	</div>
	</div>
	</section>
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