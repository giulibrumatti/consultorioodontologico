

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!-- Begin Page Content -->
<div class="container-fluid">
    <!-- Page Heading -->
    <div class="d-sm-flex align-items-center justify-content-between mb-4">
        <h1 class="h3 mb-0 text-gray-800">Alta Paciente</h1>
    </div>
    <form class="user" action="SVPacientes" method="POST">
        <div class="form-group row">
            <div class="col-sm-6 mb-3 mb-sm-0">
                <input type="text" class="form-control form-control-user" id="nombre"
                       name="nombre" placeholder="Nombre">
            </div>
            <div class="col-sm-6">
                <input type="text" class="form-control form-control-user" id="apellido"
                       name="apellido" placeholder="Apellido">
            </div>
        </div>
        <div class="form-group row">
            <div class="col-sm-6 mb-3 mb-sm-0">
                <input type="text" class="form-control form-control-user" id="dni"
                       name="dni" placeholder="DNI">
            </div>
            <div class="col-sm-6">
                <input type="text" class="form-control form-control-user" id="tel"
                       name="tel" placeholder="Teléfono">
            </div>
        </div>
        <div class="form-group row">
            <div class="col-sm-6 mb-3 mb-sm-0">
                <input type="text" class="form-control form-control-user" id="direccion"
                       name="direccion" placeholder="Dirección">
            </div>
            <div class="col-sm-6">
                <input type="date" class="form-control form-control-user" id="fechanac"
                       name="fechanac" placeholder="Fecha de nacimiento">
            </div>
        </div>
        <div class="form-group row">
            <div class="col-sm-6 mb-3 mb-sm-0">
                <div class="form-check">
                    <input class="form-check-input" type="checkbox" value="" id="defaultCheck1">
                    <label class="form-check-label" for="defaultCheck1">
                        ¿Tiene obra social?
                    </label>
                </div>
            </div>
            <div class="col-sm-6 mb-3 mb-sm-0">
                <label class="my-1 mr-2" for="inlineFormCustomSelectPref">Tipo de Sangre</label>
                <select class="custom-select my-1 mr-sm-2" id="inlineFormCustomSelectPref">
                    <option selected>Elegir...</option>
                    <option value="1">One</option>
                    <option value="2">Two</option>
                    <option value="3">Three</option>
                </select>
            </div>
        </div>
        <button class="btn btn-primary btn-user btn-block" type="submit">
            Registrar Paciente
        </button>
        <hr>
    </form>
</div>
