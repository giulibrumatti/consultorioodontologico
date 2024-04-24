
package logica;

import java.util.Date;
import java.util.List;
import javax.persistence.Entity;


public class Paciente extends Persona{
    
    private Boolean tieneOS;
    private String tipoSangre;
    private Responsable unResponsable;
    private List<Turno> listaTurnos;
    
    @Entity
    public Paciente(Boolean tieneOS, String tipoSangre, Responsable unResponsable, List<Turno> listaTurnos) {
        this.tieneOS = tieneOS;
        this.tipoSangre = tipoSangre;
        this.unResponsable = unResponsable;
        this.listaTurnos = listaTurnos;
    }

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
}
