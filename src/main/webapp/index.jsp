<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">

    <!DOCTYPE html>
    <%@include file="components/head.jsp"%>

    <body id="page-top">
        <!-- Page Wrapper -->
        <div id="wrapper">
            <%@include file="components/sidebar.jsp"%>
            <div id="content-wrapper" class="d-flex flex-column">
                <!-- Main Content -->
                <div id="content">
                    <%@include file="components/topbar.jsp"%>
                    <%@include file="components/container.jsp"%>
                </div>
                <%@include file="components/footer.jsp"%>
            </div>
        </div>
        <!-- End of Page Wrapper -->
        <%@include file="components/icon.jsp"%>
        <%@include file="components/login.jsp"%>
        <%@include file="components/scriptjs.jsp"%>
    </body>

</html>