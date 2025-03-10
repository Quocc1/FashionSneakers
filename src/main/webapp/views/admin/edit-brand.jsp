<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="author" content="">
        <title>Fashion Sneaker - Admin</title>
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
        <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.2/css/bootstrap.min.css">
        <script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.2/js/bootstrap.min.js"></script>
        <script src="views/admin/js/jquery.twbsPagination.js" type="text/javascript"></script>
        <script src="./ckeditor/ckeditor.js"></script>

        <!-- Custom fonts for this template -->
        <link href="views/admin/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
        <link
            href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
            rel="stylesheet">

        <!-- Custom styles for this template -->
        <link href="views/admin/css/sb-admin-2.min.css" rel="stylesheet">
        <link href="views/admin/css/table.css" rel="stylesheet">

        <!-- Custom styles for this page -->
        <link href="views/admin/vendor/datatables/dataTables.bootstrap4.min.css" rel="stylesheet">

    </head>

    <body id="page-top">

        <!-- Page Wrapper -->
        <div id="wrapper">

            <!-- Sidebar -->
            <jsp:include page="./includes/sidebar.jsp"></jsp:include>
                <!-- End of Sidebar -->

                <!-- Content Wrapper -->
                <div id="content-wrapper" class="d-flex flex-column">

                    <!-- Main Content -->
                    <div id="content">

                        <!-- Topbar -->
                    <jsp:include page="./includes/header.jsp"></jsp:include>
                        <!-- End of Topbar -->


                        <!-- Start of Table -->
                        <div class="page-content container">
                            <div class="row">
                                <div class="col-xs-12">
                                <c:if test="${not empty messageResponse}">
                                    <div class="alert alert-${alert}">
                                        ${messageResponse}
                                    </div>
                                </c:if>
                                <form id="formSubmit" action="api-admin-brand" method="post">
                                    <div class="form-group">
                                        <label class="control-label no-padding-right">Tên Thương Hiệu</label>
                                        <div class="">
                                            <input type="text" required class="form-control" id="brand_name" name="brand_name" value="${brand.brand_name}"/>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <div class="col-sm-12">
                                            <c:if test="${!empty brand.id}">
                                                <input type="button" class="btn btn-white btn-warning btn-bold" value="Cập nhật" id="btnAddOrUpdateNew"/>
                                            </c:if>
                                            <c:if test="${empty brand.id}">
                                                <input type="button" class="btn btn-white btn-warning btn-bold" value="Thêm" id="btnAddOrUpdateNew"/>
                                            </c:if>
                                        </div>
                                    </div>
                                    <c:if test="${!empty brand.id}">
                                        <input type="hidden" name="method" value="PUT">
                                        <input type="hidden" value="${brand.id}" id="id" name="id"/>
                                    </c:if>
                                </form>
                            </div>
                        </div>
                    </div>
                    <!-- End of Table -->

                </div>
                <!-- End of Main Content -->

                <!-- Footer -->
                <jsp:include page="./includes/footer.jsp"></jsp:include>
                <!-- End of Footer -->

            </div>
            <!-- End of Content Wrapper -->

        </div>
        <!-- End of Page Wrapper -->

        <!-- Scroll to Top Button-->
        <a class="scroll-to-top rounded" href="#page-top">
            <i class="fas fa-angle-up"></i>
        </a>

        <script>
            $('#btnAddOrUpdateNew').click(function (e) {
                e.preventDefault();
                $('#formSubmit').submit();
            });
        </script>

        <script>
            $(document).ready(function () {
                $('[data-toggle="tooltip"]').tooltip();
            });
        </script>

        <!-- Bootstrap core JavaScript-->
        <script src="/views/admin/vendor/jquery/jquery.min.js"></script>
        <script src="/views/admin/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

        <!-- Core plugin JavaScript-->
        <script src="/views/admin/vendor/jquery-easing/jquery.easing.min.js"></script>

        <!-- Custom scripts for all pages-->
        <script src="/views/admin/js/sb-admin-2.min.js"></script>

        <!-- Page level plugins -->
        <script src="/views/admin/vendor/datatables/jquery.dataTables.min.js"></script>
        <script src="/views/admin/vendor/datatables/dataTables.bootstrap4.min.js"></script>

        <!-- Page level custom scripts -->
        <script src="/views/admin/js/demo/datatables-demo.js"></script>

    </body>

</html>