
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.util.Map"%>
<%@page import="dao.DBConnect"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="model.Phim"%>
<%@page import="dao.PhimDAO"%>
			<%
			Map<String, Phim> mapPhim = PhimDAO.mapPhim;
			%>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Quản lí phim</title>
        <link href="css/bootstrap.min.css" rel="stylesheet">
        <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <link href="https://cdn.datatables.net/1.10.16/css/dataTables.bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <link href="https://cdn.datatables.net/buttons/1.5.1/css/buttons.bootstrap.min.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
           <div class="container ">
		<div class="row center">
			<h2>
				<strong>Quản lí phim</strong>
			</h2>
		</div><br>
		<div class="row">
			<center>
				<a href="themPhim.jsp"><button
						class="btn btn-sm btn-success" id="Them">
						<span class="glyphicon glyphicon-plus"></span> Thêm phim
					</button></a> 
				<a href="<%=request.getContextPath()%>/Phim?chucNang=XoaTatCa"><button
						class="btn btn-sm btn-success" id="Them">
						<span class="glyphicon glyphicon"></span> Xóa tất cả
					</button></a> 
					<%if(!PhimDAO.mapUndo.isEmpty()){ %>
				<a href="<%=request.getContextPath()%>/Phim?chucNang=Undo"><button class="btn btn-sm btn-success" id=""><i class="fa fa-undo" aria-hidden="true"></i>  Undo</button></a>
				<%} %>
			</center>
		</div>
		<div class="row"></div>
		 <table id="example" class="table table-striped table-bordered"  style="width:100%">
                <thead>
                    <tr>
                        <th>IDPHIM</th>
                        <th>TÊN PHIM</th>
                        <th>Thao tác</th>
                    </tr>
                </thead>
                <tbody id="myTable">
                   <%
				Map<String,Phim> listPhim = PhimDAO.mapPhim;
					for (Phim ph : listPhim.values()) {
				%>
                    <tr>
                        <td><%= ph.getiDPhim()%></td>
                        <td><%= ph.getTenPhim()%></td>
                       <td> 
                        <a href="<%=request.getContextPath()%>/Phim?id=<%=ph.getiDPhim() %>&chucNang=Xoa"><button type="submit" class="btn btn-sm btn-danger" id=""
									aria-label="Right Align">
									<span class="glyphicon glyphicon-trash" aria-hidden="true"></span>
								</button>
						</a>
                     <a href="suaPhim.jsp?id=<%=ph.getiDPhim()%>&chucNang=Sua"><button
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
 		
        <script>

            $(document).ready(function () {
                var table = $('#example').DataTable({
                    lengthChange: false,
                    buttons: ['copy', 'excel', 'pdf']
                });

                table.buttons().container()
                        .appendTo('#example_wrapper .col-sm-6:eq(0)');
                table.buttons().appendTo('example_bth .btn-danger');
            });

        </script>
    </body>
</html>
