
package servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import logica.Controladora;

@WebServlet(name = "SVElimTurno", urlPatterns = {"/SVElimTurno"})
public class SVElimTurno extends HttpServlet {
    Controladora control = new Controladora();

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    }


    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        int idTurno = Integer.parseInt(request.getParameter("idTurno"));
        control.borrarTurno(idTurno);
        response.sendRedirect("SVTurnos");
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }

}
