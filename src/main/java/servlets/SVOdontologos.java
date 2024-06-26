/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package servlets;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import logica.Controladora;
import logica.Horario;
import logica.Odontologo;
import logica.Usuario;

@WebServlet(name = "SVOdontologos", urlPatterns = {"/SVOdontologos"})
public class SVOdontologos extends HttpServlet {

    Controladora control = new Controladora();

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        List<Odontologo> listaOdon = new ArrayList<Odontologo>();

        listaOdon = control.getOdontologos();
        HttpSession misession = request.getSession();
        misession.setAttribute("listaOdon", listaOdon);

        response.sendRedirect("verOdontologo.jsp");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        //SimpleDateFormat formatoDate = new SimpleDateFormat("dd-MM-yyyy");
        //String fecha = request.getParameter("fechanac");
        Date fechaNac = new Date();

        String nombre = request.getParameter("nombre");
        String apellido = request.getParameter("apellido");
        String dni = request.getParameter("dni");
        String tel = request.getParameter("tel");
        String direccion = request.getParameter("direccion");
        String especialidad = request.getParameter("especialidad");
        String horarioinicio = request.getParameter("horarioinicio");
        String horariofin = request.getParameter("horariofin");

        Odontologo odon = new Odontologo();
        Usuario us = new Usuario();
        Horario hora = new Horario();
        us.setNombreUsuario(apellido);
        us.setContrasenia(dni);
        us.setRol(especialidad);
        hora.setHorarioInicio(horarioinicio);
        hora.setHorarioFin(horariofin);
        odon.setNombre(nombre);
        odon.setApellido(apellido);
        odon.setDni(dni);
        odon.setTelefono(tel);
        odon.setDireccion(direccion);
        odon.setFechaNac(fechaNac);
        odon.setEspecialidad(especialidad);
        odon.setUnUsuario(us);
        odon.setUnHorario(hora);

        control.crearOdontologo(0, nombre, apellido, dni, tel, direccion, fechaNac, especialidad);
        control.crearUsuario(0, apellido, dni, especialidad);
        control.crearHorario(0, horarioinicio, horariofin);
        response.sendRedirect("SVOdontologos");
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }

}
