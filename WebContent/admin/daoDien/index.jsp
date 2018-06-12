<%-- 
    Document   : index
    Created on : May 22, 2018, 10:42:06 PM
    Author     : Darkmoon
--%>

<%@page import="model.DaoDien"%>
<%@page import="java.util.ArrayList"%>
<%@page import="dao.DaoDienDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>QL Đạo diễn</title>
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.13/css/all.css">
        <link href="<%=request.getContextPath()%>/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css">
        <link href="https://cdn.datatables.net/1.10.16/css/jquery.dataTables.min.css" type="text/css" rel="stylesheet">
        <link href="https://cdn.datatables.net/buttons/1.5.1/css/buttons.dataTables.min.css" type="text/css" rel="stylesheet">

        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="<%=request.getContextPath()%>/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
        <script src="<%=request.getContextPath()%>/bootstrap/js/bootstrap.bundle.min.js" type="text/javascript"></script>
        <script src="https://code.jquery.com/jquery-1.12.4.js" type="text/javascript"></script>
        <script src="https://cdn.datatables.net/1.10.16/js/jquery.dataTables.min.js" type="text/javascript"></script>
        <script src="https://cdn.datatables.net/buttons/1.5.1/js/dataTables.buttons.min.js" type="text/javascript"></script>
        <script src="https://cdn.datatables.net/buttons/1.5.1/js/buttons.print.min.js" type="text/javascript"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.32/pdfmake.min.js" type="text/javascript"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.32/vfs_fonts.js" type="text/javascript"></script>
        <script src="https://cdn.datatables.net/buttons/1.5.1/js/buttons.html5.min.js" type="text/javascript"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jszip/3.1.3/jszip.min.js" type="text/javascript"></script>
        <script>
            $(document).ready(function () {
                var table = $('#myTable').DataTable({
                    dom: 'lfrtipB',
                    paging: true,
                    autoWidth: true,
                    initComplete: function () {
                        this.api().columns().every(function () {
                            var column = this;
                            var select = $('<select><option value="">Lọc...</option></select>')
                                    .appendTo($(column.footer()).empty())
                                    .on('change', function () {
                                        var val = $.fn.dataTable.util.escapeRegex(
                                                $(this).val()
                                                );
                                        column.search(val ? '^' + val + '$' : '', true, false)
                                                .draw();
                                    });
                            column.data().unique().sort().each(function (d, j) {
                                if (d.indexOf('>') < 0)
                                    select.append('<option value="' + d + '">' + d + '</option>');
                            });
                        });
                    },
                    buttons: [
                        {
                            extend: 'copy',
                            name: 'copy',
                            title: function () {
                                return document.title.replace(/QL/, 'Danh sách');
                            },
                            key: {
                                key: 'c',
                                ctrlKey: true
                            }
                        },
                        {
                            extend: 'print',
                            name: 'print',
                            title: function () {
                                return document.title.replace(/QL/, 'Danh sách');
                            },
                            key: {
                                key: 'p',
                                ctrlKey: true
                            }
                        },
                        {
                            title: function () {
                                return document.title.replace(/QL/, 'Danh sách');
                            },
                            extend: 'print',
                            name: 'printCurrent',
                            text: 'In trang hiện tại',
                            exportOptions: {
                                modifier: {
                                    page: 'current'
                                }
                            },
                            key: {
                                key: 'p',
                                shiftKey: true,
                                ctrlKey: true
                            }
                        },
                        {
                            title: function () {
                                return document.title.replace(/QL/, 'Danh sách');
                            },
                            extend: 'pdf',
                            name: 'pdf'
                        },
                        {
                            title: function () {
                                return document.title.replace(/QL/, 'Danh sách');
                            },
                            extend: 'excel',
                            name: 'excel'
                        }
                    ],
                    lengthMenu: [[5, 10, 20, -1], [5, 10, 20, "All"]],
                    //scrollY: '50vh',
                    scrollCollapse: true,
                    language: {
                        zeroRecords: "Không có dữ liệu phù hợp",
                        info: "Trang _PAGE_ trên tổng số _PAGES_ trang",
                        infoEmpty: "Không tìm thấy kết quả",
                        decimal: ",",
                        emptyTable: "Bảng không chứa dữ liệu",
                        infoFiltered: "(tìm từ _MAX_ dòng dữ liệu)",
                        infoPostFix: "",
                        thousands: ".",
                        lengthMenu: "Hiển thị _MENU_ dòng mỗi trang",
                        loadingRecords: "Đang tải...",
                        processing: "Đang xử lý...",
                        search: "Tìm kiếm:",
                        paginate: {
                            first: "Đầu",
                            last: "Cuối",
                            next: "Sau",
                            previous: "Trước"
                        },
                        aria: {
                            sortAscending: ": kích hoạt để sắp xếp cột tăng dần",
                            sortDescending: ": kích hoạt để sắp xếp cột giảm dần"
                        },
                        buttons: {
                            print: 'In dữ liệu',
                            copy: 'Sao chép',
                            excel: 'Xuất file excel',
                            pdf: 'Xuất file pdf',
                            copyTitle: 'Copy dữ liệu vào bộ nhớ tạm (clipboard)',
                            copyKeys: 'Nhấn <i>ctrl \u2318 C</i> để sao chép dữ liệu trong bảng ra bộ nhớ tạm.',
                            copySuccess: 'Đã copy thành công %d dòng'
                        }
                    }
                });
                table.buttons(1, null).container().appendTo(table.table().container());
            });
        </script>
    </head>
    <body>
        <div class="container">
            <h3 class="text-primary text-uppercase text-center font-weight-bold" style="padding-top: 60px;">Danh sách đạo diễn</h3>

            <div class="text-right" style="margin-top: 5px;">
                <button href="<%=request.getContextPath()%>/XuLyThemDaoDien" type="button" class="btn btn-success font-weight-bold">
                    <i class="fas fa-plus-circle fa-fw fa-lg"></i> Thêm nhân viên
                </button>
            </div>
            <table id="myTable" class="table table-striped table-bordered" style="width:100%">
                <% ArrayList<DaoDien> dsdd = DaoDienDAO.listDaoDien();%>
                <thead>

                    <tr>
                        <th>Mã số đạo diễn</th>
                        <th>Họ và tên</th>
                        <th>Quê quán</th>
                        <th>Thao tác</th>
                    </tr>

                </thead>
                <tbody>
                    <% for (DaoDien dd : dsdd) {%>
                    <tr>
                        <td><%=dd.getIDDD()%></td>
                        <td><%=dd.getTenDD()%></td>
                        <td><%=dd.getQueQuan()%></td>
                        <td>
                            <a href="<%=request.getContextPath()%>/XuLyXemDaoDien?msnv=<%=dd.getIDDD()%>">
                                <i class="fas fa-info-circle fa-2x fa-fw" data-toggle="tooltip" title="Thông tin chi tiết" style="color:darkturquoise;"></i>
                            </a>
                            <a href="<%=request.getContextPath()%>/XuLySuaDaoDien?msnv=<%=dd.getIDDD()%>">
                                <i class="far fa-edit fa-2x fa-fw" data-toggle="tooltip" title="Sửa thông tin" style="color:#8600b3;"></i>
                            </a>
                            <a href="<%=request.getContextPath()%>/XuLyXoaDaoDien?msnv=<%=dd.getIDDD()%>">
                                <i class="far fa-trash-alt fa-2x fa-fw" data-toggle="tooltip" title="Xóa nhân viên" style="color:red;"></i>
                            </a>
                        </td>
                    </tr>
                    <%}%>
                </tbody>
                <tfoot>
                    <tr>
                        <th>Mã số đạo diễn</th>
                        <th>Họ và tên</th>
                        <th>Quê quán</th>
                        <th>Thao tác</th>
                    </tr>
                </tfoot>
            </table>
        </div>
    </body>
</html>
