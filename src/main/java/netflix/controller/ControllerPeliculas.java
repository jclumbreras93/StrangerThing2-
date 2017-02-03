package netflix.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/peliculas")
public class ControllerPeliculas {

	@RequestMapping(method = RequestMethod.POST)
	public String InicioPorPost(Model model) {
		return "pages/pelicula";
	}
	
	@RequestMapping(method = RequestMethod.GET)
	public String InicioPorGet(Model model) {
		return "pages/pelicula";
	}
}
