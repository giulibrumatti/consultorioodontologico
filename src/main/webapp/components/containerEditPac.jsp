
<%@page import="logica.Paciente"%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!-- Begin Page Content -->
<div class="container-fluid">
    <!-- Page Heading -->
    <div class="d-sm-flex align-items-center justify-content-between mb-4">
        <h1 class="h3 mb-0 text-gray-800">Edición de Odontólogos</h1>
    </div>
    <% Paciente paciente = (Paciente) request.getSession().getAttribute("pacienteEditar");%>
    <form class="user" action="SVEditOdonto" method="POST">
        <div class="form-group row">
            <div class="col-sm-6 mb-3 mb-sm-0">
                <label for="nombre" class="text-gray-600 small" >Nombre</label>
                <input type="text" class="form-control form-control-user" name="nombre" id="nombre"
                       placeholder="Nombre" value="<%=paciente.getNombre()%>">
            </div>
            <div class="col-sm-6">
                <label for="apellido" class="text-gray-600 small" >Apellido</label>
                <input type="text" class="form-control form-control-user" name="apellido" id="apellido"
                       placeholder="Apellido" value="<%=paciente.getApellido()%>" >              
            </div>
        </div>
        <div class="form-group row">
            <div class="col-sm-6 mb-3 mb-sm-0">
                <label for="dni" class="text-gray-600 small" >DNI</label>
                <input type="text" class="form-control form-control-user" name="dni" id="dni"
                       placeholder="DNI" value="<%=paciente.getDni()%>">
            </div>
            <div class="col-sm-6 mb-3 mb-sm-0">
                <label for="tel" class="text-gray-600 small" >Teléfono</label>
                <input type="text" class="form-control form-control-user" name="tel" id="tel"
                       placeholder="Teléfono" value="<%=paciente.getTelefono()%>">
            </div>
        </div>
        <div class="form-group row">
            <div class="col-sm-6 mb-3 mb-sm-0">
                <label for="direccion" class="text-gray-600 small" >Dirección</label>
                <input type="text" class="form-control form-control-user" name="direccion" id="direccion"
                       placeholder="Dirección" value="<%=paciente.getDireccion()%>">
            </div>
            <div class="col-sm-6 mb-3 mb-sm-0">
                
                <label for="fechanac" class="text-gray-600 small" >Fecha Nacimiento </label>
                <input type="date" class="form-control form-control-user" name="fechanac" id="fechanac">
            </div> 
        </div>
                <div class="form-group row">
            <div class="col-sm-6 mb-3 mb-sm-0">
                <div class="form-check">
                    <input class="form-check-input" type="checkbox" value="true" id="tieneOs" name="tieneOs">
                    <label class="form-check-label" for="tieneOs">
                        ¿Tiene obra social?
                    </label>
                </div>
            </div>
            <div class="col-sm-6 mb-3 mb-sm-0">
                <label class="my-1 mr-2" for="tipoSangre">Tipo de Sangre</label>
                <select class="custom-select my-1 mr-sm-2" id="tipoSangre" name="tipoSangre">
                    <option selected>Elegir...</option>
                    <option value="A+">A+</option>
                    <option value="A-">A-</option>
                    <option value="B+">B+</option>
                    <option value="B-">B-</option>
                    <option value="AB+">AB+</option>
                    <option value="AB-">AB-</option>
                    <option value="O+">O+</option>
                    <option value="O-">O-</option>
                </select>
            </div>
        </div>
            <button class="btn btn-primary btn-user btn-block" type="submit">
                Guardar edición
            </button>
       
        <hr>
    </form>
</div>
