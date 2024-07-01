
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
    
    public void crearOdontologo(int id, String nombre, String apellido, String dni, String tel, String direccion, Date fechaNac, String especialidad){
        Odontologo odon = new Odontologo();
        odon.setNombre(nombre);
        odon.setApellido(apellido);
        odon.setDni(dni);
        odon.setTelefono(tel);
        odon.setDireccion(direccion);
        odon.setFechaNac(fechaNac);
        odon.setEspecialidad(especialidad);
        
        controlPersis.crearOdontologo(odon);
    }
    
    public List<Odontologo> getOdontologos(){
        return controlPersis.getOdontologos();
    }
    
    public List<Usuario> getUsuarios(){
        return controlPersis.getUsuarios();
    }
    
    public void borrarUsuario(int id){
        controlPersis.borrarUsuario(id);
    }

    public Usuario traerUsuario(int id) {
        return controlPersis.traerUsuario(id);
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
}
