<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.Date" %>
<%@page import="logica.Paciente"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!-- Begin Page Content -->
<div class="container-fluid">
    <!-- Page Heading -->
    <div class="d-sm-flex align-items-center justify-content-between mb-4">
        <h1 class="h3 mb-0 text-gray-800">Ver Pacientes</h1>
    </div>
    <!-- Begin Page Content -->
    <div class="container-fluid">
        <p class="mb-4">A continuación podrá visualizar la lista de pacientes.</p>
        <!-- DataTales Example -->
        <div class="card shadow mb-4">
            <div class="card-header py-3">
                <h6 class="m-0 font-weight-bold text-primary">Pacientes</h6>
            </div>
            <div class="card-body">
                <div class="table-responsive">
                    <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                        <thead>
                            <tr>
                                <th>ID</th>
                                <th>Nombre</th>
                                <th>Apellido</th>
                                <th>DNI</th>
                                <th>Tel</th>
                                <th>Dirección</th>
                                <th>Fecha Nacimiento</th>
                                <th>Tiene Obra Social</th>
                                <th>Tipo de Sangre</th>
                                <th>Responsable</th>
                                <th style="width:210px">Acción</th>
                            </tr>
                        </thead>
                        <%
                            List<Paciente> listaPacientes = (List) request.getSession().getAttribute("listaPacientes");
                            SimpleDateFormat formatoDate = new SimpleDateFormat("dd-MM-yyyy");
                            for (Paciente paciente : listaPacientes) {
                                String fechaFormateada = (paciente.getFechaNac() != null) ? formatoDate.format(paciente.getFechaNac()) : "Fecha no disponible";
                        %>
                        <tbody>                               
                            <tr>
                                <td id="idPaciente<%=paciente.getId()%>"> <%= paciente.getId()%> </td>
                                <td> <%= paciente.getNombre()%> </td>
                                <td> <%= paciente.getApellido()%> </td>
                                <td> <%= paciente.getDni()%></td>
                                <td> <%= paciente.getTelefono()%></td>
                                <td> <%= paciente.getDireccion()%></td>
                                <td> <%= fechaFormateada %></td>
                                <td> <%= paciente.getTieneOSString() %></td>
                                <td> <%= paciente.getTipoSangre() %></td>
                                <td> <%= paciente.getUnResponsable().getNombre() %> <%= paciente.getUnResponsable().getApellido() %></td>
                                <td style="display: flex; width:230px">
                                    <form name="editar" action="SVEditPac" method="GET">
                                        <button type="submit" class="btn btn-primary btn-circle btn-block m-1" style="margin-left: 5px;">
                                            <i class="fas fa-pencil-alt"></i>
                                        </button>
                                        <input type="hidden" name="idPaciente" value="<%=paciente.getId()%>">
                                        <input type="hidden" name="idResponsable" value="<%=paciente.getUnResponsable().getId()%>">
                                    </form>
                                    <form name="eliminar" action="SVElimPac" method="POST">
                                        <button type="submit" class="btn btn-danger btn-circle m-1" style="border-color:red; background-color:red; margin-right: 5px;">
                                            <i class="fas fa-trash"></i>
                                        </button>
                                        <input type="hidden" name="idPaciente" value="<%=paciente.getId()%>">
                                        <input type="hidden" name="idResponsable" value="<%=paciente.getUnResponsable().getId()%>">
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