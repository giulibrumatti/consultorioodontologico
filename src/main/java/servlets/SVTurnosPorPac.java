
package servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import logica.Controladora;
import logica.Paciente;

@WebServlet(name = "SVTurnosPorPac", urlPatterns = {"/SVTurnosPorPac"})
public class SVTurnosPorPac extends HttpServlet {
    
    Controladora control = new Controladora();

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {


    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
                
        int idPac = Integer.parseInt(request.getParameter("idPac"));
        
        Paciente paciente = control.traerPaciente(idPac);
        HttpSession misession = request.getSession();
        misession.setAttribute("pacPorTurno", paciente);
        
        response.sendRedirect("verTurnosPorPaciente.jsp");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
