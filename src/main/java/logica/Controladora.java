
package logica;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import persistencia.ControladoraPersistencia;

public class Controladora {
    
    ControladoraPersistencia controlPersis = new ControladoraPersistencia();
    
    
    public void crearUsuario(int id, String nomUs, String contra, String rol){
        Usuario usu = new Usuario();
        usu.setNombreUsuario(nomUs);
        usu.setContrasenia(contra);
        usu.setRol(rol);
        
        controlPersis.crearUsuario(usu);
    }
    
    public void crearHorario(int id, String horarioInicio, String horarioFin){
        Horario hora = new Horario();
        hora.setHorarioInicio(horarioInicio);
        hora.setHorarioFin(horarioFin);
      
        controlPersis.crearHorario(hora);
    }
    
    public void crearPaciente(int id, String nombre, String apellido, String dni, String tel, String direccion, Date fechaNac, 
        String tipoSangre, boolean tieneOS, String nombreRes, String apellidoRes, String dniRes, String telRes, String direccionRes, 
        Date fechaNacRes, String tipoRes){
        
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
        paciente.setTieneOS(tieneOS);
        paciente.setTipoSangre(tipoSangre);
        paciente.setUnResponsable(respo);
        
        controlPersis.crearPaciente(paciente);
    }
    
    public void crearOdontologo(int id, String nombre, String apellido, String dni, String tel, String direccion, 
            Date fechaNac, String especialidad, String horarioinicio, String horariofin){
        
        Usuario us = new Usuario();
        us.setNombreUsuario(nombre);
        us.setContrasenia(apellido);
        us.setRol(especialidad);
        
        Horario hora = new Horario();
        hora.setHorarioInicio(horarioinicio);
        hora.setHorarioFin(horariofin);
        
        Odontologo odon = new Odontologo();
        odon.setNombre(nombre);
        odon.setApellido(apellido);
        odon.setDni(dni);
        odon.setTelefono(tel);
        odon.setDireccion(direccion);
        odon.setFechaNac(fechaNac);
        odon.setEspecialidad(especialidad);
        odon.setUnUsuario(us);
        odon.setUnHorario(hora);
        
        controlPersis.crearOdontologo(odon);
    }
    
    public List<Odontologo> getOdontologos(){
        return controlPersis.getOdontologos();
    }
    
    public List<Usuario> getUsuarios(){
        return controlPersis.getUsuarios();
    }
    
    public List<Paciente> getPacientes(){
        return controlPersis.getPacientes();
    }
    public void borrarUsuario(int id){
        controlPersis.borrarUsuario(id);
    }
    
    public void borrarOdonto(int id){
        controlPersis.borrarOdonto(id);
    }
    
    public void borrarHorario(int id){
        controlPersis.borrarHorario(id);
    }


    public Usuario traerUsuario(int id) {
        return controlPersis.traerUsuario(id);
    }
    
    public Odontologo traerOdontologo(int id) {
        return controlPersis.traerOdontologo(id);
    }
    
    public Horario traerHorario(int id) {
        return controlPersis.traerHorario(id);
    }

    public void editarUsuario(Usuario us) {
        controlPersis.editarUsuario(us);
       
    }

    public boolean comprobarIngreso(String usuario, String contra){
        boolean ingreso = false;
        List<Usuario> listaUsuarios = new ArrayList<Usuario>();
        listaUsuarios = controlPersis.getUsuarios();
        
        for(Usuario usu : listaUsuarios){
            if (usu.getNombreUsuario().equals(usuario)){
                if(usu.getContrasenia().equals(contra)){
                    ingreso = true;
                }
            }
        }
        return ingreso;
        
    }

    public void editarOdontologo(Odontologo odon) {
        controlPersis.editarOdontologo(odon);
        controlPersis.editarHorario(odon.getUnHorario());
    }

    public void editarHorario(Horario unHorario) {
        controlPersis.editarHorario(unHorario);
    }
}
