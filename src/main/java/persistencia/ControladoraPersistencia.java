
package persistencia;

import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import logica.Odontologo;
import logica.Usuario;
import persistencia.exceptions.NonexistentEntityException;

public class ControladoraPersistencia {
    
    HorarioJpaController horaJPA;
    OdontologoJpaController odontoJPA;
    PacienteJpaController pacienteJPA;
    ResponsableJpaController resJPA;
    SecretarioJpaController secJPA;
    TurnoJpaController turnoJPA;
    UsuarioJpaController usJPA;
    
    public ControladoraPersistencia(){
        horaJPA = new HorarioJpaController();
        odontoJPA = new OdontologoJpaController();
        pacienteJPA = new PacienteJpaController();
        resJPA = new ResponsableJpaController();
        secJPA = new SecretarioJpaController();
        turnoJPA = new TurnoJpaController();
        usJPA = new UsuarioJpaController();
    }

    public void crearUsuario(Usuario us) {
        usJPA.create(us);
    }
    
    public void crearOdontologo(Odontologo odon){
        odontoJPA.create(odon);
    }

    public List<Usuario> getUsuarios() {
        return usJPA.findUsuarioEntities();
    }
    
    public void borrarUsuario(int id){
        try {
            usJPA.destroy(id);
        } catch (NonexistentEntityException ex) {
            Logger.getLogger(ControladoraPersistencia.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public Usuario traerUsuario(int id) {
        return usJPA.findUsuario(id);
    }

    public void editarUsuario(Usuario us) {
        try {
            usJPA.edit(us);
        } catch (Exception ex) {
            Logger.getLogger(ControladoraPersistencia.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    

    
}
