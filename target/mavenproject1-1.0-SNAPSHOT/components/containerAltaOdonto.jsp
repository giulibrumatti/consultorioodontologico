

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
                <input type="text" class="form-control form-control-user" id="nombre"
                       placeholder="Nombre">
            </div>
            <div class="col-sm-6">
                <input type="text" class="form-control form-control-user" id="apellido"
                       placeholder="Apellido">
            </div>
        </div>
        <div class="form-group row">
            <div class="col-sm-6 mb-3 mb-sm-0">
                <input type="text" class="form-control form-control-user" id="dni"
                       placeholder="DNI">
            </div>
            <div class="col-sm-6">
                <input type="text" class="form-control form-control-user" id="tel"
                       placeholder="Telefono">
            </div>
        </div>
        <div class="form-group row">
            <div class="col-sm-6 mb-3 mb-sm-0">
                <input type="text" class="form-control form-control-user" id="direccion"
                       placeholder="Dirección">
            </div>
            <div class="col-sm-6">
                <input type="date" class="form-control form-control-user" id="fechanac"
                       placeholder="Fecha de nacimiento">
            </div>
        </div>
        <div class="form-group row">
            <div class="col-sm-6 mb-3 mb-sm-0">
                <input type="text" class="form-control form-control-user" id="especialidad"
                       placeholder="Especialidad">
            </div>
        </div>
            <button class="btn btn-primary btn-user btn-block" type="submit">
                Registrar Odontológo
            </button>
        <hr>
    </form>
</div>
