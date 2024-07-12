

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
    <form class="user" action="SVEditOdonto" method="POST">
        <div class="form-group row">
            <div class="col-sm-6 mb-3 mb-sm-0">
                <label for="nombre" class="text-gray-600 small" >Nombre</label>
                <input type="text" class="form-control form-control-user" name="nombre" id="nombre"
                       placeholder="Nombre" value="<%=odonto.getNombre()%>">
            </div>
            <div class="col-sm-6">
                <label for="apellido" class="text-gray-600 small" >Apellido</label>
                <input type="text" class="form-control form-control-user" name="apellido" id="apellido"
                       placeholder="Apellido" value="<%=odonto.getApellido()%>" >              
            </div>
        </div>
        <div class="form-group row">
            <div class="col-sm-6 mb-3 mb-sm-0">
                <label for="dni" class="text-gray-600 small" >DNI</label>
                <input type="text" class="form-control form-control-user" name="dni" id="dni"
                       placeholder="DNI" value="<%=odonto.getDni()%>">
            </div>
            <div class="col-sm-6 mb-3 mb-sm-0">
                <label for="tel" class="text-gray-600 small" >Teléfono</label>
                <input type="text" class="form-control form-control-user" name="tel" id="tel"
                       placeholder="Teléfono" value="<%=odonto.getTelefono()%>">
            </div>
        </div>
        <div class="form-group row">
            <div class="col-sm-6 mb-3 mb-sm-0">
                <label for="direccion" class="text-gray-600 small" >Dirección</label>
                <input type="text" class="form-control form-control-user" name="direccion" id="direccion"
                       placeholder="Dirección" value="<%=odonto.getDireccion()%>">
            </div>
            <div class="col-sm-6 mb-3 mb-sm-0">
                <label for="fechanac" class="text-gray-600 small" >Fecha Nacimiento: <%=odonto.getFechaNac()%></label>
                <input type="date" class="form-control form-control-user" name="fechanac" id="fechanac"
                       placeholder="Fecha Nacimiento">
            </div>
        </div>
        <div class="form-group row">
            <div class="col-sm-6 mb-3 mb-sm-0">
                <label for="horarioInicio" class="text-gray-600 small" >Horario Inicio</label>
                <input type="text" class="form-control form-control-user" name="horarioInicio" id="horarioInicio"
                       placeholder="Horario Inicio" value="<%=odonto.getUnHorario().getHorarioInicio()%>">
            </div>
            <div class="col-sm-6 mb-3 mb-sm-0">
                <label for="horarioFin" class="text-gray-600 small" >Horario Fin</label>
                <input type="text" class="form-control form-control-user" name="horarioFin" id="horarioFin"
                       placeholder="Horario Fin" value="<%=odonto.getUnHorario().getHorarioFin()%>">
            </div>
        </div>
        <div class="form-group row">
            <div class="col-sm-6 mb-3 mb-sm-0">
                <label for="especialidad" class="text-gray-600 small" >Especialidad</label>
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
