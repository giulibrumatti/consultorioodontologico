
package servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import logica.Controladora;
import logica.Odontologo;
import logica.Usuario;

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
        
        String nombreUsu = request.getParameter("usuario");
        String contra = request.getParameter("contra");
        String rol = request.getParameter("rol");
        
        Usuario us = (Usuario) request.getSession().getAttribute("odontoEditar");
        us.setNombreUsuario(nombreUsu);
        us.setContrasenia(contra);
        us.setRol(rol);
        
        control.editarUsuario(us);
        
        response.sendRedirect("SVUsuarios");
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }

}
