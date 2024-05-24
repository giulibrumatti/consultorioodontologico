
package persistencia;

import java.util.List;
import logica.Usuario;

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

    public List<Usuario> getUsuarios() {
        return usJPA.findUsuarioEntities();
    }
    

    
}
