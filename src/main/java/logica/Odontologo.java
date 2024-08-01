
package logica;

import java.io.Serializable;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;

@Entity
public class Odontologo extends Persona implements Serializable{
    
    private String especialidad;
    @OneToMany(mappedBy="odonto")
    private List<Turno> listaTurnos;
    @OneToOne(cascade = CascadeType.ALL)
    private Usuario unUsuario;
    @OneToOne(cascade = CascadeType.ALL)
    private Horario unHorario;

    public Odontologo(String especialidad, List<Turno> listaTurnos, Usuario unUsuario, Horario unHorario, int id, String dni, String nombre, String apellido, String direccion, String telefono, Date fechaNac) {
        super(id, dni, nombre, apellido, direccion, telefono, fechaNac);
        this.especialidad = especialidad;
        this.listaTurnos = listaTurnos;
        this.unUsuario = unUsuario;
        this.unHorario = unHorario;
    }

    public Odontologo() {

    }

    public List<Turno> getListaTurnos() {
        return listaTurnos;
    }

    public void setListaTurnos(List<Turno> listaTurnos) {
        this.listaTurnos = listaTurnos;
    }
    
    public void agregarTurno(Turno turno){
        this.listaTurnos.add(turno);
    }

    public Usuario getUnUsuario() {
        return unUsuario;
    }

    public void setUnUsuario(Usuario unUsuario) {
        this.unUsuario = unUsuario;
    }

    public Horario getUnHorario() {
        return unHorario;
    }
    
    public String obtenerHorario(){
        return unHorario.getHorarioInicio()+ " a " + unHorario.getHorarioFin();
    }
    
    public String obtenerUsuario(){
        return unUsuario.getNombreUsuario();
    }

    public void setUnHorario(Horario unHorario) {
        this.unHorario = unHorario;
    }

    public String getEspecialidad() {
        return especialidad;
    }

    public void setEspecialidad(String especialidad) {
        this.especialidad = especialidad;
    }
    
    
}
