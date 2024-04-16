
package logica;

import java.util.Date;
import java.util.List;


public class Paciente extends Persona{
    
    private int idPaciente;
    private Boolean tieneOS;
    private String tipoSangre;
    private Responsable unResponsable;
    private List<Turno> listaTurnos;

    public List<Turno> getListaTurnos() {
        return listaTurnos;
    }

    public void setListaTurnos(List<Turno> listaTurnos) {
        this.listaTurnos = listaTurnos;
    }

    public Responsable getUnResponsable() {
        return unResponsable;
    }

    public void setUnResponsable(Responsable unResponsable) {
        this.unResponsable = unResponsable;
    }

    public int getIdPaciente() {
        return idPaciente;
    }

    public void setIdPaciente(int idPaciente) {
        this.idPaciente = idPaciente;
    }

    public Boolean getTieneOS() {
        return tieneOS;
    }

    public void setTieneOS(Boolean tieneOS) {
        this.tieneOS = tieneOS;
    }

    public String getTipoSangre() {
        return tipoSangre;
    }

    public void setTipoSangre(String tipoSangre) {
        this.tipoSangre = tipoSangre;
    }
    
    
    public Paciente(int idPaciente, Boolean tieneOS, String tipoSangre, String dni, String nombre, String apellido, String direccion, String telefono, Date fechaNac) {
        super(dni, nombre, apellido, direccion, telefono, fechaNac);
        this.idPaciente = idPaciente;
        this.tieneOS = tieneOS;
        this.tipoSangre = tipoSangre;
    }
    
    

}
