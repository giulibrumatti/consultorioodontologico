

<%@page import="logica.Usuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!-- Begin Page Content -->
<div class="container-fluid">
    <!-- Page Heading -->
    <div class="d-sm-flex align-items-center justify-content-between mb-4">
        <h1 class="h3 mb-0 text-gray-800">Edición de Usuarios</h1>
    </div>
    <% Usuario us = (Usuario) request.getSession().getAttribute("usuEditar");%>
    <form class="user" action="SVEditUsuarios" method="POST">
        <div class="form-group row">
            <div class="col-sm-6 mb-3 mb-sm-0">
                <input type="text" class="form-control form-control-user" name="usuario" id="usuario"
                       placeholder="Usuario" value="<%=us.getNombreUsuario()%>">
            </div>
            <div class="col-sm-6">
                <input type="password" class="form-control form-control-user" name="contra" id="contra"
                       placeholder="Contraseña" value="<%=us.getContrasenia()%>" >              
            </div>
        </div>
        <div class="form-group row">
            <div class="col-sm-6 mb-3 mb-sm-0">
                <input type="text" class="form-control form-control-user" name="rol" id="rol"
                       placeholder="Rol" value="<%=us.getRol()%>">
            </div>
        </div>
            <button class="btn btn-primary btn-user btn-block" type="submit">
                Guardar edición
            </button>
       
        <hr>
    </form>
</div>
