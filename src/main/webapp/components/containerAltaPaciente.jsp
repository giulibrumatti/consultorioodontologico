

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
            <div class="col-sm-6">
                <label for="fechanac" class="text-gray-600 small" >Fecha de nacimiento</label>
                <input type="date" class="form-control form-control-user" id="fechanac"
                       name="fechanac" placeholder="Fecha de nacimiento">
            </div>
        </div>
        <div class="form-group row">
            <div class="col-sm-6 mb-3 mb-sm-0">
                <div class="form-check">
                    <input class="form-check-input" type="checkbox" value="true" id="tieneOs" name="tieneOs">
                    <label class="form-check-label small" for="tieneOs">
                        ¿Tiene obra social?
                    </label>
                </div>
            </div>
            <div class="col-sm-6 mb-3 mb-sm-0">
                <label class="my-1 mr-2 small" for="tipoSangre">Tipo de Sangre</label>
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

        <details class="m-3">
            <summary class="m-3 text-center">Haz clic para agregar un responsable</summary>
            <div class="form-group row">
                <div class="col-sm-6 mb-3 mb-sm-0">
                    <label for="nombre" class="text-gray-600 small" >Nombre</label>
                    <input type="text" class="form-control form-control-user" id="nombreRes"
                           name="nombreRes" placeholder="Nombre">
                </div>
                <div class="col-sm-6">
                    <label for="apellidoRes" class="text-gray-600 small" >Apellido</label>
                    <input type="text" class="form-control form-control-user" id="apellidoRes"
                           name="apellidoRes" placeholder="Apellido">
                </div>
            </div>
            <div class="form-group row">
                <div class="col-sm-6 mb-3 mb-sm-0">
                    <label for="dniRes" class="text-gray-600 small" >DNI</label>
                    <input type="text" class="form-control form-control-user" id="dniRes"
                           name="dniRes" placeholder="DNI">
                </div>
                <div class="col-sm-6">
                    <label for="telRes" class="text-gray-600 small" >Teléfono</label>
                    <input type="text" class="form-control form-control-user" id="telRes"
                           name="telRes" placeholder="Teléfono">
                </div>
            </div>
            <div class="form-group row">
                <div class="col-sm-6 mb-3 mb-sm-0">
                    <label for="direccionRes" class="text-gray-600 small" >Dirección</label>
                    <input type="text" class="form-control form-control-user" id="direccionRes"
                           name="direccionRes" placeholder="Dirección">
                </div>
                <div class="col-sm-6">
                    <label for="fechanacRes" class="text-gray-600 small" >Fecha de nacimiento</label>
                    <input type="date" class="form-control form-control-user" id="fechanacRes"
                           name="fechanacRes" placeholder="Fecha de nacimiento">
                </div>
            </div>
            <div class="form-group row">
                <div class="col-sm-6 mb-3 mb-sm-0">
                    <label class="my-1 mr-2 small" for="tipoRes">Tipo de responsable</label>
                    <select class="custom-select my-1 mr-sm-2" id="tipoRes" name="tipoRes">
                        <option selected>Elegir...</option>
                        <option value="Padre">Padre</option>
                        <option value="Madre-">Madre</option>
                        <option value="Hermano/a">Hermano/a</option>
                        <option value="Abuelo/a">Abuelo/a</option>
                        <option value="Otro/a">Otro/a</option>
                    </select>
                </div>
            </div>
        </details>
        <div class="text-center">
            <button class="btn btn-primary btn-user" type="submit">
                Registrar Paciente
            </button>
        </div>
        <hr>
    </form>
</div>
