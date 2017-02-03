package netflix.modelo.repositorio;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.security.core.userdetails.UserDetails;

import netflix.modelo.entidades.Persona;

public interface RepositorioPersona extends JpaRepository<Persona,Long>{

	UserDetails findByUsername(String username);

}
