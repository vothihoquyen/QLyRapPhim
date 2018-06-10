<%-- 
    Document   : index
    Created on : May 22, 2018, 10:42:06 PM
    Author     : Darkmoon
--%>

<%@page import="DAO.LichChieuDAO"%>
<%@page import="java.util.Map"%>
<%@page import="model.LichChieu"%>
<%@page import="java.sql.Date"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
				Map<String, LichChieu> mapLichChieu = LichChieuDAO.mapLichChieu;
			%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Quản lí lịch chiếu</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="icon"
	href="<%=request.getContextPath()%>/img/profile/darkmoon.png">
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.0.13/css/all.css"
	integrity="sha384-DNOHZ68U8hZfKXOrtjWvjxusGo9WQnrNx2sqG0tfsghAvtVlRW3tvkXWZh58N9jp"
	crossorigin="anonymous">
<link
	href="<%=request.getContextPath()%>/bootstrap/css/bootstrap.min.css"
	rel="stylesheet" type="text/css">
<link
	href="https://cdn.datatables.net/1.10.16/css/jquery.dataTables.min.css"
	type="text/css" rel="stylesheet">
<link
	href="https://cdn.datatables.net/buttons/1.5.1/css/buttons.dataTables.min.css"
	type="text/css" rel="stylesheet">

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="<%=request.getContextPath()%>/bootstrap/js/bootstrap.min.js"
	type="text/javascript"></script>
<script
	src="<%=request.getContextPath()%>/bootstrap/js/bootstrap.bundle.min.js"
	type="text/javascript"></script>
<script src="https://code.jquery.com/jquery-1.12.4.js"
	type="text/javascript"></script>
<script
	src="https://cdn.datatables.net/1.10.16/js/jquery.dataTables.min.js"
	type="text/javascript"></script>
<script
	src="https://cdn.datatables.net/buttons/1.5.1/js/dataTables.buttons.min.js"
	type="text/javascript"></script>
<script
	src="https://cdn.datatables.net/buttons/1.5.1/js/buttons.print.min.js"
	type="text/javascript"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.32/pdfmake.min.js"
	type="text/javascript"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.32/vfs_fonts.js"
	type="text/javascript"></script>
<script
	src="https://cdn.datatables.net/buttons/1.5.1/js/buttons.html5.min.js"
	type="text/javascript"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jszip/3.1.3/jszip.min.js"
	type="text/javascript"></script>

<script type="text/javascript" src="js/datatablesInit.js"></script>
</head>
<body>
	<div class="container">
		<h3 class="text-primary text-uppercase text-center font-weight-bold">Quản
			lí lịch chiếu</h3>
		<div class="text-right" style="margin: 5px;">
			<a href="add.jsp?chucNang=Add"
				type="button" class="btn btn-success font-weight-bold">
				<i class="fas fa-plus-circle fa-fw fa-lg"></i> Thêm lịch chiếu
			</a>
		</div>
		<table id="myTable" class="table table-striped table-bordered"
			style="width: 100%">
			<thead>

				<tr>
					<th>MSNV</th>
					<th>Họ và tên</th>
					<th>Ngày sinh</th>
					<th>Giới tính</th>
					<th>Thao tác</th>
				</tr>
			</thead>
			<tbody>
				<%
				Map<String,LichChieu> dsLichChieu = LichChieuDAO.mapLichChieu;
					for (LichChieu ds : dsLichChieu.values()) {
				%>
				<tr>
					<td><%=ds.getIDsuatchieu()%></td>
					<td><%=ds.getNgaychieu()%></td>
					<td><%=ds.getGio()%></td>
					<td><%=ds.getIDphim()%></td>
					<td><a
						href="<%=request.getContextPath()%>/XuLyXemNhanVien?msnv=<%=ds.getIDsuatchieu()%>">
							<i class="fas fa-info-circle fa-2x fa-fw" data-toggle="tooltip"
							title="Thông tin chi tiết" style="color: darkturquoise;"></i>
					</a> <a
						href="edit.jsp?id=<%=ds.getIDsuatchieu()%>&chucNang=Edit">
							<i class="far fa-edit fa-2x fa-fw" data-toggle="tooltip"
							title="Sửa thông tin" style="color: #8600b3;"></i>
					</a> <a
						href="LichChieu?chucNang=Delete&id=<%=ds.getIDsuatchieu()%>">
							<i class="far fa-trash-alt fa-2x fa-fw" data-toggle="tooltip"
							title="Xóa nhân viên" style="color: red;"></i>
					</a></td>

				</tr>
				<%
					}
				%>
			</tbody>
			<tfoot>
				<tr>
					<th>MSNV</th>
					<th>Họ và tên</th>
					<th>Ngày sinh</th>
					<th>Giới tính</th>
					<th>Thao tác</th>
				</tr>
			</tfoot>
		</table>
	</div>
</body>
</html>
