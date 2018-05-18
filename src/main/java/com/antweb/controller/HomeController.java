package com.antweb.controller;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);

	@RequestMapping(value = "/testmain", method = RequestMethod.GET)
	public String testmain(Model model, HttpServletRequest req) {
		logger.info("home");
		String old_url = req.getHeader("referer");
		logger.info(old_url);
		
		return "test/testmain";
	}
	
	@RequestMapping(value="/testboard")
	public String boardTest(){
		
		return "test/board";
	}
	
	@RequestMapping(value="/testsub")
	public String testSub(){
		
		return "test/sub";
	}
	
	@RequestMapping(value="/testheader")
	public String testHeadMenu(){
		
		return "test/headmenu";
	}

	//========================== main ===============================
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Model model, HttpServletRequest req) {
		logger.info("home");
		String old_url = req.getHeader("referer");
		logger.info(old_url);
		
		return "main/index";
	}

	
	//========================== info(병원소개)===============================
	@RequestMapping(value="/info01")
	public String info01(){
		
		return "info/info01";
	}
	@RequestMapping(value="/info02")
	public String info02(){
		
		return "info/info02";
	}
	@RequestMapping(value="/info03")
	public String info03(){
		
		return "info/info03";
	}
	@RequestMapping(value="/info04")
	public String info04(){
		
		return "info/info04";
	}
	@RequestMapping(value="/info05")
	public String info05(){
		
		return "info/info05";
	}
	@RequestMapping(value="/location")
	public String info06(){
		
		return "info/location";
	}
	//========================== clinic(진료분야)===============================
	@RequestMapping(value="/clinic01_01")
	public String clinic01_01(){
		
		return "clinic/clinic01_1";
	}
	@RequestMapping(value="/clinic01_02")
	public String clinic01_02(){
		
		return "clinic/clinic01_2";
	}
	@RequestMapping(value="/clinic01_03")
	public String clinic01_03(){
		
		return "clinic/clinic01_3";
	}
	@RequestMapping(value="/clinic01_04")
	public String clinic01_04(){
		
		return "clinic/clinic01_4";
	}
	@RequestMapping(value="/clinic02")
	public String clinic02(){
		
		return "clinic/clinic02";
	}
	@RequestMapping(value="/clinic03_01")
	public String clinic03_01(){
		
		return "clinic/clinic03_1";
	}
	@RequestMapping(value="/clinic03_02")
	public String clinic03_02(){
		
		return "clinic/clinic03_2";
	}
	//========================== news(병원소식)===============================
	@RequestMapping(value="/notice")
	public String notice(){
		
		return "news/notice";
	}
	@RequestMapping(value="/broadcasting")
	public String broadcasting(){
		
		return "news/broadcasting";
	}
	@RequestMapping(value="/comment")
	public String comment(){
		
		return "news/comment";
	}
	@RequestMapping(value="/advice")
	public String advice(){
		
		return "news/advice";
	}
	@RequestMapping(value="/freqQuestion")
	public String frequentlyQuestion(){
		
		return "news/freqQuestion";
	}
}
