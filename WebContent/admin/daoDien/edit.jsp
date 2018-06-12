<%-- 
    Document   : edit
    Created on : May 24, 2018, 12:23:04 AM
    Author     : Darkmoon
--%>

<%@page import="model.DaoDien"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sửa thông tin</title>
    </head>
    <body>
        <% DaoDien dd = (DaoDien) request.getAttribute("nv");
            boolean fieldError;%>
        <div class="container">
            <h2>Sửa thông tin</h2>
            <form class="form-horizontal" action="XuLyThemNhanVien" method="post">
                <div class="form-group">
                    <label class="control-label col-sm-2">Mã số nhân viên</label>
                    <div class="col-sm-10">
                        <% fieldError = (dd.getMsnv() == null);%>
                        <input type = "" class="form-control" name="username" disabled="true" value="<%= fieldError ? "" : nv.getMsnv()%>">
                        <% if (fieldError) { %>        
                        <span style="color: red;" class="help-block">This account is not exist.</span>
                        <% }%>
                    </div>
                </div>
                <div class="form-group">
                    <label class="control-label col-sm-2">Ngày sinh</label>
                    <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
                    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
                    <script src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.11.1/i18n/datepicker-vi.js"></script>
                    <script>
                        $(function () {
                            $("#datepicker").datepicker({
                                //showOn: "button",
                                buttonImage: "https://png.icons8.com/dotty/calendar/32",
                                buttonImageOnly: true,
                                buttonText: "Chọn ngày",
                                format: "dd/mm/yyyy",
                                altField: "#alternate",
                                altFormat: "    DD, d tháng m, yy",
                                language: "vi",
                                todayHighlight: true,
                                changeMonth: true,
                                changeYear: true,
                                showOtherMonths: true,
                                selectOtherMonths: true,
                                showAnim: "slideDown"
                            });
                        });
                    </script>

                    <div class="col-sm-10 input-group date">
                        <input type="text" class="form-control" id="datepicker" onclick="this.setSelectionRange(0, this.value.length)" maxlength="0" value="dd/mm/yyyy" >
                        <input type="text" id="alternate" disabled="true"  size="90">
                        <span class="input-group-addon"><i class="glyphicon glyphicon-th"></i></span>
                    </div>
                </div>
                <div class="form-group">
                    <label class="control-label col-sm-2">Họ tên nhân viên</label>
                    <div class="col-sm-10">

                        <input type = "text" class="form-control" name="username" value="">

                        <span style="color: red;" class="help-block">This account is not exist.</span>
                    </div>
                </div>
                <div class="form-group">
                    <label class="control-label col-sm-2">Ngày sinh</label>
                    <div class="col-sm-10">
                        <input type = "" class="form-control" name="username" value="">

                        <span style="color: red;" class="help-block">This account is not exist.</span>

                    </div>
                </div>
                <div class="form-group">
                    <label class="control-label col-sm-2">Giới tính</label>
                    <div class="col-sm-10">
                        <input type = "" class="form-control" name="username" value="">

                        <span style="color: red;" class="help-block">This account is not exist.</span>

                    </div>
                </div>
                <div class="form-group">
                    <label class="control-label col-sm-2">Bằng cấp</label>
                    <div class="col-sm-10">
                        <input type = "" class="form-control" name="username" value="">

                        <span style="color: red;" class="help-block">This account is not exist.</span>

                    </div>
                </div>
                <div class="form-group">
                    <label class="control-label col-sm-2">Địa chỉ</label>
                    <div class="col-sm-10">
                        <input type = "" class="form-control" name="username" value="">

                        <span style="color: red;" class="help-block">This account is not exist.</span>
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
