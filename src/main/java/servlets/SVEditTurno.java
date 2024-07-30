
package servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
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


@WebServlet(name = "SVEditTurno", urlPatterns = {"/SVEditTurno"})
public class SVEditTurno extends HttpServlet {
    Controladora control = new Controladora();

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        int idTurno = Integer.parseInt(request.getParameter("idTurno"));

        Turno turno = control.traerTurno(idTurno);
        HttpSession misession = request.getSession();
        misession.setAttribute("turnoEditar", turno);

        response.sendRedirect("editarTurno.jsp");
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
                
            }
        } catch (ParseException e) {
            System.out.println("Error al parsear la fecha del turno: " + e.getMessage());
            
        }
        Turno turno = (Turno) request.getSession().getAttribute("turnoEditar");
        Odontologo odontologo = turno.getOdonto();
        Paciente paciente = turno.getPacien();
        turno.setHoraTurno(horaTurno);
        turno.setAfeccion(afeccion);
        turno.setFechaTurno(fechaTurno);
        turno.setOdonto(odontologo);
        turno.setPacien(paciente);
        
        control.editarTurno(turno);
        response.sendRedirect("SVTurnos");
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }

}
