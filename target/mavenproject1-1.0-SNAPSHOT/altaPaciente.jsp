<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">

    <!DOCTYPE html>
    <%@include file="components/head.jsp"%>

    <body id="page-top">
        <% HttpSession misession = request.getSession();
            String usuario = (String) request.getSession().getAttribute("userlogin");
            if (usuario == null) {
                response.sendRedirect("sinLogin.jsp");
            }
        %>
        <!-- Page Wrapper -->
        <div id="wrapper">
            <%@include file="components/sidebarmenu.jsp"%>
            <div id="content-wrapper" class="d-flex flex-column">
                <!-- Main Content -->
                <div id="content">
                    <%@include file="components/topbarusuario.jsp"%>
                    <%@include file="components/containerAltaPaciente.jsp"%>
                </div>
                <%@include file="components/footer.jsp"%>
            </div>
        </div>
        <!-- End of Page Wrapper -->
        <%@include file="components/icon.jsp"%>
        <%@include file="components/scriptjs.jsp"%>
    </body>

</html>