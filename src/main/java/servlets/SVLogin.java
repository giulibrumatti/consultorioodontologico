
package servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import logica.Controladora;


@WebServlet(name = "SVLogin", urlPatterns = {"/SVLogin"})
public class SVLogin extends HttpServlet {

    Controladora control = new Controladora();
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        

    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        String usuario = request.getParameter("user");
        String contra = request.getParameter("pass");
        boolean validacion = false;
        validacion = control.comprobarIngreso(usuario, contra);
        
        if (validacion){
            HttpSession misession = request.getSession(true);
            misession.setAttribute("user", usuario);
            response.sendRedirect("index.jsp");
        }else{
            response.sendRedirect("loginError.jsp");
        }
    }


    @Override
    public String getServletInfo() {
        return "Short description";
    }

}
