<%-- 
    Document   : info
    Created on : May 23, 2018, 11:28:14 PM
    Author     : Darkmoon
--%>

<%@page import="model.NhanVien"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Thông tin NV</title>
    </head>
    <body>
        <% NhanVien nv = (NhanVien) request.getAttribute("nv");
            if (nv != null) {%>
        <div class="container">
            <div class="form-group">
                <label>Mã số nhân viên</label>
                <div class="col-sm-10">
                    <label><%=nv.getMsnv()%> </label>
                </div>
            </div>
            <div class="form-group">
                <label>Họ tên nhân viên</label>
                <div class="col-sm-10">
                    <label><%=nv.getHoTen()%> </label>
                </div>
            </div>
            <div class="form-group">
                <label>Ngày tháng năm sinh</label>
                <div class="col-sm-10">
                    <label><%=nv.getNgaySinh()%> </label>
                </div>
            </div>
            <div class="form-group">
                <label>Giới tính</label>
                <div class="col-sm-10">
                    <label><%=nv.getGioiTinh()%> </label>
                </div>
            </div>
            <div class="form-group">
                <label>Mã số nhân viên</label>
                <div class="col-sm-10">
                    <label><%=nv.getDiaChi()%> </label>
                </div>
            </div>
            <div class="form-group">
                <label>Mã số nhân viên</label>
                <div class="col-sm-10">
                    <label><%=nv.getBangCap()%> </label>
                </div>
            </div>
        </div>
        <%} else { %>
        <div class="container">
            <h1 class="text-danger text-uppercase text-center font-weight-bold"> Người dùng không tồn tại </h1>
        </div>
        <% }%>
    </body>
</html>
