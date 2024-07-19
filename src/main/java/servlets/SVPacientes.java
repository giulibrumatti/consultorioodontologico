
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
import logica.Responsable;

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
        String tipoDeSangre = request.getParameter("tipoSangre");
        boolean tieneOS = "true".equals(request.getParameter("tieneOs"));
                
        SimpleDateFormat formatoDate = new SimpleDateFormat("dd-MM-yyyy");
        String fecha = request.getParameter("fechanac");
        Date fechaNac = null;
        try {
            fechaNac = formatoDate.parse(fecha);
        } catch (ParseException e) {
        }
        
        String nombreRes = request.getParameter("nombreRes");
        String apellidoRes = request.getParameter("apellidoRes");
        String dniRes = request.getParameter("dniRes");
        String telRes = request.getParameter("telRes");
        String direccionRes = request.getParameter("direccionRes");
        String fechaRes = request.getParameter("fechanacRes");
        Date fechaNacRes = null;
        try {
            fechaNacRes = formatoDate.parse(fechaRes);
        } catch (ParseException e) {
        }
        String tipoRes = request.getParameter("tipoRes");
        
        Paciente paciente = new Paciente();
        Responsable respo = new Responsable();
        
        respo.setNombre(nombreRes);
        respo.setApellido(apellidoRes);
        respo.setDni(dniRes);
        respo.setTelefono(telRes);
        respo.setDireccion(direccionRes);
        respo.setFechaNac(fechaNacRes);
        respo.setTipoResp(tipoRes);
        
        paciente.setNombre(nombre);
        paciente.setApellido(apellido);
        paciente.setDni(dni);
        paciente.setTelefono(tel);
        paciente.setDireccion(direccion);
        paciente.setFechaNac(fechaNac);
        paciente.setTipoSangre(tipoDeSangre);
        paciente.setTieneOS(tieneOS);
        paciente.setUnResponsable(respo);
        
        control.crearPaciente(0, nombre, apellido, dni, tel, direccion, fechaNac, tipoDeSangre, tieneOS, 
                nombreRes, apellidoRes, dniRes, telRes, direccionRes, fechaNacRes, tipoRes);

        response.sendRedirect("SVPacientes");
       
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }

}
