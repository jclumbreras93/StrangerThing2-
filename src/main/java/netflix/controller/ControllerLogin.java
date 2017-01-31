package netflix.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/home")
public class ControllerLogin {

	@RequestMapping(method = RequestMethod.GET)
	public String InicioPorGet(Model model) {
		return "pages/home";
	}

}
