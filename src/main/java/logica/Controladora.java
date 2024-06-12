
package logica;

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
}
