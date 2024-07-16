
package servlets;

import java.io.IOException;
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
        String fechaNacStr = sdf.format(fechanac);
        Date fechaNac = null;
        try {
            fechaNac = formatoDate.parse(fecha);
        } catch (ParseException e) {
        }
        
        Odontologo odon = (Odontologo) request.getSession().getAttribute("odontoEditar");
        Horario hora = odon.getUnHorario();
        System.out.println(hora);
        System.out.println("Horario antes de la edición: " + hora.getHorarioInicio()+ "-" + hora.getHorarioFin());
        hora.setHorarioInicio(horarioinicio);
        hora.setHorarioFin(horariofin);
        System.out.println("Horario después de la edición: " + hora.getHorarioInicio()+ "-" + hora.getHorarioFin());
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
