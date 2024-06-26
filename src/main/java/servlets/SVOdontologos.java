/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.util.Date;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import logica.Controladora;
import logica.Odontologo;

@WebServlet(name = "SVOdontologos", urlPatterns = {"/SVOdontologos"})
public class SVOdontologos extends HttpServlet {
    
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
        
        try {
            SimpleDateFormat formatoDate = new SimpleDateFormat("dd-MM-yyyy");
            String fecha = request.getParameter("fechanac");
            Date fechaNac = formatoDate.parse(fecha);
            
            
            String nombre = request.getParameter("nombre");
            String apellido = request.getParameter("apellido");
            String dni = request.getParameter("dni");
            String tel = request.getParameter("tel");
            String direccion = request.getParameter("direccion");
            String especialidad = request.getParameter("especialidad");
            
            Odontologo odon = new Odontologo();
            odon.setNombre(nombre);
            odon.setApellido(apellido);
            odon.setDni(dni);
            odon.setTelefono(tel);
            odon.setDireccion(direccion);
            odon.setFechaNac(fechaNac);
            odon.setEspecialidad(especialidad);
            control.crearOdontologo(0, nombre, apellido, dni, tel, direccion, fechaNac, especialidad);
        } catch (ParseException ex) {
            Logger.getLogger(SVOdontologos.class.getName()).log(Level.SEVERE, null, ex);
        }
        response.sendRedirect("SVUsuarios");
    }


    @Override
    public String getServletInfo() {
        return "Short description";
    }

}
