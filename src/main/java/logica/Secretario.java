
package logica;

import java.util.Date;
import javax.persistence.Entity;

public class Secretario extends Persona{
    
    private int idSecretario;
    private String sector;
    private Usuario unUsuario;
    
    @Entity
    public Secretario(int idSecretario, String sector, Usuario unUsuario, String dni, String nombre, String apellido, String direccion, String telefono, Date fechaNac) {
        super(dni, nombre, apellido, direccion, telefono, fechaNac);
        this.idSecretario = idSecretario;
        this.sector = sector;
        this.unUsuario = unUsuario;
    }

    public int getIdSecretario() {
        return idSecretario;
    }

    public void setIdSecretario(int idSecretario) {
        this.idSecretario = idSecretario;
    }

    public String getSector() {
        return sector;
    }

    public void setSector(String sector) {
        this.sector = sector;
    }

    public Usuario getUnUsuario() {
        return unUsuario;
    }

    public void setUnUsuario(Usuario unUsuario) {
        this.unUsuario = unUsuario;
    }
    
    
}
