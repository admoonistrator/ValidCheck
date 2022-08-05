package co.yw.sol.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import co.yw.sol.beans.User;

@Controller
public class HomeController {
	
	@RequestMapping(value = "/", method = RequestMethod.GET)// /는 모든경로
	public String home(User user) {
		return "index";
	}
}
