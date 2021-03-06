<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	
<!-- Bootstrap -->
<link
	href="<%=request.getContextPath()%>/vendors/bootstrap/dist/css/bootstrap.min.css"
	rel="stylesheet">
<!-- Font Awesome -->
<link
	href="<%=request.getContextPath()%>/vendors/font-awesome/css/font-awesome.min.css"
	rel="stylesheet">

<!-- Datatables -->
<link
	href="<%=request.getContextPath()%>/vendors/datatables.net-bs/css/dataTables.bootstrap.min.css"
	rel="stylesheet">
<link
	href="<%=request.getContextPath()%>/vendors/datatables.net-buttons-bs/css/buttons.bootstrap.min.css"
	rel="stylesheet">
<link
	href="<%=request.getContextPath()%>/vendors/datatables.net-fixedheader-bs/css/fixedHeader.bootstrap.min.css"
	rel="stylesheet">
<link
	href="<%=request.getContextPath()%>/vendors/datatables.net-responsive-bs/css/responsive.bootstrap.min.css"
	rel="stylesheet">
<link
	href="<%=request.getContextPath()%>/vendors/datatables.net-scroller-bs/css/scroller.bootstrap.min.css"
	rel="stylesheet">
<style type="text/css">
p {
	padding-top: 6px;
}

hr {
	width: 90%;
}

.form-center {
	margin-left: 200px;
}
</style>


<link rel="stylesheet"
	href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<link rel="stylesheet" href="/resources/demos/style.css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script>
	$(function() {
		$("#datepicker").datepicker();
	});
</script>
<title>Thêm Thành Viên</title>
</head>
<script>
	$(document).ready(function() {
		// binds form submission and fields to the validation engine
		$("#addcustomerID").validationEngine();
	});
	function checkHELLO(field, rules, i, options) {
		if (field.val() != "HELLO") {
			// this allows to use i18 for the error msgs
			return options.allrules.validate2fields.alertText;
		}
	}
