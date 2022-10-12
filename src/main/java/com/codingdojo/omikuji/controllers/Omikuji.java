package com.codingdojo.omikuji.controllers;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class Omikuji {
	
	@RequestMapping("/")
	public String index() {
		return "redirect:/omikuji";
	}	
	
	@RequestMapping("/omikuji")
	public String omikuji() {
		return "index.jsp";
	}
	
	@RequestMapping("/omikuji/show")
	public String show( HttpSession session, Model model) {
		String formInput = (String) session.getAttribute("sentence");
		model.addAttribute("formInput", formInput);
		
		return "/show.jsp";
	}
	
	@RequestMapping(value="/form", method=RequestMethod.POST)
	public String form(
			@RequestParam(value="number") long number,
			@RequestParam(value="city") String city,
			@RequestParam(value="person") String person,
			@RequestParam(value="hobby") String hobby,
			@RequestParam(value="animal") String animal,
			@RequestParam(value="nice") String nice,
			HttpSession session)
			{
		
		String sentence = "In " + number + " years, you will live in " + city + " with " + person + " as your roommate, " + hobby + " for a living. The next time you see a "
				+ animal + ", you will have good luck. Also, " + nice;
		
		session.setAttribute("sentence", sentence);
		
		return "redirect:/omikuji/show";
	}
	
}
