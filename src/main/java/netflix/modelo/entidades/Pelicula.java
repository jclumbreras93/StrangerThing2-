package netflix.modelo.entidades;

import java.util.Set;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToMany;
import javax.persistence.OneToMany;
import javax.validation.constraints.NotNull;

import org.hibernate.validator.constraints.NotEmpty;


@Entity
public class Pelicula {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private Long idPel;
	
	@NotNull
	@NotEmpty
	private String nombrePel;
	
	@NotNull
	@NotEmpty
	private String caratula;

	@NotNull
	@NotEmpty
	private String trailer;
	
	@NotNull
	@NotEmpty
	private String descripcionPel;
	
	@OneToMany(fetch = FetchType.EAGER)
	private Set<Genero> generos;
	
	@ManyToMany(fetch = FetchType.EAGER)
	private Set<Persona> personas;

	public Long getIdPel() {
		return idPel;
	}

	public void setIdPel(Long idPel) {
		this.idPel = idPel;
	}

	public String getNombrePel() {
		return nombrePel;
	}

	public void setNombrePel(String nombrePel) {
		this.nombrePel = nombrePel;
	}

	public String getCaratula() {
		return caratula;
	}

	public void setCaratula(String caratula) {
		this.caratula = caratula;
	}

	public String getTrailer() {
		return trailer;
	}

	public void setTrailer(String trailer) {
		this.trailer = trailer;
	}

	public String getDescripcionPel() {
		return descripcionPel;
	}

	public void setDescripcionPel(String descripcionPel) {
		this.descripcionPel = descripcionPel;
	}

	public Set<Genero> getGeneros() {
		return generos;
	}

	public void setGeneros(Set<Genero> generos) {
		this.generos = generos;
	}

	public Set<Persona> getPersonas() {
		return personas;
	}

	public void setPersonas(Set<Persona> personas) {
		this.personas = personas;
	}
	
	
	
	
}
