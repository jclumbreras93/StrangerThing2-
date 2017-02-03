package netflix.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import netflix.modelo.repositorio.ReposotirioGeneros;

@Controller
@RequestMapping("/peliculas")
public class ControllerPeliculas {
	@Autowired
	private ReposotirioGeneros repogene;

	
	@RequestMapping(method = RequestMethod.POST)
	public String InicioPorPost(Model model) {
		return "pages/pelicula";
	}
	
	@RequestMapping(method = RequestMethod.GET)
	public String InicioPorGet(Model model) {
		model.addAttribute("generos", repogene.findAll());
		return "pages/pelicula";
	}
}
