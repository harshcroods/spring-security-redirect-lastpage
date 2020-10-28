package com.croods.springsecurity.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

@RestController
public class WebController {

	@GetMapping("/index")
	public ModelAndView returnIndexPage() {
		return new ModelAndView("index");
	}
	
	@GetMapping("/login")
	public ModelAndView returnLoginPage(HttpServletRequest request) {
		String referrer = request.getHeader("Referer");
	    request.getSession().setAttribute("url_prior_login", referrer);
		return new ModelAndView("login");
	}

	@GetMapping("/project")
	public ModelAndView returnProjectPage() {
		return new ModelAndView("project");
	}

	@GetMapping("/supplier")
	public ModelAndView returnSupplierPage() {
		return new ModelAndView("supplier");
	}
}
