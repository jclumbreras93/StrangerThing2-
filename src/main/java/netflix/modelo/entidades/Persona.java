package netflix.modelo.entidades;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToMany;
import javax.validation.constraints.NotNull;

import org.hibernate.validator.constraints.NotEmpty;

@Entity
public class Persona {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private Long idPer;
	
	@NotNull
	@NotEmpty
	private String nombrePer;
	
	private String apellidoPer;
	
	@NotNull
	@NotEmpty
	private String mailPer;

	public Long getIdPer() {
		return idPer;
	}

	public void setIdPer(Long idPer) {
		this.idPer = idPer;
	}

	public String getNombrePer() {
		return nombrePer;
	}

	public void setNombrePer(String nombrePer) {
		this.nombrePer = nombrePer;
	}

	public String getApellidoPer() {
		return apellidoPer;
	}

	public void setApellidoPer(String apellidoPer) {
		this.apellidoPer = apellidoPer;
	}

	public String getMailPer() {
		return mailPer;
	}

	public void setMailPer(String mailPer) {
		this.mailPer = mailPer;
	}
	

}
