
package servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import logica.Controladora;
import logica.Odontologo;
import logica.Paciente;

@WebServlet(name = "SVPacientes", urlPatterns = {"/SVPacientes"})
public class SVPacientes extends HttpServlet {
    Controladora control = new Controladora();

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        List<Paciente> listaPacientes = new ArrayList<Paciente>();

        listaPacientes = control.getPacientes();
        HttpSession misession = request.getSession();
        misession.setAttribute("listaPacientes", listaPacientes);

        response.sendRedirect("verPacientes.jsp");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        String nombre = request.getParameter("nombre");
        String apellido = request.getParameter("apellido");
        String dni = request.getParameter("dni");
        String tel = request.getParameter("tel");
        String direccion = request.getParameter("direccion");
        String tOS = request.getParameter("tieneOs");
        boolean tieneOS = true;
        String tipoDeSangre = request.getParameter("tipoSangre");
        
        SimpleDateFormat formatoDate = new SimpleDateFormat("dd-MM-yyyy");
        String fecha = request.getParameter("fechanac");
        Date fechaNac = null;
        try {
            fechaNac = formatoDate.parse(fecha);
        } catch (ParseException e) {
        }
        Paciente paciente = new Paciente();
        paciente.setNombre(nombre);
        paciente.setApellido(apellido);
        paciente.setDni(dni);
        paciente.setTelefono(tel);
        paciente.setDireccion(direccion);
        paciente.setFechaNac(fechaNac);
        paciente.setTipoSangre(tipoDeSangre);
        paciente.setTieneOS(tieneOS);
        
        control.crearPaciente(0, nombre, apellido, dni, tel, direccion, fechaNac, tipoDeSangre, tieneOS);

        response.sendRedirect("SVPacientes");
       
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }

}
