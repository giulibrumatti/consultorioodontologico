<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
    <!DOCTYPE html>
    <%@include file="components/head.jsp"%> 
    <body id="page-top">
        <% HttpSession misession = request.getSession();
            String usuario = (String) request.getSession().getAttribute("usuario");
            
            if(usuario == null){
                response.sendRedirect("sinLogin.jsp");
            }
        %>
        <div id="wrapper">
            <%@include file="components/sidebarmenu.jsp"%>
            <div id="content-wrapper" class="d-flex flex-column">
                <div id="content">
                    <%@include file="components/topbarusuario.jsp"%>
                    <div class="container-fluid">
                        <div class="d-sm-flex align-items-center justify-content-between mb-4">
                            <h1 class="h3 mb-0 text-gray-800">Consultorio Odontológico</h1>
                        </div>
                    </div>
                </div>
                <%@include file="components/footer.jsp"%>
            </div>
        </div>
        <%@include file="components/icon.jsp"%>
        <%@include file="components/scriptjs.jsp"%>
    </body>
</html>