<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Thêm suất chiếu</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script>
	$(function() {
		$("#datepicker").datepicker();
	});
</script>
</head>
<body>
	<div class="container">
		<h2>Thêm suất chiếu</h2>
		<form class="form-horizontal" action="LichChieu?chucNang=Add" method="post">
		<div class="form-group">
			<label class="control-label col-sm-2" for="masuatchieu">Mã
				suất chiếu:</label>
			<div class="col-sm-10">
				<input type="text" class="form-control" id="IDsuatchieu"
					placeholder="Enter ID" name="masuatchieu">
			</div>
		</div>
		<br> <br><br>
		<div class="form-group">
			<label class="control-label col-sm-2" for="ngaychieu"> Ngày
				chiếu:</label>
			<div class="col-sm-10">

				<input type="date" class="form-control" name="date"
					placeholder="Nhập ngày chiếu" id="datepicker">
			</div>
		</div>
		<br><br>
		<div class="form-group">
			<label class="control-label col-sm-2" for="maphim">Mã Phim:</label>
			<div class="col-sm-10">
				<input type="text" class="form-control" id="IDphim"
					placeholder="Enter ID Film" name="maphim">
			</div>
		</div>
		<br><br>
		<div class="form-group">
			<label class="control-label col-sm-2" for="gio">Giờ chiếu:</label>
			<div class="col-xs-10">
				<select style="color: black;" name="soluong">
					<%
						for (int i = 1; i < 24; i++) {
					%>
					<option value=<%=i%>><%=i%></option>
					<%
						}
					%>
				</select>
			</div>

		</div>
		<div class="form-group">
			<div class="col-sm-offset-2 col-sm-10">
				<div class="checkbox">
					<label><input type="checkbox" name="remember">
						Remember me</label>
				</div>
			</div>
		</div>
		<div class="form-group">
			<div class="col-sm-offset-2 col-sm-10">
				<button type="submit" class="btn btn-default">Thêm</button>
			</div>
		</div>
</form>
	</div>
</body>
</html>