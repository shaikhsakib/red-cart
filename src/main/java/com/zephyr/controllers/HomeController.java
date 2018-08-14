package com.zephyr.controllers;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.zephyr.service.ProductService;

@Controller

public class HomeController {
	@Autowired
	private ProductService productService;
	HomeController(){
		System.out.println("Creating instance of Home Controller");
	}
	@RequestMapping("/home")
	public String homepage(HttpSession session){
		session.setAttribute("categories", productService.getAllCategories());
		return "home";
	}
	@RequestMapping("/login")
	public String loginpage() {
		return "login";
	}
	@RequestMapping("/aboutus")
	public String aboutus() {
		return "aboutus";
	}
}
