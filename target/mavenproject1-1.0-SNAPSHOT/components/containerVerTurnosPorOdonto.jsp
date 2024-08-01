<%@page import="logica.Odontologo"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="logica.Turno"%>
<%@page import="java.util.List"%>
<div class="container-fluid">
    <!-- Page Heading -->
    <div class="d-sm-flex align-items-center justify-content-between mb-4">
        <h1 class="h3 mb-0 text-gray-800">Ver Turnos</h1>
    </div>
    <!-- Begin Page Content -->
    <div class="container-fluid">
        <p class="mb-4">A continuación podrá visualizar la lista de turnos.</p>
        <!-- DataTales Example -->
        <div class="card shadow mb-4">
            <div class="card-header py-3">
                <h6 class="m-0 font-weight-bold text-primary">Turnos</h6>
            </div>
            <div class="card-body">
                <div class="table-responsive">
                    <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                        <thead>
                            <tr>
                                <th>ID</th>
                                <th>Paciente</th>
                                <th>Odontológo</th>
                                <th>Fecha turno</th>
                                <th>Hora turno</th>
                                <th>Afección</th>
                                <th style="width:210px">Acción</th>
                            </tr>
                        </thead>
                        <%
                            Odontologo odonto = (Odontologo) request.getSession().getAttribute("odontoPorTurno");
                            List<Turno> listaTurnos = odonto.getListaTurnos();
                            SimpleDateFormat formatoDate = new SimpleDateFormat("dd-MM-yyyy");
                            for (Turno turno : listaTurnos) {
                                String fechaFormateada = (turno.getFechaTurno() != null) ? formatoDate.format(turno.getFechaTurno()) : "Fecha no disponible";
                                String nombrePaciente = turno.getPacien().getNombre() + " " + turno.getPacien().getApellido();
                                String nombreOdonto = turno.getOdonto().getNombre() + " " + turno.getOdonto().getApellido();
                        %>
                        <tbody>                               
                            <tr>
                                <td id="idTurno<%=turno.getIdTurno()%>"> <%= turno.getIdTurno()%> </td>
                                <td> <%= nombrePaciente%> </td>
                                <td> <%= nombreOdonto%> </td>
                                <td> <%= fechaFormateada%></td>
                                <td> <%= turno.getHoraTurno()%></td>
                                <td> <%= turno.getAfeccion()%></td>
                                <td style="display: flex; width:230px">
                                    <form name="editar" action="SVEditTurno" method="GET">
                                        <button type="submit" class="btn btn-primary btn-circle btn-block m-1" style="margin-left: 5px;">
                                            <i class="fas fa-pencil-alt"></i>
                                        </button>
                                        <input type="hidden" name="idTurno" value="<%=turno.getIdTurno()%>">

                                    </form>
                                    <form name="eliminar" action="SVElimTurno" method="POST">
                                        <button type="submit" class="btn btn-danger btn-circle m-1" style="border-color:red; background-color:red; margin-right: 5px;">
                                            <i class="fas fa-trash"></i>
                                        </button>
                                        <input type="hidden" name="idTurno" value="<%=turno.getIdTurno()%>">

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