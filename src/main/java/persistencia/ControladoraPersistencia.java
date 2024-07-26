
package persistencia;

import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import logica.Horario;
import logica.Odontologo;
import logica.Paciente;
import logica.Responsable;
import logica.Turno;
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
    
    public void crearHorario(Horario hora){
        horaJPA.create(hora);
    }
    
    public void crearPaciente(Paciente pac){
        pacienteJPA.create(pac);
    }
    
    public void crearResponsable(Responsable res){
        resJPA.create(res);
    }

    public List<Usuario> getUsuarios() {
        return usJPA.findUsuarioEntities();
    }
    
    public List<Turno> getTurnos() {
        return turnoJPA.findTurnoEntities();
    }
    
    public List<Odontologo> getOdontologos() {
        return odontoJPA.findOdontologoEntities();
    }
    
    public List<Paciente> getPacientes() {
        return pacienteJPA.findPacienteEntities();
    }
    
    public void borrarUsuario(int id){
        try {
            usJPA.destroy(id);
        } catch (NonexistentEntityException ex) {
            Logger.getLogger(ControladoraPersistencia.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    public void borrarOdonto(int id){
        try {
            odontoJPA.destroy(id);
        } catch (NonexistentEntityException ex) {
            Logger.getLogger(ControladoraPersistencia.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    public void borrarHorario(int id){
        try {
            horaJPA.destroy(id);
        } catch (NonexistentEntityException ex) {
            Logger.getLogger(ControladoraPersistencia.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    public void borrarPaciente(int id){
        try {
            pacienteJPA.destroy(id);
        } catch (NonexistentEntityException ex) {
            Logger.getLogger(ControladoraPersistencia.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    public void borrarResponsable(int id){
        try {
            resJPA.destroy(id);
        } catch (NonexistentEntityException ex) {
            Logger.getLogger(ControladoraPersistencia.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    


    public Usuario traerUsuario(int id) {
        return usJPA.findUsuario(id);
    }
    
    public Odontologo traerOdontologo(int id) {
        return odontoJPA.findOdontologo(id);
    }
    
    public Horario traerHorario(int id) {
        return horaJPA.findHorario(id);
    }
    
    public Paciente traerPaciente(int id) {
        return pacienteJPA.findPaciente(id);
    }


    public void editarUsuario(Usuario us) {
        try {
            usJPA.edit(us);
        } catch (Exception ex) {
            Logger.getLogger(ControladoraPersistencia.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public void editarOdontologo(Odontologo odon) {
        try {
            odontoJPA.edit(odon);
        } catch (Exception ex) {
            Logger.getLogger(ControladoraPersistencia.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    public void editarPaciente(Paciente paciente) {
        try {
            pacienteJPA.edit(paciente);
        } catch (Exception ex) {
            Logger.getLogger(ControladoraPersistencia.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    public void editarResponsable(Responsable responsable) {
        try {
            resJPA.edit(responsable);
        } catch (Exception ex) {
            Logger.getLogger(ControladoraPersistencia.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public void editarHorario(Horario unHorario) {
        try {
            horaJPA.edit(unHorario);
        } catch (Exception ex) {
            Logger.getLogger(ControladoraPersistencia.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    

    
}
