package com.skilldistillery.jpacrud.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.skilldistillery.jpacrud.data.WorldBankDAO;

@Controller
public class WorldBankController {
	
	@Autowired
	private WorldBankDAO dao;
	
	@RequestMapping(path= {"/","home.do"})
	public String index(
			Model model
			) {
		model.addAttribute("wb",dao.findAll());
		return "index";
	}

}
