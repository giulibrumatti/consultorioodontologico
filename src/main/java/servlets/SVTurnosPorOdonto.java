
package servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import logica.Controladora;
import logica.Odontologo;
import logica.Turno;

@WebServlet(name = "SVTurnosPorOdonto", urlPatterns = {"/SVTurnosPorOdonto"})
public class SVTurnosPorOdonto extends HttpServlet {
    
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
        misession.setAttribute("odontoPorTurno", odonto);
        
        response.sendRedirect("verTurnosPorOdonto.jsp");
    }


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }

}
