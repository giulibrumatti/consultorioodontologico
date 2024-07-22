
package servlets;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import logica.Controladora;
import logica.Horario;
import logica.Odontologo;

@WebServlet(name = "SVEditOdonto", urlPatterns = {"/SVEditOdonto"})
public class SVEditOdonto extends HttpServlet {
    
    Controladora control = new Controladora();

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        int idOdonto = Integer.parseInt(request.getParameter("idOdonto"));
        
        Odontologo odonto = control.traerOdontologo(idOdonto);
        HttpSession misession = request.getSession();
        misession.setAttribute("odontoEditar", odonto);
        
        response.sendRedirect("editarOdonto.jsp");
        
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        String nombre = request.getParameter("nombre");
        String apellido = request.getParameter("apellido");
        String dni = request.getParameter("dni");
        String tel = request.getParameter("tel");
        String direccion = request.getParameter("direccion");
        String especialidad = request.getParameter("especialidad");
        String horarioinicio = request.getParameter("horarioInicio");
        String horariofin = request.getParameter("horarioFin");
        String fechaNacStr = request.getParameter("fechanac");
        
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
        Date fechaNac = new Date();
        try {
            fechaNac = sdf.parse(fechaNacStr);
        } catch (ParseException ex) {
            Logger.getLogger(SVEditOdonto.class.getName()).log(Level.SEVERE, null, ex);
        }

        
        Odontologo odon = (Odontologo) request.getSession().getAttribute("odontoEditar");
        Horario hora = odon.getUnHorario();
        hora.setHorarioInicio(horarioinicio);
        hora.setHorarioFin(horariofin);
        odon.setNombre(nombre);
        odon.setApellido(apellido);
        odon.setEspecialidad(especialidad);
        odon.setDni(dni);
        odon.setDireccion(direccion);
        odon.setTelefono(tel);
        odon.setUnHorario(hora);
        odon.setFechaNac(fechaNac);
        
        control.editarOdontologo(odon);
        
        response.sendRedirect("SVOdontologos");
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }

}
