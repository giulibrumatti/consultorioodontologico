

<%@page import="logica.Odontologo"%>
<%@page import="logica.Usuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!-- Begin Page Content -->
<div class="container-fluid">
    <!-- Page Heading -->
    <div class="d-sm-flex align-items-center justify-content-between mb-4">
        <h1 class="h3 mb-0 text-gray-800">Edición de Odontólogos</h1>
    </div>
    <% Odontologo odonto = (Odontologo) request.getSession().getAttribute("odontoEditar");%>
    <form class="user" action="SVEditUsuarios" method="POST">
        <div class="form-group row">
            <div class="col-sm-6 mb-3 mb-sm-0">
                <input type="text" class="form-control form-control-user" name="nombre" id="nombre"
                       placeholder="Nombre" value="<%=odonto.getNombre()%>">
            </div>
            <div class="col-sm-6">
                <input type="text" class="form-control form-control-user" name="apellido" id="apellido"
                       placeholder="Apellido" value="<%=odonto.getApellido()%>" >              
            </div>
        </div>
        <div class="form-group row">
            <div class="col-sm-6 mb-3 mb-sm-0">
                <input type="text" class="form-control form-control-user" name="especialidad" id="especialidad"
                       placeholder="Especialidad" value="<%=odonto.getEspecialidad()%>">
            </div>
        </div>
            <button class="btn btn-primary btn-user btn-block" type="submit">
                Guardar edición
            </button>
       
        <hr>
    </form>
</div>
