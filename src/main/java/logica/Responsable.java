
package logica;

import java.util.Date;

import javax.persistence.Entity;

@Entity
public class Responsable extends Persona{
    
    private String tipoResp;

    public Responsable(int id, String dni, String nombre, String apellido, String direccion, String telefono, Date fechaNac) {
        super(id, dni, nombre, apellido, direccion, telefono, fechaNac);
    }

    public Responsable() {
    }

    public String getTipoResp() {
        return tipoResp;
    }

    public void setTipoResp(String tipoResp) {
        this.tipoResp = tipoResp;
    }
   
}
