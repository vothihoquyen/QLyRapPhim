<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@page import="java.sql.ResultSet"%>
<%@page import="dao.DBConnect"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
 <link href="css/bootstrap.min.css" rel="stylesheet">
  		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
  		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  		
  		<link href="css/bootstrap.min.css" rel="stylesheet">
<link
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
	rel="stylesheet" type="text/css" />
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	
 <!-- Font Awesome -->
<link href="<%=request.getContextPath()%>/vendors/font-awesome/css/font-awesome.min.css"
	rel="stylesheet">

<!-- Datatables -->
<link href="<%=request.getContextPath()%>/vendors/datatables.net-bs/css/dataTables.bootstrap.min.css"
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
<title>Quản lý thành viên</title>
	</head>
	<body>
	
	<div class="container ">
		<div class="row center">
			<h2>
				<strong>Quản lí thành viên</strong>
			</h2>
		</div><br>
		<div class="row">
			<center>
				<a href="ThemTV.jsp"><button
						class="btn btn-sm btn-success" id="Them">
						<span class="glyphicon glyphicon-plus"></span> Thêm thành viên
					</button></a> 
			</center>
		</div>
		<div class="row"></div>
		 <table id="example" class="table table-striped table-bordered"  style="width:100%">
                <thead>
                    <tr>
                        <th>Mã thành viên</th>
                        <th>Tên thành viên</th>
                        <th>Giới tính</th>
                        <th>Ngày sinh</th>
                        <th>Mật khẩu</th>
                        <th>Xóa</th>
						<th>Sửa</th>
                    </tr>
                </thead>
                <tbody id="myTable">
                    <%

                        Connection con = DBConnect.getConnection();
                        String sql = "select * from THANHVIEN";
                        Statement st = con.createStatement();
                        ResultSet rs = st.executeQuery(sql);
                        while (rs.next()) {

                    %>
                    <tr>
                        <td><%= rs.getString("IDTV")%></td>
                        <td><%= rs.getNString("TENTV")%></td>
                        <td><%= rs.getNString("GIOITINH")%></td>
                        <td><%=rs.getString("NGAYSINH") %></td>
                        <td><%=rs.getString("MATKHAU") %></td>
                        <td>
                        <%
					 String view = request.getContextPath()+"/VeiwThanhVien?maTV="+rs.getString("IDTV");
					String del = request.getContextPath()+"/XoaThanhVien?maTV="+rs.getString("IDTV");
					
					%>
								<a href="<%=response.encodeURL(del)%>"><button type="submit" class="btn btn-sm btn-danger" id=""
									aria-label="Right Align">
									<span class="glyphicon glyphicon-trash" aria-hidden="true"></span>
								</button>
						</a></td>
						<td><a href="<%=response.encodeURL(view)%>"><button
									type="submit" class="btn  btn-sm btn-warning"
									aria-label="Right Align">
									<span class="glyphicon glyphicon-edit"></span>
								</button></a></td>
                    </tr>
                    <%
                        }
                    %>
                </tbody>

            </table>
            
        </div>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
        <script src="https://cdn.datatables.net/1.10.16/js/jquery.dataTables.min.js"></script>
        <script src="https://cdn.datatables.net/1.10.16/js/dataTables.bootstrap.min.js"></script>
        <script src="https://cdn.datatables.net/buttons/1.5.1/js/dataTables.buttons.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jszip/3.1.3/jszip.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.32/pdfmake.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.32/pdfmake.min.jss"></script>
        <script src="https://cdn.datatables.net/buttons/1.5.1/js/buttons.html5.min.js"></script>
        <script src="https://cdn.datatables.net/buttons/1.5.1/js/buttons.colVis.min.js"></script>
         <script src="vendors/datatables.net-buttons/js/buttons.print.min.js"></script> 

        <script>

                $(document).ready(function () {
                    var table = $('#example').DataTable({
                        lengthChange: false,
                        buttons: ['copy', 'excel', 'pdf','print']
                    });

                    table.buttons().container()
                            .appendTo('#example_wrapper .col-sm-6:eq(0)');
                    table.buttons().appendTo('example_bth .btn-danger');
                });

        </script>
        <script >
        $(document).ready(function(){
        	  $("#myInput").on("keyup", function() {
        	    var value = $(this).val().toLowerCase();
        	    $("#myTable tr").filter(function() {
        	      $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
        	    });
        	  });
        	});
        	</script>
	</body>
</html>