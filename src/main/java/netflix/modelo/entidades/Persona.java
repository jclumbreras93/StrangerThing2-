package netflix.modelo.entidades;

import java.util.ArrayList;
import java.util.Collection;
import java.util.HashSet;
import java.util.Set;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToMany;
import javax.validation.constraints.NotNull;

import org.hibernate.validator.constraints.NotEmpty;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;

@Entity
public class Persona implements UserDetails {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private Long idPer;
	
	@NotNull
	@NotEmpty
	private String username;
	@NotNull
	@NotEmpty
	private String password;
	
	private String apellidoPer;
	
	private String mailPer;

	@ManyToMany(fetch = FetchType.EAGER)
	private Set<Permiso> permisos= new HashSet<Permiso>();
	
	
	public Long getIdPer() {
		return idPer;
	}


	public void setIdPer(Long idPer) {
		this.idPer = idPer;
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


	@Override
	public Collection<? extends GrantedAuthority> getAuthorities() {
		ArrayList<GrantedAuthority> authorities = new ArrayList<GrantedAuthority>();
		for (Permiso permiso : permisos) {
			authorities.add(new SimpleGrantedAuthority("ROLE_"+permiso.getNombre().toUpperCase()));
		}
		return authorities;
	}


	@Override
	public String getPassword() {
		// TODO Auto-generated method stub
		return password;
	}


	@Override
	public String getUsername() {
		// TODO Auto-generated method stub
		return username;
	}


	@Override
	public boolean isAccountNonExpired() {
		// TODO Auto-generated method stub
		return true;
	}


	@Override
	public boolean isAccountNonLocked() {
		// TODO Auto-generated method stub
		return true;
	}


	@Override
	public boolean isCredentialsNonExpired() {
		// TODO Auto-generated method stub
		return true;
	}


	@Override
	public boolean isEnabled() {
		// TODO Auto-generated method stub
		return true;
	}


	public Set<Permiso> getPermisos() {
		return permisos;
	}


	public void setPermisos(Set<Permiso> permisos) {
		this.permisos = permisos;
	}


	public void setUsername(String username) {
		this.username = username;
	}


	public void setPassword(String password) {
		this.password = password;
	}

	
	
}
