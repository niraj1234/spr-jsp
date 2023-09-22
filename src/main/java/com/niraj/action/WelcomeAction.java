package com.niraj.action;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class WelcomeAction {

	@GetMapping("/index")
	public String welcome() {
		return "index";
	}
}
