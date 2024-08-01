

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!-- Begin Page Content -->
<div class="container-fluid">
    <!-- Page Heading -->
    <div class="d-sm-flex align-items-center justify-content-between mb-4">
        <h1 class="h3 mb-0 text-gray-800">Alta Odontológos</h1>
    </div>
    <form class="user" action="SVOdontologos" method="POST">
        <div class="form-group row">
            <div class="col-sm-6 mb-3 mb-sm-0">
                <label for="nombre" class="text-gray-600 small" >Nombre</label>
                <input type="text" class="form-control form-control-user" id="nombre"
                       name="nombre" placeholder="Nombre">
            </div>
            <div class="col-sm-6">
                <label for="apellido" class="text-gray-600 small" >Apellido</label>
                <input type="text" class="form-control form-control-user" id="apellido"
                       name="apellido" placeholder="Apellido">
            </div>
        </div>
        <div class="form-group row">
            <div class="col-sm-6 mb-3 mb-sm-0">
                <label for="dni" class="text-gray-600 small" >DNI</label>
                <input type="text" class="form-control form-control-user" id="dni"
                       name="dni" placeholder="DNI">
            </div>
            <div class="col-sm-6">
                <label for="tel" class="text-gray-600 small" >Teléfono</label>
                <input type="text" class="form-control form-control-user" id="tel"
                       name="tel" placeholder="Teléfono">
            </div>
        </div>
        <div class="form-group row">
            <div class="col-sm-6 mb-3 mb-sm-0">
                <label for="direccion" class="text-gray-600 small" >Dirección</label>
                <input type="text" class="form-control form-control-user" id="direccion"
                       name="direccion" placeholder="Dirección">
            </div>
            <div class="col-sm-6 mb-3 mb-sm-0">
                <label for="especialidad" class="text-gray-600 small" >Especialidad</label>
                <input type="text" class="form-control form-control-user" id="especialidad"
                       name="especialidad" placeholder="Especialidad">
            </div>
        </div>
        <div class="form-group row">
            <div class="col-sm-6 mb-3 mb-sm-0">
                <label for="horarioinicio" class="text-gray-600 small" >Horario inicio</label>
                <input type="time" class="form-control form-control-user" id="horarioinicio"
                       name="horarioinicio" placeholder="Horario inicio">
            </div>
            <div class="col-sm-6 mb-3 mb-sm-0">
                <label for="horarioinicio" class="text-gray-600 small" >Horario fin</label>
                <input type="time" class="form-control form-control-user" id="horariofin"
                       name="horariofin" placeholder="Horario fin">
            </div>
        </div>
        <div class="form-group row">
            <div class="col-sm-6">
                <label for="fechanac" class="text-gray-600 small" >Fecha de Nacimiento</label>
                <input type="date" class="form-control form-control-user" id="fechanac"
                       name="fechanac" placeholder="Fecha de nacimiento">
            </div>
        </div>
        <div class="text-center">
            <button class="btn btn-primary btn-user" type="submit">
                Registrar Odontológo
            </button>
        </div>
        <hr>
    </form>
</div>
