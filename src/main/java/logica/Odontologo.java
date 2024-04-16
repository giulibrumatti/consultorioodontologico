
package logica;

import java.util.Date;
import java.util.List;

public class Odontologo extends Persona{
    
    private int idOdontologo;
    private String especialidad;
    private List<Turno> listaTurnos;
    private Usuario unUsuario;
    private Horario unHorario;

    public Odontologo(int idOdontologo, String especialidad, List<Turno> listaTurnos, Usuario unUsuario, Horario unHorario, String dni, String nombre, String apellido, String direccion, String telefono, Date fechaNac) {
        super(dni, nombre, apellido, direccion, telefono, fechaNac);
        this.idOdontologo = idOdontologo;
        this.especialidad = especialidad;
        this.listaTurnos = listaTurnos;
        this.unUsuario = unUsuario;
        this.unHorario = unHorario;
    }

    public List<Turno> getListaTurnos() {
        return listaTurnos;
    }

    public void setListaTurnos(List<Turno> listaTurnos) {
        this.listaTurnos = listaTurnos;
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

    public void setUnHorario(Horario unHorario) {
        this.unHorario = unHorario;
    }

    public int getIdOdontologo() {
        return idOdontologo;
    }

    public void setIdOdontologo(int idOdontologo) {
        this.idOdontologo = idOdontologo;
    }

    public String getEspecialidad() {
        return especialidad;
    }

    public void setEspecialidad(String especialidad) {
        this.especialidad = especialidad;
    }
    
    
}
