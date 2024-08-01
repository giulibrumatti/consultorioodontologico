
<%@page import="logica.Turno"%>
<%@page import="logica.Odontologo"%>
<%@page import="java.util.List"%>
<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="logica.Paciente"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!-- Begin Page Content -->
<div class="container-fluid">
    <!-- Page Heading -->
    <div class="d-sm-flex align-items-center justify-content-between mb-4">
        <h1 class="h3 mb-0 text-gray-800">Edición de Turnos</h1>
    </div>
    <% Turno turno = (Turno) request.getSession().getAttribute("turnoEditar");%>
    <form class="user" action="SVEditTurno" method="POST">
        <div class="form-group row">
            <div class="col-sm-6 mb-3 mb-sm-0">
                <label class="my-1 mr-2 small" for="odonto">Odontológo</label>
                <select class="custom-select my-1 mr-sm-2" id="idOdonto" name="idOdonto">
                    <option selected>Elegir...</option>
                    <%
                        String odontoSelect = turno.getOdonto().getNombre() + " " + turno.getOdonto().getApellido();
                        List<Odontologo> listaOdon = (List) request.getSession().getAttribute("listaOdon");
                        for (Odontologo odon : listaOdon) {
                            String nombreCompleto = odon.getNombre() + " " + odon.getApellido();

                    %>
                    <option value="<%=odon.getId()%>" <%= odontoSelect.equals(nombreCompleto) ? "selected" : ""%>><%=nombreCompleto%></option>
                    <%
                        }
                    %>
                </select>
            </div>
            <div class="col-sm-6">
                <label class="my-1 mr-2 small" for="pacien">Paciente</label>
                <select class="custom-select my-1 mr-sm-2" id="idPaciente" name="idPaciente">
                    <option selected>Elegir...</option>
                    <%
                        String pacienteSelect = turno.getPacien().getNombre() + " " + turno.getPacien().getApellido();
                        List<Paciente> listaPacientes = (List) request.getSession().getAttribute("listaPacientes");
                        for (Paciente pacien : listaPacientes) {
                            String nombreCompleto = pacien.getNombre() + " " + pacien.getApellido();


                    %>
                    <option value="<%=pacien.getId()%>" <%= pacienteSelect.equals(nombreCompleto) ? "selected" : ""%>><%=nombreCompleto%></option>
                    <%
                        }
                    %>
                </select>
            </div>
        </div>
        <div class="form-group row">
            <%
                SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
                Date fechaTurno = turno.getFechaTurno();
                String formattedDate = (fechaTurno != null) ? dateFormat.format(fechaTurno) : "";
            %>
            <div class="col-sm-6 mb-3 mb-sm-0">
                <label for="fechaTurno" class="text-gray-600 small" >Fecha del turno </label>
                <input type="date" class="form-control form-control-user" name="fechaTurno" id="fechaTurno" value="<%=formattedDate%>">
            </div>
            <div class="col-sm-6 mb-3 mb-sm-0">
                <label for="horaTurno" class="text-gray-600 small" >Hora del turno</label>
                <input type="text" class="form-control form-control-user" name="horaTurno" id="horaTurno"
                       placeholder="Hora del turno" value="<%=turno.getHoraTurno()%>">
            </div>
        </div>
        <div class="form-group row">
            <div class="col-sm-6 mb-3 mb-sm-0">
                <label for="afeccion" class="text-gray-600 small" >Afección</label>
                <input type="text" class="form-control form-control-user" name="afeccion" id="afeccion"
                       placeholder="Hora del turno" value="<%=turno.getAfeccion()%>">
            </div>
        </div>
        <div class="text-center">
            <button class="btn btn-primary btn-user" type="submit">
                Guardar Edición
            </button>
        </div>

        <hr>
    </form>
</div>
