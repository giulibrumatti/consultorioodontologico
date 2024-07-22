
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
import logica.Paciente;

@WebServlet(name = "SVEditPac", urlPatterns = {"/SVEditPac"})
public class SVEditPac extends HttpServlet {
    
    Controladora control = new Controladora();

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet SVEditPac</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet SVEditPac at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        int idPaciente = Integer.parseInt(request.getParameter("idPaciente"));
                
        Paciente pac = control.traerPaciente(idPaciente);
        HttpSession misession = request.getSession();
        misession.setAttribute("pacienteEditar", pac);
        
        response.sendRedirect("editarPaciente.jsp");
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
        
        SimpleDateFormat formatoDate = new SimpleDateFormat("yyyy-MM-dd");
        String fecha = request.getParameter("fechanac");
        Date fechaNac = null;
        try {
            fechaNac = formatoDate.parse(fecha);
        } catch (ParseException e) {
        }
        
        Paciente paciente = (Paciente) request.getSession().getAttribute("pacienteEditar");
        paciente.setNombre(nombre);
        paciente.setApellido(apellido);
        paciente.setDni(dni);
        paciente.setTelefono(tel);
        paciente.setDireccion(direccion);
        paciente.setFechaNac(fechaNac);
        paciente.setTipoSangre(tipoDeSangre);
        paciente.setTieneOS(tieneOS);
        
        control.editarPaciente(paciente);
        
        response.sendRedirect("SVPacientes");
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }

}