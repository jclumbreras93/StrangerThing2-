package netflix.modelo.entidades;

import java.util.Set;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToMany;
import javax.validation.constraints.NotNull;

import org.hibernate.validator.constraints.NotEmpty;

@Entity
public class Permiso {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private Long id;
	
	private String nombre;
	
	@ManyToMany(fetch= FetchType.EAGER, mappedBy="permisos")
	private Set<Persona> persona;

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getNombre() {
		return nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public Set<Persona> getPersona() {
		return persona;
	}

	public void setPersona(Set<Persona> persona) {
		this.persona = persona;
	}

	public Permiso(Long id, String nombre, Set<Persona> persona) {
		super();
		this.id = id;
		this.nombre = nombre;
		this.persona = persona;
	}

	public Permiso(Long id, String nombre) {
		super();
		this.id = id;
		this.nombre = nombre;
	}

	public Permiso() {
		super();
	}
	
}
