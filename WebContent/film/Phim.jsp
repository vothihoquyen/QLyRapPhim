<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
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
<link
	href="/CMSPages/GetResource.ashx?stylesheetfile=/App_Themes/lotte/Content/bootstrap/css/bootstrap.css"
	rel="stylesheet" type="text/css" />
<link
	href="/CMSPages/GetResource.ashx?stylesheetfile=/App_Themes/lotte/Content/slick/slick/slick.css"
	rel="stylesheet" type="text/css" />
<link
	href="/CMSPages/GetResource.ashx?stylesheetfile=/App_Themes/lotte/Content/slick/slick/slick-theme.css"
	rel="stylesheet" type="text/css" />
<link
	href="/CMSPages/GetResource.ashx?stylesheetfile=/App_Themes/lotte/Content/style.master.css"
	rel="stylesheet" type="text/css" />



<!--   <script type="text/javascript" src="/App_Themes/lotte/Content/jquery-3.1.1.min.js"></script> -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	 <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<!-- new js -->
<script type="text/javascript"
	src="../js/bootstrap.js"></script>
<script type="text/javascript"
	src="../js/jQuery.print.js"></script>
<script type="text/javascript"
	src="/App_Themes/lotte/Content/slick/slick/slick.js"></script>

</head>
<body>
	<section>
	<div class="container">
		<div class="row">
			<div class="col-xs-12">
				<ul
					class="list-inline list-unstyled lot-tab lot-tab-non-boder lot-tab-long text-uppercase text-center"
					role="tablist">
					<li role="presentation" class="active"><a href="#nowPlaying"
						aria-controls="nowPlaying" role="tab" data-toggle="tab"
						class="btn"> Phim đang chiếu </a></li>
					<li role="presentation"><a href="#commingSoon"
						aria-controls="commingSoon" role="tab" data-toggle="tab"
						class="btn"> Phim sắp chiếu </a></li>
				</ul>
			</div>
		</div>
	</div>
	</section>

	<section>
	<div class="container">
		<div class="row">
			<div class="tab-content nav-tabs-content movie-bt-30 col-pad-8">
				<div role="tabpanel" class="tab-pane active" id="nowPlaying">

					<div class="col-xs-3">


						<div class="movie-box">
							<div class="movie-img img-background"
								style="background-image: url('../images/emgaimua.jpg')"></div>
							<div class="movie-overlay">
								<div class="over">
									<a class="btn btn-border-yellow" style="display:"
										onclick="OpenCustomBootstrapModal('/CMSTemplates/MBMTemplate/FancyBooking.aspx?movieCode=3230&poster=/getattachment/98fbb7ce-1753-497d-a9aa-e6f50a2f955f/NodeAlias.aspx?width=275&height=344')">
										Đặt vé </a> <a class="btn btn-border-yellow"
										href="/Phim/SELFIE-CUNG-THAN-CHET.aspx"> Chi tiết </a>
								</div>
							</div>
							<div class="movie-footer">
								<div class="movie-name">
									<a title="(C18) SELFIE CÙNG THẦN CHẾT "
										href="/Phim/SELFIE-CUNG-THAN-CHET.aspx"> (C18) SELFIE CÙNG
										THẦN ... </a>
								</div>
							</div>
						</div>

					</div>

					<div class="col-xs-3">


						<div class="movie-box">
							<div class="movie-img img-background"
								style="background-image: url('/getattachment/d51c992f-8aef-402d-b55c-5beb568abcef/NodeAlias.aspx?width=275&height=390')">
							</div>
							<div class="movie-overlay">
								<div class="over">
									<a class="btn btn-border-yellow" style="display:"
										onclick="OpenCustomBootstrapModal('/CMSTemplates/MBMTemplate/FancyBooking.aspx?movieCode=3227&poster=/getattachment/d51c992f-8aef-402d-b55c-5beb568abcef/NodeAlias.aspx?width=275&height=344')">
										Đặt vé </a> <a class="btn btn-border-yellow"
										href="/Phim/ĐAO-CUA-NHUNG-CHU-CHO.aspx"> Chi tiết </a>
								</div>
							</div>
							<div class="movie-footer">
								<div class="movie-name">
									<a title="(C13) ĐẢO CỦA NHỮNG CHÚ CHÓ"
										href="/Phim/ĐAO-CUA-NHUNG-CHU-CHO.aspx"> (C13) ĐẢO CỦA
										NHỮNG CHÚ ... </a>
								</div>
							</div>
						</div>

					</div>
</body>
</html>