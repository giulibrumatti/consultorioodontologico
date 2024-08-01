<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
    <!DOCTYPE html>
    <%@include file="components/head.jsp"%> 
    <body id="page-top">
        <div id="wrapper">
            <%@include file="components/sidebarmenu.jsp"%>
            <div id="content-wrapper" class="d-flex flex-column">
                <div id="content">
                    <%@include file="components/topbarusuario.jsp"%>
                    <div class="container-fluid">
                        <div class="container px-lg-5 mb-2">
                            <div class="p-2 p-lg-5 bg-light rounded-3 text-center">
                                <div class="m-2 m-lg-2">
                                    <h1 class="display-5 fw-bold">¡Bienvenidos!</h1>
                                </div>
                            </div>
                            <section class="pt-2">
                                <div class="container px-lg-2">
                                    <div class="card-deck">
                                        <div class="card">
                                            <img class="card-img-top" src="img/gestion.jpg" alt="" width="200">
                                            <div class="card-body">
                                                <h5 class="card-title">Gestión de Usuarios</h5>
                                                <p class="card-text">Registra y administra fácilmente la información de odontólogos y administradores del sistema.</p>
                                            </div>
                                        </div>
                                        <div class="card">
                                            <img class="card-img-top" src="img/turnos.jpg" alt="">
                                            <div class="card-body">
                                                <h5 class="card-title">Agendar y Modificar Turnos</h5>
                                                <p class="card-text">Reserva, modifica o cancela citas de manera eficiente con nuestro sistema de turnos online.</p>
                                            </div>
                                        </div>
                                        <div class="card">
                                            <img class="card-img-top" src="img/paciente.jpg" alt="">
                                            <div class="card-body">
                                                <h5 class="card-title">Registro de pacientes</h5>
                                                <p class="card-text">Ingresa, modifica o elimina pacientes del sistema de manera rápida y segura. 
                                                    Mantén un registro actualizado de todos tus pacientes para mejorar la atención y facilitar la gestión de citas. </p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </section>
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