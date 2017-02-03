package netflix.modelo.entidades;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.validation.constraints.NotNull;

import org.hibernate.annotations.OnDelete;
import org.hibernate.annotations.OnDeleteAction;
import org.hibernate.validator.constraints.NotEmpty;


@Entity
public class Genero {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private Long idGen;
	
	@NotNull
	@NotEmpty
	private String nombreGen;
	
	@ManyToOne(fetch = FetchType.EAGER)
	@OnDelete(action = OnDeleteAction.CASCADE)
	@JoinColumn(name = "pelicula", nullable = true)
	private Pelicula pelicula;

	public Long getIdGen() {
		return idGen;
	}

	public void setIdGen(Long idGen) {
		this.idGen = idGen;
	}

	public String getNombreGen() {
		return nombreGen;
	}

	public void setNombreGen(String nombreGen) {
		this.nombreGen = nombreGen;
	}

	public Pelicula getPelicula() {
		return pelicula;
	}

	public void setPelicula(Pelicula pelicula) {
		this.pelicula = pelicula;
	}

	public Genero(Long idGen, String nombreGen, Pelicula pelicula) {
		super();
		this.idGen = idGen;
		this.nombreGen = nombreGen;
		this.pelicula = pelicula;
	}

	public Genero(Long idGen, String nombreGen) {
		super();
		this.idGen = idGen;
		this.nombreGen = nombreGen;
	}

	public Genero() {
		super();
	}
	
	
	
}
