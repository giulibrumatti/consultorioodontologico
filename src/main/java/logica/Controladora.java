
package logica;

import persistencia.ControladoraPersistencia;

public class Controladora {
    
    ControladoraPersistencia controlPersis = new ControladoraPersistencia();
    
    
    public void crearUsuario(int id, String nomUs, String contra, String rol){
        Usuario us = new Usuario(id, nomUs, contra, rol);
        controlPersis.crearUsuario(us);
    }

}
