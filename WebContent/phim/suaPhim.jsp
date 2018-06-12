<%@page import="dao.PhimDAO"%>
<%@page import="model.Phim"%>
<%@page import="dao.DBConnect"%>
<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Sửa phim</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script type="text/javascript" src="<%= request.getContextPath()%>/libraries/ckeditor/ckeditor.js"></script>
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
</head>
<body>
	<% String iDPhim = request.getParameter("id");
    Phim phim = PhimDAO.mapPhim.get(iDPhim);
    %>
	<div class="container">
		<h2>Sửa phim<h2>
		<form class="form-horizontal" action="<%=request.getContextPath()%>/Phim?id=<%=phim.getiDPhim()%>&chucNang=Sua" method="get">
			<div class="form-group">
				<input type="hidden"id="iDPhim" name="iDPhim" value="<%=phim.getiDPhim()%>">
				<label class="control-label col-sm-2" for="ten">Tên phim</label>
				<div class="col-sm-10">
					<input type="text" class="form-control" value="<%=phim.getTenPhim()%>" id="" 
						placeholder="Nhập tên phim" name="tenPhim" >
				</div>
			</div>
			<div class="form-group">
				<label class="control-label col-sm-2" for="hinh">Hình:</label>
				<div class="col-sm-10">
					<input type="text" class="form-control" value="<%=phim.getHinh()%>" id=""
						placeholder="Thêm hình" name="hinh" >
				</div>
			</div>
			<div class="form-group">
				<label class="control-label col-sm-2" for="ngay">Ngày khởi chiếu:</label>
				<div class="col-xs-10">
					<input type="text" class="form-control" id=""
						placeholder="" name="ngayKhoiChieu" value="<%=phim.getNgayKhoiChieu()%>">

				</div>
			</div>
			<div class="form-group">
				<label class="control-label col-sm-2" for="dienvien"> Diễn viên:</label>
				<div class="col-sm-10">
					<input type="text" class="form-control" id=""
						placeholder="" name="dienVien" value="<%=phim.getDienVien()%>">

				</div>
			</div>
			<div class="form-group">
				<label class="control-label col-sm-2" for="maloai"> Loại:</label>
				<div class="col-sm-10">
					<input type="text" class="form-control" id=""
						placeholder="" name="iDLPhim" value="<%=phim.getiDLPhim()%>">

				</div>
			</div>
			<div class="form-group">
				<label class="control-label col-sm-2" for="">ID đạo diễn:</label>
				<div class="col-sm-10">
					<input type="text" class="form-control" id=""
						placeholder="" name="idDD" value="<%=phim.getiDDD()%>">

				</div>
			</div>
			<div class="form-group">
				<label class="control-label col-sm-2" for=""> Thời lượng:</label>
				<div class="col-sm-10">
					<input type="text" class="form-control" id=""
						placeholder="" name="thoiLuong" value="<%=phim.getThoiLuong()%>">

				</div>
			</div>
			<div class="form-group">
				<label class="control-label col-sm-2" for=""> Nội dung:</label>
				<div class="col-sm-10">
					<textarea rows="20" cols="20" id="noiDung" name="noiDung" value="<%=phim.getNoiDung()%>"></textarea>

				</div>
			</div>
			<div class="form-group">
				<label class="control-label col-sm-2" for=""> Chi tiết:</label>
				<div class="col-sm-10">
					<textarea rows="20" cols="20" id="chiTiet" name="chiTiet" value="<%=phim.getChiTiet()%>"></textarea>

				</div>
			</div>
			

			<div class="form-group">
				<div class="col-sm-offset-2 col-sm-10">
					<button type="submit" class="btn btn-default">Sửa</button>
				</div>
			</div>
		</form>
		<script>
			CKEDITOR.replace('noiDung');
			CKEDITOR.replace('chiTiet');
		</script>
	</div>
</body>
</html>