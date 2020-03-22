package com.skilldistillery.jpacrud.controllers;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.apache.logging.log4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.skilldistillery.jpacrud.data.WorldBankDAO;
import com.skilldistillery.jpacrud.entities.WorldBank;

@Controller
public class WorldBankController {

	@Autowired
	private WorldBankDAO dao;

	@RequestMapping(path = { "/", "home.do" }, method = RequestMethod.GET)
	public String index(Model model) {
		model.addAttribute("countryList", dao.findAll());
		return "index";
	}

	@RequestMapping(path = "create.do", method = RequestMethod.GET)
	public String create(Model model) {
		model.addAttribute("country", new WorldBank());
		return "addform";
	}

	@RequestMapping(path = "create.do", method = RequestMethod.POST)
	public String create(@Valid WorldBank country, Errors errors, Model model) {
		if (errors.hasErrors()) {
			return "addform";
		}
		if (dao.createCountry(country) != null) {
			model.addAttribute("country", country);
			return "addresults";
		} else {
			return "addform";
		}

	}

	@RequestMapping(path="remove.do", method=RequestMethod.GET)
	public String deleteCountry(@ModelAttribute("id") int id, Errors errors, Model model) {
		if (id <= 0) {
			return "index";
		}
		WorldBank record = dao.findById(id);
		if (dao.deleteCountry(id) != null) {
			model.addAttribute("country", record);
			return "removeresults";
		} else {
			return "index";
		}
		
	}
	@RequestMapping(path = "details.do", method = RequestMethod.GET)
	public String showDetails(@ModelAttribute("id") int id, Errors errors, Model model) {

		if (id <= 0) {
			return "index";
		}

		model.addAttribute("country", dao.findById(id));
		return "details";
	}

	@RequestMapping(path = "update.do", method = RequestMethod.GET)
	public String update(@ModelAttribute("id") int id, Model model) {
		if (id <= 0) {
			return "index";
		}
		model.addAttribute("country", dao.findById(id));
		return "updateform";
	}

	@RequestMapping(path = "update.do", method = RequestMethod.POST)
	public String update(@Valid WorldBank country, @ModelAttribute("id") int id, Errors errors, Model model) {
		country.setId(id);
		dao.updateCountry(country);
		model.addAttribute("country", country);
		return "updatedresults";
	}

	@RequestMapping(path = "country.do", params = "next")
	public ModelAndView getNextCountry(HttpSession session) {
		ModelAndView mv = new ModelAndView();
		WorldBank current = getCurrentStateFromSession(session);
//    mv.addObject("state", s);

		WorldBank wb = dao.getNextCountryName(current);
		session.setAttribute("country", wb);
		mv.setViewName("index");
		return mv;
	}

	@RequestMapping(path = "country.do", params = "prev")
	public ModelAndView getPreviousState(HttpSession session) {
		ModelAndView mv = new ModelAndView();
		WorldBank current = getCurrentStateFromSession(session);
//    mv.addObject("state", s);

		WorldBank wb = dao.getPreviousCountryName(current);
		session.setAttribute("country", wb);
		mv.setViewName("index");
		return mv;
	}

	private WorldBank getCurrentStateFromSession(HttpSession session) {
		WorldBank current = (WorldBank) session.getAttribute("country");

		return current;
	}

}
