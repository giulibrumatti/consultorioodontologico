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
                                <th>Horario</th>
                                <th>Usuario</th>
                                <th style="width:210px">Acción</th>
                            </tr>
                        </thead>
                        <%
                            List<Odontologo> listaOdon = (List) request.getSession().getAttribute("listaOdon");
                            SimpleDateFormat formatoDate = new SimpleDateFormat("dd-MM-yyyy");
                            for (Odontologo odon : listaOdon) {
                                String fechaFormateada = (odon.getFechaNac() != null) ? formatoDate.format(odon.getFechaNac()) : "Fecha no disponible";
                                String horario = (odon.obtenerHorario() != null) ? odon.obtenerHorario() : "Horario no disponible";
                                String nombreUsuario = (odon.obtenerUsuario() != null) ? odon.obtenerUsuario() : "Usuario no disponible";
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
                                <td> <%= fechaFormateada %></td>
                                <td> <%= horario %></td>
                                <td> <%= nombreUsuario %></td>
                                <td style="display: flex; width:230px">
                                    <form name="editar" action="SVEditOdonto" method="GET">
                                        <button type="submit" class="btn btn-primary btn-circle btn-block m-1" style="margin-left: 5px;">
                                            <i class="fas fa-pencil-alt"></i>
                                        </button>
                                        <input type="hidden" name="idOdonto" value="<%=odon.getId()%>">
                                    </form>
                                    <form name="eliminar" action="SVElimOdonto" method="POST">
                                        <button type="submit" class="btn btn-danger btn-circle m-1" style="border-color:red; background-color:red; margin-right: 5px;">
                                            <i class="fas fa-trash"></i>
                                        </button>
                                        <input type="hidden" name="idOdonto" value="<%=odon.getId()%>">
                                        <input type="hidden" name="idHorario" value="<%=odon.getUnHorario().getIdHorario()%>">
                                        <input type="hidden" name="idUsuario" value="<%=odon.getUnUsuario().getIdUsuario()%>">
                                    </form>
                                    <form name="verTurnos" action="SVTurnosPorOdonto" method="GET">
                                        <button type="submit" class="btn btn-outline-success m-1" margin-right: 5px;">
                                            <i class="bi bi-journal-text"></i> Ver turnos
                                        </button>
                                        <input type="hidden" name="idOdonto" value="<%=odon.getId()%>">
                                    </form>
                                </td>
                            </tr>
                            <%}%>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>