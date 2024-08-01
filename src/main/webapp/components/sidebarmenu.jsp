
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!-- Sidebar -->
<ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">

    <!-- Sidebar - Brand -->
    <a class="sidebar-brand d-flex align-items-center justify-content-center" href="index.jsp">
        <div class="sidebar-brand-icon rotate-n-15">
            <i class="fas fa-solid fa-tooth"></i>

        </div>
        <div class="sidebar-brand-text mx-3">Consultorio Odontológico</div>
    </a>

    <!-- Divider -->
    <hr class="sidebar-divider my-0">

    <!-- Nav Item - Dashboard -->
    <li class="nav-item active">
        <a class="nav-link" href="index.jsp">
            <i class="bi bi-hospital"></i>
            <span>Inicio</span></a>
    </li>

    <!-- Divider -->
    <hr class="sidebar-divider">

    <!-- Heading -->
    <div class="sidebar-heading">
        Gestión
    </div>

    <!-- Nav Item - Pages Collapse Menu -->
    <li class="nav-item">
        <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseTwo"
           aria-expanded="true" aria-controls="collapseTwo">
            <i class="fas fa-hospital-user"></i>
            <span>Odontológos</span>
        </a>
        <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionSidebar">
            <div class="bg-white py-2 collapse-inner rounded">
                <h6 class="collapse-header">Acciones:</h6>
                <a class="collapse-item" href="SVOdontologos">Ver Odontológos</a>
                <a class="collapse-item" href="altaOdontologo.jsp">Alta Odontológos</a>
            </div>
        </div>
    </li>

    <li class="nav-item">
        <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseTurnos"
           aria-expanded="true" aria-controls="collapseTurnos">
            <i class="fas fa-hospital-user"></i>
            <span>Turnos</span>
        </a>
        <div id="collapseTurnos" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionSidebar">
            <div class="bg-white py-2 collapse-inner rounded">
                <h6 class="collapse-header">Acciones:</h6>
                <a class="collapse-item" href="SVTurnos">Ver Turnos</a>
                <a class="collapse-item" href="altaTurno.jsp">Alta Turnos</a>
            </div>
        </div>
    </li>

    <!-- Nav Item - Utilities Collapse Menu -->
    <li class="nav-item">
        <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseUtilities"
           aria-expanded="true" aria-controls="collapseUtilities">
            <i class="fas fa-solid fa-user"></i>
            <span>Pacientes</span>
        </a>
        <div id="collapseUtilities" class="collapse" aria-labelledby="headingUtilities"
             data-parent="#accordionSidebar">
            <div class="bg-white py-2 collapse-inner rounded">
                <h6 class="collapse-header">Acciones:</h6>
                <a class="collapse-item" href="SVPacientes">Ver pacientes</a>
                <a class="collapse-item" href="altaPaciente.jsp">Alta pacientes</a>
            </div>
        </div>
    </li>
    <li class="nav-item">
        <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseUs"
           aria-expanded="true" aria-controls="collapseUs">
            <i class="fas fa-solid fa-user"></i>
            <span>Usuarios</span>
        </a>
        <div id="collapseUs" class="collapse" aria-labelledby="headingUtilities"
             data-parent="#accordionSidebar">
            <div class="bg-white py-2 collapse-inner rounded">
                <h6 class="collapse-header">Acciones:</h6>
                <a class="collapse-item" href="SVUsuarios">Ver usuarios</a>
                <a class="collapse-item" href="altaUsuarios.jsp">Alta usuarios</a>
            </div>
        </div>
    </li>
    <!-- Divider -->
    <hr class="sidebar-divider">
</ul>