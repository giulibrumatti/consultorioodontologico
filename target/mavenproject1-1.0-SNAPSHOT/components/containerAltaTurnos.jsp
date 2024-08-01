

<%@page import="logica.Paciente"%>
<%@page import="logica.Odontologo"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!-- Begin Page Content -->
<div class="container-fluid">
    <!-- Page Heading -->
    <div class="d-sm-flex align-items-center justify-content-between mb-4">
        <h1 class="h3 mb-0 text-gray-800">Alta Turno</h1>
    </div>
    <form class="user" action="SVTurnos" method="POST">
        <div class="form-group row">
            <div class="col-sm-6 mb-3 mb-sm-0">
                <label class="my-1 mr-2 small" for="odonto">Odontológo</label>
                <select class="custom-select my-1 mr-sm-2" id="idOdonto" name="idOdonto">
                    <option selected>Elegir...</option>
                    <%
                        List<Odontologo> listaOdon = (List) request.getSession().getAttribute("listaOdon");
                        if (listaOdon != null && !listaOdon.isEmpty()) {
                            for (Odontologo odon : listaOdon) {
                                String nombreCompleto = odon.getNombre() + " " + odon.getApellido();

                    %>
                    <option value="<%=odon.getId()%>"><%=nombreCompleto%></option>
                    <%
                        }
                    } else {
                    %>
                    <option disabled>Debes agregar un odontológo</option>
                    <% } %>
                </select>
            </div>
            <div class="col-sm-6">
                <label class="my-1 mr-2 small" for="pacien">Paciente</label>
                <select class="custom-select my-1 mr-sm-2" id="idPaciente" name="idPaciente">
                    <option selected>Elegir...</option>
                    <%
                        List<Paciente> listaPacientes = (List) request.getSession().getAttribute("listaPacientes");
                        if (listaPacientes != null && !listaPacientes.isEmpty()) {
                            for (Paciente pacien : listaPacientes) {
                                String nombreCompleto = pacien.getNombre() + " " + pacien.getApellido();


                    %>
                    <option value="<%=pacien.getId()%>"><%=nombreCompleto%></option>
                    <%
                        }
                    } else {
                    %>
                    <option disabled>Debes agregar un paciente</option>
                    <% }%>
                </select>
            </div>
        </div>
        <div class="form-group row">
            <div class="col-sm-6">
                <label for="fechaTurno" class="text-gray-600 small" >Fecha del turno</label>
                <input type="date" class="form-control form-control-user" id="fechaTurno"
                       name="fechaTurno" placeholder="Fecha del turno">
            </div>
            <div class="col-sm-6 mb-3 mb-sm-0">
                <label for="horaTurno" class="text-gray-600 small" >Hora del turno</label>
                <input type="time" class="form-control form-control-user" id="horaTurno"
                       name="horaTurno" placeholder="Hora del turno">
            </div>
        </div>
        <div class="form-group row">
            <div class="col-sm-6">
                <label for="afeccion" class="text-gray-600 small" >Afección</label>
                <input type="text" class="form-control form-control-user" id="afeccion"
                       name="afeccion" placeholder="Afección">
            </div>
        </div>


        <div class="text-center">
            <button class="btn btn-primary btn-user" type="submit">
                Registrar Turno
            </button>
        </div>
        <hr>
    </form>
</div>
