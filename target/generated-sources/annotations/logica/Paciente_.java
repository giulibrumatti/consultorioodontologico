package logica;

import javax.annotation.Generated;
import javax.persistence.metamodel.ListAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;
import logica.Responsable;
import logica.Turno;

@Generated(value="EclipseLink-2.7.10.v20211216-rNA", date="2024-07-02T12:28:13")
@StaticMetamodel(Paciente.class)
public class Paciente_ extends Persona_ {

    public static volatile SingularAttribute<Paciente, String> tipoSangre;
    public static volatile SingularAttribute<Paciente, Boolean> tieneOS;
    public static volatile SingularAttribute<Paciente, Responsable> unResponsable;
    public static volatile ListAttribute<Paciente, Turno> listaTurnos;

}