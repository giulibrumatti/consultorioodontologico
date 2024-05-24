<%-- 
    Document   : containerVerUsuarios
    Created on : 21 may. 2024, 13:45:41
    Author     : Rombo del Tejar
--%>

<%@page import="logica.Usuario"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!-- Begin Page Content -->
<div class="container-fluid">
    <!-- Page Heading -->
    <div class="d-sm-flex align-items-center justify-content-between mb-4">
        <h1 class="h3 mb-0 text-gray-800">Ver Usuarios</h1>
    </div>
                    <!-- Begin Page Content -->
                <div class="container-fluid">
                    <p class="mb-4">A continuación podrá visualizar la lista de usuarios.</p>
                    <!-- DataTales Example -->
                    <div class="card shadow mb-4">
                        <div class="card-header py-3">
                            <h6 class="m-0 font-weight-bold text-primary">Usuarios</h6>
                        </div>
                        <div class="card-body">
                            <div class="table-responsive">
                                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                                    <thead>
                                        <tr>
                                            <th>ID</th>
                                            <th>Nombre de usuario</th>
                                            <th>Rol</th>
                                        </tr>
                                    </thead>
                                    <tfoot>
                                        <tr>
                                            <th>ID</th>
                                            <th>Nombre de usuario</th>
                                            <th>Rol</th>
                                        </tr>
                                    </tfoot>
                                    <% 
                                    List<Usuario> listaUs = (List) request.getSession().getAttribute("listaUsuarios");                
                                    %>
                                    <tbody>
                                        <% for (Usuario usu : listaUs){ %>
                                        <tr>
                                            <td> <%= usu.getIdUsuario() %> </td>
                                            <td> <%= usu.getNombreUsuario() %> </td>
                                            <td> <%= usu.getRol() %> </td>
                                        </tr>
                                        <%}%>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>

                </div>
</div>