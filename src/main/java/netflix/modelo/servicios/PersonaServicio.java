package netflix.modelo.servicios;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import netflix.modelo.repositorio.RepositorioPersona;
@Service
public class PersonaServicio implements UserDetailsService{

	@Autowired
	private RepositorioPersona repoPer;
	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
		return repoPer.findByUsername(username);
	}

}
