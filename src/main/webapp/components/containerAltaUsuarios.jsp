

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!-- Begin Page Content -->
<div class="container-fluid">
    <!-- Page Heading -->
    <div class="d-sm-flex align-items-center justify-content-between mb-4">
        <h1 class="h3 mb-0 text-gray-800">Alta Usuarios</h1>
    </div>
    <form class="user" action="SVUsuarios" method="POST">
        <div class="form-group row">
            <div class="col-sm-6 mb-3 mb-sm-0">
                <input type="text" class="form-control form-control-user" required name="usuario" id="usuario"
                       placeholder="Usuario">
            </div>
            <div class="col-sm-6">
                <input type="password" class="form-control form-control-user" required name="contra" id="contra"
                       placeholder="Contraseña" >              
            </div>
        </div>
        <div class="form-group row">
            <div class="col-sm-6 mb-3 mb-sm-0">
                <input type="text" class="form-control form-control-user" required name="rol" id="rol"
                       placeholder="Rol">
            </div>
        </div>
        <div class="text-center">
            <button class="btn btn-primary btn-user" type="submit">
                Registrar Usuario
            </button>
        </div>
        <hr>
    </form>
</div>
