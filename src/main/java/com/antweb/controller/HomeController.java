package com.antweb.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.antweb.domain.Criteria;
import com.antweb.domain.NoticeVO;
import com.antweb.domain.PageMaker;
import com.antweb.domain.SearchCriteria;
import com.antweb.service.NoticeService;


@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);

	@Autowired
	private NoticeService nService;
	
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
	@RequestMapping(value="/notice", method=RequestMethod.GET)
	public String notice(@ModelAttribute("cri") SearchCriteria cri, Model model) throws Exception{
		logger.info("notice get");
		
		List<NoticeVO> list=nService.listSearch(cri);
		
		PageMaker pageMaker=new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.makeSearch(cri.getPage());
		pageMaker.setTotalCount(nService.listSearchCount(cri));
		
		model.addAttribute("list", list);
		model.addAttribute("pageMaker", pageMaker);
		
		return "news/notice";
	}
	
	@RequestMapping(value="/noticeRead", method=RequestMethod.GET)
	public String readNotice(@PathVariable("bno") int bno, @PathVariable("page") int page, Model model) throws Exception{
		logger.info("noticeRead Get");
		
		NoticeVO vo=nService.selectOne(bno);
		nService.updateCnt(bno);
		Criteria cri=new Criteria();
		cri.setPage(page);
		
		model.addAttribute("item",vo); 
		return "news/noticeRead";
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
