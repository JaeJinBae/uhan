package com.antweb.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Model model) {
		logger.info("home");
		
		return "home";
	}
	
	@RequestMapping(value="notice")
	public String noticeGet(){
		logger.info("notice GET");
		
		return "main/notice";
	}

	@RequestMapping(value="/board")
	public String boardTest(){
		
		return "custom/board";
	}
	
	@RequestMapping(value="/location")
	public String locationTest(){
		
		return "custom/location";
	}
	
}
