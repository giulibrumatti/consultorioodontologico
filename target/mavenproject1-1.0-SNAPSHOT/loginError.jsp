<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">

    <!DOCTYPE html>
    <%@include file="components/head.jsp"%>
    <body class="bg-gradient-primary">

        <div class="container">

            <!-- Outer Row -->
            <div class="row justify-content-center">

                <div class="col-xl-10 col-lg-12 col-md-9">

                    <div class="card o-hidden border-0 shadow-lg my-5">
                        <div class="card-body p-0">
                            <!-- Nested Row within Card Body -->
                            <div class="row">
                                <div class="col-lg-6 d-none d-lg-block">
                                    <img width="400px" src="https://img.freepik.com/vector-gratis/dentista-
                                         sosteniendo-instrumentos-sobre-fondo-blanco_1308-94697.jpg?size=626&ext=
                                         jpg&ga=GA1.1.757098990.17
                                         18295440&semt=ais_user" >
                                </div>

                                <div class="col-lg-6">
                                    <div class="p-5">
                                        <div class="text-center">
                                            <h1 class="h4 text-gray-900 mb-4">Ingreso Clinica</h1>
                                        </div>  
                                        <p class="text-red">Nombre de usuario o contraseña incorrecto</p>
                                        <a href="login.jsp" class="btn btn-primary btn-user btn-block">
                                            Intentar de nuevo
                                        </a>
                                        <hr>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <%@include file="components/scriptjs.jsp"%>
    </body>
</html>