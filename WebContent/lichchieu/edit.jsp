<%@page import="dao.LichChieuDAO"%>
<%@page import="model.LichChieu"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<% String id = request.getParameter("id");
    LichChieu lichchieu = LichChieuDAO.mapLichChieu.get(id);
    if(lichchieu==null){
    	response.sendError(300, "Lịch chiếu này Da Bi Xoa!!!");
    }
    %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Sửa lịch chiếu</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

</head>
<body>
	<div class="container">
		<h2>Sửa lịch chiếu</h2>
		<form class="form-horizontal" action="LichChieu?chucNang=Edit&id=<%=lichchieu.getiDSuatChieu()%>" method="post">
			<div class="form-group">
			<input type="hidden"id="IDsuatchieu" name="masuatchieu" value="<%=lichchieu.getiDSuatChieu() %>">
				<label class="control-label col-sm-2" for="ngaychieu">Ngày chiếu:</label>
				<div class="col-sm-10">
					<input type="text" class="form-control" id="ngaychieu"
						placeholder="Enter date" name="ngaychieu" value="<%=lichchieu.getNgayChieu() %>">
				</div>
			</div>
			<div class="form-group">
				<label class="control-label col-sm-2" for="gio">Giờ chiếu:</label>
				<div class="col-sm-10">
					<input type="text" class="form-control" id="gio"
						placeholder="Enter time" name="gio" value="<%=lichchieu.getGio()%>">
				</div>
			</div>
			<div class="form-group">
				<label class="control-label col-sm-2" for="maphim">Mã phim:</label>
				<div class="col-sm-10">
					<input type="text" class="form-control" id="IDphim"
						placeholder="Enter ID Films" name="maphim" value="<%=lichchieu.getiDPhim()%>">
				</div>
			</div>
			
			<div class="form-group">
				<div class="col-sm-offset-2 col-sm-10">
					<button type="submit" class="btn btn-default">Sửa</button>
				</div>
			</div>
		</form>
	</div>
</body>
</html>