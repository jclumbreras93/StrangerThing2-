package netflix.controller;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import netflix.PropertyEditors.PermisoPropertyEditors; 
import netflix.modelo.entidades.Permiso;
import netflix.modelo.entidades.Persona;
import netflix.modelo.repositorio.RepositorioPermisos;
import netflix.modelo.repositorio.RepositorioPersona;

@Controller
@RequestMapping("/login")
public class ControllerLogin {
	@Autowired
	private RepositorioPermisos repoPer;
	@Autowired
	private PermisoPropertyEditors permipro;
	@Autowired
	private RepositorioPersona repoUsu;
	
	@RequestMapping(method = RequestMethod.GET)
	public String loginInicio(Model model) {
		repoPer.save(new Permiso((long) 1, "ADMIN"));
		repoPer.save(new Permiso((long) 2, "USER"));		
		return "pages/login";
	}
	
	@RequestMapping(method = RequestMethod.POST)
	public String loginInicio(Model model,  @Valid @ModelAttribute Persona per,BindingResult bindingResult) {
		repoPer.save(new Permiso((long) 1, "ADMIN"));
		repoPer.save(new Permiso((long) 2, "USER"));
		BCryptPasswordEncoder encoder = new BCryptPasswordEncoder();
		per.setPassword(encoder.encode(per.getPassword()));
		repoUsu.save(per);
		model.addAttribute("Mensaje", "Se ha registrado correctamente");
		return "pages/login";
	}
	
	@InitBinder
	public void initBinder(WebDataBinder webDataBinder) {
		webDataBinder.registerCustomEditor(Permiso.class, permipro);
	}
	
}
