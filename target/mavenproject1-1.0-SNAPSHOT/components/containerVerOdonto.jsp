<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.Date" %>
<%@page import="logica.Odontologo"%>
<%@page import="logica.Usuario"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!-- Begin Page Content -->
<div class="container-fluid">
    <!-- Page Heading -->
    <div class="d-sm-flex align-items-center justify-content-between mb-4">
        <h1 class="h3 mb-0 text-gray-800">Ver Odontológos</h1>
    </div>
    <!-- Begin Page Content -->
    <div class="container-fluid">
        <p class="mb-4">A continuación podrá visualizar la lista de odontológos.</p>
        <!-- DataTales Example -->
        <div class="card shadow mb-4">
            <div class="card-header py-3">
                <h6 class="m-0 font-weight-bold text-primary">Odontológos</h6>
            </div>
            <div class="card-body">
                <div class="table-responsive">
                    <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                        <thead>
                            <tr>
                                <th>ID</th>
                                <th>Nombre</th>
                                <th>Apellido</th>
                                <th>Especialidad</th>
                                <th>DNI</th>
                                <th>Tel</th>
                                <th>Dirección</th>
                                <th>Fecha Nacimiento</th>
                            </tr>
                        </thead>
                        <%
                            List<Odontologo> listaOdon = (List) request.getSession().getAttribute("listaOdon");
                            SimpleDateFormat formatoDate = new SimpleDateFormat("dd-MM-yyyy");
                            for (Odontologo odon : listaOdon) {
                                
                        %>
                        <tbody>                               
                            <tr>
                                <td id="idOdontologo<%=odon.getId()%>"> <%= odon.getId()%> </td>
                                <td> <%= odon.getNombre()%> </td>
                                <td> <%= odon.getApellido()%> </td>
                                <td> <%= odon.getEspecialidad()%></td>
                                <td> <%= odon.getDni()%></td>
                                <td> <%= odon.getTelefono()%></td>
                                <td> <%= odon.getDireccion()%></td>
                                <td> <%= odon.getFechaNac()%></td>
                            </tr>
                            <%}%>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>