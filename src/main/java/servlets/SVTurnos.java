package servlets;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import logica.Controladora;
import logica.Odontologo;
import logica.Paciente;
import logica.Turno;

@WebServlet(name = "SVTurnos", urlPatterns = {"/SVTurnos"})
public class SVTurnos extends HttpServlet {

    Controladora control = new Controladora();

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // Obtener lista de odontólogos
        List<Odontologo> listaOdon = control.getOdontologos();
        request.getSession().setAttribute("listaOdon", listaOdon);

        // Obtener lista de pacientes
        List<Paciente> listaPacientes = control.getPacientes();
        request.getSession().setAttribute("listaPacientes", listaPacientes);

        // Redirigir a la JSP
        RequestDispatcher dispatcher = request.getRequestDispatcher("altaTurno.jsp");
        dispatcher.forward(request, response);

    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        List<Turno> listaTurnos = new ArrayList<Turno>();
        listaTurnos = control.getTurnos();

        HttpSession misession = request.getSession();
        misession.setAttribute("listaTurnos", listaTurnos);

        response.sendRedirect("verTurnos.jsp");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String odonto = request.getParameter("idOdonto");
        String pac = request.getParameter("idPaciente");
        String horaTurno = request.getParameter("horaTurno");
        String afeccion = request.getParameter("afeccion");
        int idOdonto = Integer.parseInt(odonto);
        int idPaciente = Integer.parseInt(pac);
        
       
        String fechaTurnoStr = request.getParameter("fechaTurno");
        Date fechaTurno = null;
        try {
            if (fechaTurnoStr != null && !fechaTurnoStr.isEmpty()) {
                SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
                fechaTurno = dateFormat.parse(fechaTurnoStr);
            } else {
                System.out.println("El parámetro 'fechaTurno' no fue proporcionado o está vacío.");
                // Manejar este caso según sea necesario
            }
        } catch (ParseException e) {
            System.out.println("Error al parsear la fecha del turno: " + e.getMessage());
            // Manejar este error según sea necesario
        }
        Odontologo odontologo = control.traerOdontologo(idOdonto);
        Paciente paciente = control.traerPaciente(idPaciente);
        Turno turno = new Turno();
        turno.setHoraTurno(horaTurno);
        turno.setAfeccion(afeccion);
        turno.setFechaTurno(fechaTurno);
        turno.setOdonto(odontologo);
        turno.setPacien(paciente);
        odontologo.agregarTurno(turno);
        paciente.agregarTurno(turno);
        
        control.crearTurno(0,idOdonto, idPaciente, horaTurno, fechaTurno, afeccion, odontologo, paciente);
        
        response.sendRedirect("SVTurnos");
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }

}
