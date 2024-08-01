
package logica;

import java.io.Serializable;
import java.util.Date;
import java.util.List;
import javax.persistence.CascadeType;

import javax.persistence.Entity;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;

@Entity
public class Paciente extends Persona implements Serializable{
    
    private Boolean tieneOS;
    private String tipoSangre;
    @OneToOne(cascade = CascadeType.PERSIST)
    private Responsable unResponsable;
    @OneToMany(mappedBy="pacien")
    private List<Turno> listaTurnos;

    public Paciente(Boolean tieneOS, String tipoSangre, Responsable unResponsable, List<Turno> listaTurnos, int id, String dni, String nombre, String apellido, String direccion, String telefono, Date fechaNac) {
        super(id, dni, nombre, apellido, direccion, telefono, fechaNac);
        this.tieneOS = tieneOS;
        this.tipoSangre = tipoSangre;
        this.unResponsable = unResponsable;
        this.listaTurnos = listaTurnos;
    }

    public Paciente() {
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

    public Responsable getUnResponsable() {
        return unResponsable;
    }

    public void setUnResponsable(Responsable unResponsable) {
        this.unResponsable = unResponsable;
    }


    public Boolean getTieneOS() {
        return tieneOS;
    }
    
    public String getTieneOSString(){
        String salida = "No";
        if (tieneOS){
            salida = "Si";
        }
        return salida;
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
