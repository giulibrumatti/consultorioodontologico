
package persistencia;

import logica.Usuario;

public class ControladoraPersistencia {
    
    HorarioJpaController horaJPA = new HorarioJpaController();
    OdontologoJpaController odontoJPA = new OdontologoJpaController();
    PacienteJpaController pacienteJPA = new PacienteJpaController();
    ResponsableJpaController resJPA = new ResponsableJpaController();
    SecretarioJpaController secJPA = new SecretarioJpaController();
    TurnoJpaController turnoJPA = new TurnoJpaController();
    UsuarioJpaController usJPA = new UsuarioJpaController();
    
    public ControladoraPersistencia(){
        
    }

    public void crearUsuario(Usuario us) {
        usJPA.create(us);
    }
    

    
}
