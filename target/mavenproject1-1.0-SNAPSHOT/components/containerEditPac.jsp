
<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="logica.Paciente"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!-- Begin Page Content -->
<div class="container-fluid">
    <!-- Page Heading -->
    <div class="d-sm-flex align-items-center justify-content-between mb-4">
        <h1 class="h3 mb-0 text-gray-800">Edición de Pacientes</h1>
    </div>
    <% Paciente paciente = (Paciente) request.getSession().getAttribute("pacienteEditar");%>
    <form class="user" action="SVEditPac" method="POST">
        <div class="form-group row">
            <div class="col-sm-6 mb-3 mb-sm-0">
                <label for="nombre" class="text-gray-600 small" >Nombre</label>
                <input type="text" class="form-control form-control-user" name="nombre" id="nombre"
                       placeholder="Nombre" value="<%=paciente.getNombre()%>">
            </div>
            <div class="col-sm-6">
                <label for="apellido" class="text-gray-600 small" >Apellido</label>
                <input type="text" class="form-control form-control-user" name="apellido" id="apellido"
                       placeholder="Apellido" value="<%=paciente.getApellido()%>" >              
            </div>
        </div>
        <div class="form-group row">
            <div class="col-sm-6 mb-3 mb-sm-0">
                <label for="dni" class="text-gray-600 small" >DNI</label>
                <input type="text" class="form-control form-control-user" name="dni" id="dni"
                       placeholder="DNI" value="<%=paciente.getDni()%>">
            </div>
            <div class="col-sm-6 mb-3 mb-sm-0">
                <label for="tel" class="text-gray-600 small" >Teléfono</label>
                <input type="text" class="form-control form-control-user" name="tel" id="tel"
                       placeholder="Teléfono" value="<%=paciente.getTelefono()%>">
            </div>
        </div>
        <div class="form-group row">
            <div class="col-sm-6 mb-3 mb-sm-0">
                <label for="direccion" class="text-gray-600 small" >Dirección</label>
                <input type="text" class="form-control form-control-user" name="direccion" id="direccion"
                       placeholder="Dirección" value="<%=paciente.getDireccion()%>">
            </div>
            <%
                SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
                Date fechaPac = paciente.getFechaNac();
                String formattedDate = (fechaPac != null) ? dateFormat.format(fechaPac) : "";
            %>
            <div class="col-sm-6 mb-3 mb-sm-0">
                <label for="fechanac" class="text-gray-600 small" >Fecha Nacimiento </label>
                <input type="date" class="form-control form-control-user" name="fechanac" id="fechanac" value="<%=formattedDate%>">
            </div> 
        </div>
        <div class="form-group row">
            <div class="col-sm-6 mb-3 mb-sm-0">
                <div class="form-check">
                    <label class="my-1 mr-2" for="tieneOS">¿Tiene obra social?</label>
                    <select class="custom-select my-1 mr-sm-2" id="tieneOS" name="tieneOS">
                        <%
                            boolean tieneObraSocial = paciente.getTieneOS();
                        %>
                        <option value="true" <%= tieneObraSocial ? "selected" : ""%>>Si</option>
                        <option value="false" <%= !tieneObraSocial ? "selected" : ""%>>No</option>
                    </select>
                </div>
            </div>
            <div class="col-sm-6 mb-3 mb-sm-0">
                <label class="my-1 mr-2" for="tipoSangre">Tipo de Sangre</label>
                <select class="custom-select my-1 mr-sm-2" id="tipoSangre" name="tipoSangre">
                    <%
                        String tipoSangreSeleccionado = paciente.getTipoSangre();
                    %>
                    <option value="">Seleccione un tipo de sangre</option>
                    <option value="A+" <%= "A+".equals(tipoSangreSeleccionado) ? "selected" : ""%>>A+</option>
                    <option value="A-" <%= "A-".equals(tipoSangreSeleccionado) ? "selected" : ""%>>A-</option>
                    <option value="B+" <%= "B+".equals(tipoSangreSeleccionado) ? "selected" : ""%>>B+</option>
                    <option value="B-" <%= "B-".equals(tipoSangreSeleccionado) ? "selected" : ""%>>B-</option>
                    <option value="AB+" <%= "AB+".equals(tipoSangreSeleccionado) ? "selected" : ""%>>AB+</option>
                    <option value="AB-" <%= "AB-".equals(tipoSangreSeleccionado) ? "selected" : ""%>>AB-</option>
                    <option value="O+" <%= "O+".equals(tipoSangreSeleccionado) ? "selected" : ""%>>O+</option>
                    <option value="O-" <%= "O-".equals(tipoSangreSeleccionado) ? "selected" : ""%>>O-</option>
                </select>
            </div>
        </div>
        <details class="m-3">
            <summary class="m-3 text-center">Haz clic para editar el responsable asociado</summary>
            <div class="form-group row">
                <div class="col-sm-6 mb-3 mb-sm-0">
                    <input type="text" class="form-control form-control-user" id="nombreRes"
                           name="nombreRes" placeholder="Nombre" value="<%=paciente.getUnResponsable().getNombre()%>">
                </div>
                <div class="col-sm-6">
                    <input type="text" class="form-control form-control-user" id="apellidoRes"
                           name="apellidoRes" placeholder="Apellido" value="<%=paciente.getUnResponsable().getApellido()%>">
                </div>
            </div>
            <div class="form-group row">
                <div class="col-sm-6 mb-3 mb-sm-0">
                    <input type="text" class="form-control form-control-user" id="dniRes"
                           name="dniRes" placeholder="DNI" value="<%=paciente.getUnResponsable().getDni()%>">
                </div>
                <div class="col-sm-6">
                    <input type="text" class="form-control form-control-user" id="telRes"
                           name="telRes" placeholder="Teléfono" value="<%=paciente.getUnResponsable().getTelefono()%>">
                </div>
            </div>
            <div class="form-group row">
                <div class="col-sm-6 mb-3 mb-sm-0">
                    <input type="text" class="form-control form-control-user" id="direccionRes"
                           name="direccionRes" placeholder="Dirección" value="<%=paciente.getUnResponsable().getDireccion()%>">
                </div>
                <%

                    Date fechaRes = paciente.getUnResponsable().getFechaNac();
                    String fechaResFormat = (fechaRes != null) ? dateFormat.format(fechaRes) : "";
                %>
                <div class="col-sm-6">
                    <input type="date" class="form-control form-control-user" id="fechanacRes"
                           name="fechanacRes" placeholder="Fecha de nacimiento" value="<%=fechaResFormat%>">
                </div>
            </div>
            <div class="form-group row">
                <div class="col-sm-6 mb-3 mb-sm-0">
                    <label class="my-1 mr-2" for="tipoRes">Tipo de responsable</label>
                    <select class="custom-select my-1 mr-sm-2" id="tipoRes" name="tipoRes">
                        <%
                            String tipoRespSelect = paciente.getUnResponsable().getTipoResp();
                        %>
                        <option value="">Seleccione un tipo de responsable</option>
                        <option value="Padre" <%= "Padre".equals(tipoRespSelect) ? "selected" : ""%>>Padre</option>
                        <option value="Madre" <%= "Madre".equals(tipoRespSelect) ? "selected" : ""%>>Madre</option>
                        <option value="Hermano/a" <%= "Hermano/a".equals(tipoRespSelect) ? "selected" : ""%>>Hermano/a</option>
                        <option value="Abuelo/a" <%= "Abuelo/a".equals(tipoRespSelect) ? "selected" : ""%>>Abuelo/a</option>
                        <option value="Esposo/a" <%= "Esposo/a".equals(tipoRespSelect) ? "selected" : ""%>>Esposo/a</option>
                        <option value="Otro/a" <%= "Otro/a".equals(tipoRespSelect) ? "selected" : ""%>>Otro/a</option>
                    </select>
                </div>
            </div>
        </details>
        <button class="btn btn-primary btn-user btn-block" type="submit">
            Guardar edición
        </button>

        <hr>
    </form>
</div>
