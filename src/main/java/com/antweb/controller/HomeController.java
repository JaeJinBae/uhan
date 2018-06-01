package com.antweb.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.swing.JOptionPane;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.springframework.web.servlet.support.RequestContext;

import com.antweb.domain.AdviceVO;
import com.antweb.domain.BroadcastingVO;
import com.antweb.domain.CommentVO;
import com.antweb.domain.NoticeVO;
import com.antweb.domain.PageMaker;
import com.antweb.domain.SearchCriteria;
import com.antweb.service.AdviceService;
import com.antweb.service.BroadcastingService;
import com.antweb.service.CommentService;
import com.antweb.service.NoticeService;


@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);

	@Autowired
	private NoticeService nService;

	@Autowired
	private BroadcastingService bService; 

	@Autowired
	private CommentService cService;
	
	@Autowired
	private AdviceService aService;
	
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
		//logger.info(old_url);
		//logger.info("Browser : "+getBrowser(req));
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

	// ========================== news(병원소식)===============================
	@RequestMapping(value = "/notice", method = RequestMethod.GET)
	public String notice(@ModelAttribute("cri") SearchCriteria cri, RedirectAttributes rttr, Model model) throws Exception {
		logger.info("notice get");
		
		List<NoticeVO> list = nService.listSearch(cri);

		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.makeSearch(cri.getPage());
		pageMaker.setTotalCount(nService.listSearchCount(cri));

		model.addAttribute("list", list);
		model.addAttribute("pageMaker", pageMaker);

		return "/news/notice";
	}

	@RequestMapping(value = "/noticeRead", method = RequestMethod.GET)
	public String readNotice(int bno, @ModelAttribute("cri") SearchCriteria cri, Model model) throws Exception {
		logger.info("noticeRead Get");

		NoticeVO vo = nService.selectOne(bno);
		nService.updateCnt(bno);
		// Criteria cri=new Criteria();
		// cri.setPage(page);
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.makeSearch(cri.getPage());
		pageMaker.setTotalCount(nService.listSearchCount(cri));
		
		model.addAttribute("item", vo);
		model.addAttribute("pageMaker", pageMaker);
		return "news/noticeRead";
	}

	@RequestMapping(value = "/broadcasting")
	public String broadcasting(@ModelAttribute("cri") SearchCriteria cri, Model model) throws Exception {

		logger.info("broadcasting get");

		List<BroadcastingVO> list = bService.listSearch(cri);

		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.makeSearch(cri.getPage());
		pageMaker.setTotalCount(bService.listSearchCount(cri));

		model.addAttribute("list", list);
		model.addAttribute("pageMaker", pageMaker);

		return "news/broadcasting";
	}

	@RequestMapping(value = "/broadcastingRead", method = RequestMethod.GET)
	public String readBroadcasting(int bno, @ModelAttribute("cri") SearchCriteria cri, Model model) throws Exception {
		logger.info("broadcastingRead Get");

		BroadcastingVO vo = bService.selectOne(bno);
		nService.updateCnt(bno);
		
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.makeSearch(cri.getPage());
		pageMaker.setTotalCount(nService.listSearchCount(cri));
		
		model.addAttribute("item", vo);
		model.addAttribute("pageMaker", pageMaker);
		return "news/noticeRead";
	}

	@RequestMapping(value = "/comment")
	public String comment(@ModelAttribute("cri") SearchCriteria cri, Model model) throws Exception {

		logger.info("comment get");

		List<CommentVO> list = cService.listSearch(cri);

		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.makeSearch(cri.getPage());
		pageMaker.setTotalCount(cService.listSearchCount(cri));

		model.addAttribute("list", list);
		model.addAttribute("pageMaker", pageMaker);

		return "news/comment";
	}

	@RequestMapping(value = "/commentRead", method = RequestMethod.GET)
	public String readNComment(int bno, @ModelAttribute("cri") SearchCriteria cri, Model model) throws Exception {
		logger.info("commentRead Get");

		CommentVO vo = cService.selectOne(bno);
		nService.updateCnt(bno);
		
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.makeSearch(cri.getPage());
		pageMaker.setTotalCount(nService.listSearchCount(cri));
		
		model.addAttribute("item", vo);
		model.addAttribute("pageMaker", pageMaker);
		return "news/noticeRead";
	}

	@RequestMapping(value = "/advice")
	public String advice(@ModelAttribute("cri") SearchCriteria cri, Model model) throws Exception {
		logger.info("advice get");
		
		List<AdviceVO> list = aService.listSearch(cri);
		
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.makeSearch(cri.getPage());
		pageMaker.setTotalCount(cService.listSearchCount(cri));
		
		model.addAttribute("list", list);
		model.addAttribute("pageMaker", pageMaker);
		
		return "news/advice";
	}

	@RequestMapping(value = "/freqQuestion")
	public String frequentlyQuestion() {

		return "news/freqQuestion";
	}
	
	private String getBrowser(HttpServletRequest request){
		String agent = request.getHeader("User-Agent");
		String browser = null;
		String old_url = request.getHeader("referer"); 
		
		if(agent !=null){
			if(agent.indexOf("Trident")>-1){
				browser = "MSIE";
			}else if(agent.indexOf("Chrome")>-1){
				
				if(agent.indexOf("Android")>-1 && agent.indexOf("Mobile")>-1){
					browser = "Android";
				}else{
					browser = "Chrome";
				}
				
			}else if(agent.indexOf("Opera")>-1){
				browser = "Opera";
			}else if(agent.indexOf("iPhone")>-1 && agent.indexOf("Mobile")>-1){
				browser = "iPhone";
			}
		}
		logger.info("agent : "+agent);
		logger.info("browser : "+browser);
		logger.info("url : "+old_url);
		return browser;
	}
	
}
