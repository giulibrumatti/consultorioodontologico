/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package logica;

import java.util.Date;
import javax.persistence.Entity;

public class Responsable extends Persona{
    
    private int idResponsable;
    private String tipoResp;
    
    @Entity
    public Responsable(int idResponsable, String tipoResp, String dni, String nombre, String apellido, String direccion, String telefono, Date fechaNac) {
        super(dni, nombre, apellido, direccion, telefono, fechaNac);
        this.idResponsable = idResponsable;
        this.tipoResp = tipoResp;
    }

    public int getIdResponsable() {
        return idResponsable;
    }

    public void setIdResponsable(int idResponsable) {
        this.idResponsable = idResponsable;
    }

    public String getTipoResp() {
        return tipoResp;
    }

    public void setTipoResp(String tipoResp) {
        this.tipoResp = tipoResp;
    }
    
    
    
}