</script>
<body>
	<!-- validation form -->

	<script type="text/javascript">
		$(document)
				.ready(
						function() {
							function validatePhone(txtPhone) {
								var filter = /^[0-9-+]+$/;
								if (filter.test(txtPhone + "")
										&& txtPhone.length >= 10
										&& txtPhone.length < 12) {
									return true;
								} else {
									return false;
								}
							}
							function validateEmail(sEmail) {
								var filter = /^([\w-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([\w-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$/;
								if (filter.test(sEmail)) {
									return true;
								} else {
									return false;
								}
							}
							$('#addcustomerID')
									.bind(
											{
												'submit' : function() {

													if ($('#idTV').val() == '') {
														$('#idTV')
																.css(
																		'box-shadow',
																		'0px 0px 2px 2px red');
														$('#error-id')
																.html(
																		'Bạn không được bỏ trống trường này!');
														$('#icon-id')
																.html(
																		'<span style="color:green" class=" glyphicon glyphicon-remove"></span>');
														return false;
													}
													if ($('#name').val() == '') {
														$('#name')
																.css(
																		'box-shadow',
																		'0px 0px 2px 2px red');
														$('#error-name')
																.html(
																		'Bạn không được bỏ trống trường này!');
														$('#icon-name')
																.html(
																		'<span style="color:green" class=" glyphicon glyphicon-remove"></span>');
														return false;
													}
													if ($('#gioiTinh').val() == '') {
														$('#gioiTinh')
																.css(
																		'box-shadow',
																		'0px 0px 2px 2px red');
														$('#error-gioiTinh')
																.html(
																		'Bạn không được bỏ trống trường này!');
														$('#icon-gioiTinh')
																.html(
																		'<span style="color:green" class=" glyphicon glyphicon-remove"></span>');
														return false;
													}

													if ($('#datepicker').val() == '') {
														$('#error-date')
														.html(
																'Bạn không được bỏ trống trường này!');
														$('#error_date')
																.html(
																		'<strong><span class="glyphicon glyphicon-remove"></span></strong>');
														return false;
													}
													if ($('#matkhau').val() == '') {
														$('#matkhau')
																.css(
																		'box-shadow',
																		'0px 0px 2px 2px red');
														$('#error-pass')
																.html(
																		'Bạn không được bỏ trống trường này!');
														$('#icon-pass')
																.html(
																		'<span class=" glyphicon glyphicon-remove"></span>');
														return false;
													}
													return true;
												},
												'keydown' : function() {
													if ($('#idTV').val().length > 0) {
														$('#idTV')
																.css(
																		'box-shadow',
																		'0px 0px 1px 1px green');
														$('#icon-id')
																.html(
																		'<span class="glyphicon glyphicon-ok "></span>');
														$('#error-id')
																.html(' ');
													}
													if ($('#name').val().length > 0) {
														$('#name')
																.css(
																		'box-shadow',
																		'0px 0px 1px 1px green');
														$('#icon-name')
																.html(
																		'<span class="glyphicon glyphicon-ok "></span>');
														$('#error-name').html(
																' ');
													}
													if ($('#gioiTinh').val().length > 0) {
														$('#gioiTinh')
																.css(
																		'box-shadow',
																		'0px 0px 1px 1px green');
														$('#icon-gioiTinh')
																.html(
																		'<span class="glyphicon glyphicon-ok "></span>');
														$('#error-gioiTinh')
																.html(' ');
													}

													if ($('#datepicker').val().length > 0) {
														$('#date')
																.css(
																		'box-shadow',
																		'0px 0px 1px 1px green');
														$('#icon-date')
																.html(
																		'<span class="glyphicon glyphicon-ok "></span>');
														$('#error-date').html(
																' ');
													}
													if ($('#pass').val().length > 0) {
														$('#pass')
																.css(
																		'box-shadow',
																		'0px 0px 1px 1px green');
														$('#icon-pass')
																.html(
																		'<span class="glyphicon glyphicon-ok "></span>');
														$('#error-pass').html(
																' ');
													}
												},
											});
						});
	</script>
</head>
<body>
	<div class="container">
		<div class="row">
			<h2>
				<strong>Thêm thành viên</strong> <a href="QuanLyTV.jsp"
					style="float: right"><button class="btn btn-info">
						<i class="fa fa-undo" aria-hidden="true"></i> Trở về
					</button></a>
			</h2>
			<hr>
		</div>
		<div class=""></div>
		<div class="form-center">
			<form class="form-horizontal"
				action="<%=request.getContextPath()%>/addThanhVien"
				name="addcustomer" method="post" id="addcustomerID">

				<div class="form-group">
					<label class="control-label col-sm-2" for=""><span class=""></span>
						Mã Thành Viên:</label>
					<div class="col-sm-10">
						<div class="row">
							<div class="col-sm-8">
								<%
					String MaTV = request.getParameter("MaTV");
				%>
				<%
					if (MaTV == null)
						MaTV = "";
				%>
							
								<input type="text" class=" form-control " value="<%=MaTV %>" name="MaTV"
									placeholder="Mã thành viên" id="idTV">
							</div>
							<div class="col-sm-2">
								<p id="icon-id"></p>
							</div>
						</div>
						<div class="row">
							<p style="color: red"></p>
							<%
							if (request.getAttribute("MaTV_err") != null) {
								out.println((String) request.getAttribute("MaTV_err"));
							}
						%>
						</div>
					</div>
				</div>
				<div class="form-group">
					<label class="control-label col-sm-2" for=""><span class=""></span>
						Tên Thành Viên:</label>
					<div class="col-sm-10">
						<div class="row">
							<div class="col-sm-8">
								<input type="text" class=" form-control " value="" name="tenTV"
									placeholder="Tên thành viên" id="name">
							</div>
							<div class="col-sm-2">
								<p id="icon-name"></p>
							</div>
						</div>
						<div class="row">
							<p style="color: red"></p>
							<%
							if (request.getAttribute("tenTV_err") != null) {
								out.println((String) request.getAttribute("tenTV_err"));
							}
						%>
						</div>
					</div>
				</div>
				<div class="form-group">
					<label class="control-label col-sm-2" for=""><span class=""></span>
						Giới Tính:</label>
					<div class="col-sm-10">
						<div class="row">
							<div class="col-sm-8">
								<input type="text" class=" form-control " value=""
									name="gioiTinh" placeholder="Giới tính" id="gioiTinh">
							</div>
							<div class="col-sm-2">
								<p id="icon-gioiTinh"></p>
							</div>
						</div>
						<div class="row">
							<p style="color: red" ></p>
								<%
							if (request.getAttribute("gioiTinh_err") != null) {
								out.println((String) request.getAttribute("gioiTinh_err"));
							}
						%>
						</div>
					</div>
				</div>
				<div class="form-group">
					<label class="control-label col-sm-2" for="pwd">Ngày sinh:</label>
					<div class="col-sm-10">
						<div class="row">
							<div class="col-sm-8">
								<input type="text" class="form-control" id="datepicker" name="date"
									placeholder="Ngày sinh">
							</div>
							<div class="col-sm-2">
								<p id="error_date"></p>
							</div>
						</div>
					</div>
					<div class="row">
						<p style="color: red" ></p>
							<%
							if (request.getAttribute("date_err") != null) {
								out.println((String) request.getAttribute("date_err"));
							}
						%>
					</div>
				</div>
				<div class="form-group">
					<label class="control-label col-sm-2" for=""><span class=""></span>
						Mật khẩu:</label>
					<div class="col-sm-10">
						<div class="row">
							<div class="col-sm-8">
								<input type="password" class="form-control " value=""
									name="pass" placeholder="Nhập mật khẩu" id="pass">
							</div>
							<div class="col-sm-2">
								<p id="icon-pass"></p>
							</div>
						</div>
						<div class="row">
							<p style="color: red"></p>
							<%
							if (request.getAttribute("pass_err") != null) {
								out.println((String) request.getAttribute("pass_err"));
							}
						%>
						</div>
					</div>
				</div>

				<div class="form-group">
					<div class="col-sm-offset-2 col-sm-10">
						<button type="submit" class="btn btn-success">
							<span class="glyphicon glyphicon-plus"></span> Thêm
						</button>
					</div>

				</div>
			</form>

		</div>
	</div>


</body>

</html>
