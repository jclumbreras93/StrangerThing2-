package netflix.controller;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import netflix.PropertyEditors.GeneroPropertyEditors;
import netflix.modelo.entidades.Genero;
import netflix.modelo.entidades.Pelicula;
import netflix.modelo.repositorio.RepositorioGeneros;
import netflix.modelo.repositorio.RepositorioPeliculas;


@Controller
@RequestMapping("/peliculas")
public class ControllerPeliculas {
	@Autowired
	private RepositorioGeneros repogene;
	@Autowired
	private GeneroPropertyEditors geneproped;
	@Autowired
	private RepositorioPeliculas repopel;
	
	@RequestMapping(method = RequestMethod.POST)
	public String InicioPorPost(Model model, @Valid @ModelAttribute Pelicula peli,BindingResult bindingResult) {
		repopel.save(peli);
		return "pages/pelicula";
	}
	
	@RequestMapping(method = RequestMethod.GET)
	public String InicioPorGet(Model model) {
		model.addAttribute("generos", repogene.findAll());
		return "pages/pelicula";
	}
	
	
	@InitBinder
	public void initBinder(WebDataBinder webDataBinder) {
		webDataBinder.registerCustomEditor(Genero.class, geneproped);
	}

	
}
