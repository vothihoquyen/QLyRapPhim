<%-- 
    Document   : edit
    Created on : May 24, 2018, 12:23:04 AM
    Author     : Darkmoon
--%>

<%@page import="model.NhanVien"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <% NhanVien nv = (NhanVien) request.getAttribute("nv");
            boolean isEdit;
            if (nv != null) {
                isEdit = true;
            } else {
                isEdit = false;
            }
            boolean isNullValue;
        %>

        <title><%= isEdit ? "Sửa thông tin" : "Thêm nhân viên"%></title>
    </head>
    <body>
        <div class="container">
            <h2><%= isEdit ? "Sửa thông tin" : "Thêm nhân viên"%></h2>
            <form class="form-horizontal" action="XuLyThemNhanVien" method="post">
                <div class="form-group">
                    <label class="control-label col-sm-2">Mã số nhân viên</label>
                    <div class="col-sm-10">
                        <% if (isEdit) {
                                isNullValue = nv.getMsnv() == null;
                            } else {
                                isNullValue = true;
                            }
                        %>
                        <input type = "" class="form-control" name="username" <%= isEdit ? "disabled=\"true\"" : ""%> value="<%=isNullValue ? "" : nv.getMsnv()%>">
                        <% if (isNullValue && isEdit) { %>        
                        <span style="color: red;" class="help-block">This account is not exist.</span>
                        <% }%>
                    </div>
                </div>
                <div class="form-group">
                    <label class="control-label col-sm-2">Date</label>
                    <%@include file="../built-inComponents/datePicker.jsp" %>
                </div>
                <div class="form-group">
                    <label class="control-label col-sm-2">Họ tên nhân viên</label>
                    <div class="col-sm-10">
                        <% if (isEdit) {
                                isNullValue = nv.getMsnv() == null;
                            } else {
                                isNullValue = true;
                            }
                        %>
                        <input type = "text" class="form-control" name="username" value="<%=isNullValue ? "" : nv.getHoTen()%>">
                        <% if (isNullValue && isEdit) { %>        
                        <span style="color: red;" class="help-block">This account is not exist.</span>
                        <% }%>
                    </div>
                </div>
                <div class="form-group">
                    <label class="control-label col-sm-2">Ngày sinh</label>
                    <div class="col-sm-10">
                        <% if (isEdit) {
                                isNullValue = nv.getMsnv() == null;
                            } else {
                                isNullValue = true;
                            }
                        %>
                        <input type = "" class="form-control" name="username" value="<%=isNullValue ? "" : nv.getNgaySinh()%>">
                        <% if (isNullValue && isEdit) { %>        
                        <span style="color: red;" class="help-block">This account is not exist.</span>
                        <% }%>
                    </div>
                </div>
                <div class="form-group">
                    <label class="control-label col-sm-2">Giới tính</label>
                    <div class="col-sm-10">
                        <% if (isEdit) {
                                isNullValue = nv.getMsnv() == null;
                            } else {
                                isNullValue = true;
                            }
                        %>
                        <input type = "" class="form-control" name="username" value="<%=isNullValue ? "" : nv.getGioiTinh()%>">
                        <% if (isNullValue && isEdit) { %>        
                        <span style="color: red;" class="help-block">This account is not exist.</span>
                        <% }%>
                    </div>
                </div>
                <div class="form-group">
                    <label class="control-label col-sm-2">Bằng cấp</label>
                    <div class="col-sm-10">
                        <input type = "" class="form-control" name="username" value="<%=isNullValue ? "" : nv.getBangCap()%>">
                        <% if (isNullValue && isEdit) { %>        
                        <span style="color: red;" class="help-block">This account is not exist.</span>
                        <% }%>
                    </div>
                </div>
                <div class="form-group">
                    <label class="control-label col-sm-2">Địa chỉ</label>
                    <div class="col-sm-10">
                        <% if (isEdit) {
                                isNullValue = nv.getMsnv() == null;
                            } else {
                                isNullValue = true;
                            }
                        %>
                        <input type = "" class="form-control" name="username" value="<%=isNullValue ? "" : nv.getDiaChi()%>">
                        <% if (isNullValue && isEdit) { %>        
                        <span style="color: red;" class="help-block">This account is not exist.</span>
                        <% }%>
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-sm-offset-2 col-sm-10">
                        <button type="submit" class="btn btn-default">Xác nhận</button>
                    </div>
                </div>
            </form>
        </div>
    </body>
</html>
