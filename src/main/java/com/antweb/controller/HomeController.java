package com.antweb.controller;

import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.util.List;
import java.util.Properties;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeUtility;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.antweb.domain.AdviceVO;
import com.antweb.domain.BroadcastingVO;
import com.antweb.domain.CommentVO;
import com.antweb.domain.MemberVO;
import com.antweb.domain.NewsVO;
import com.antweb.domain.NoticeVO;
import com.antweb.domain.PageMaker;
import com.antweb.domain.ReplyVO;
import com.antweb.domain.SearchCriteria;
import com.antweb.domain.StatisticsVO;
import com.antweb.service.AdviceService;
import com.antweb.service.BroadcastingService;
import com.antweb.service.CommentService;
import com.antweb.service.MemberService;
import com.antweb.service.NewsService;
import com.antweb.service.NoticeService;
import com.antweb.service.ReplyService;
import com.antweb.service.StatisticsService;



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
	private NewsService newsService;	
	
	@Autowired
	private AdviceService aService;
	
	@Autowired
	private ReplyService rService;
	
	@Autowired
	private StatisticsService sService;
	
	@Autowired
	private MemberService mService;
	
	@RequestMapping(value = "/testmain", method = RequestMethod.GET)
	public String testmain(Model model, HttpServletRequest req) {
		logger.info("home");
		String old_url = req.getHeader("referer");
		logger.info(old_url);
		
		String t=(String) req.getAttribute("id");
		
		logger.info(t);
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
	
	//========================== member login ===============================
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String loginGet(Model model, HttpServletRequest req) throws UnsupportedEncodingException {
		logger.info("login Get");	
		
		
		StatisticsVO vo = getUser(req);
		if(vo.getUrl().indexOf("http://www.uhan-hospital.com/")>-1){
			logger.info("같은 홈페이지");
		}else{
			sService.insert(getUser(req));
		}
		
		return "membership/login";
	}
	
	@RequestMapping(value="/memberLoginCheck/{id}/{pw}")
	public ResponseEntity<String> memberLoginCheck(@PathVariable("id") String id,@PathVariable("pw") String pw, HttpServletRequest req, Model model) throws Exception{
		logger.info("member Login Check");
		ResponseEntity<String> entity=null;
		
		HttpSession session=req.getSession();
		logger.info(id+", "+pw);
		
		try {
			MemberVO vo=mService.selectOne(id);
			
			String getId=vo.getId();
			String getPw=vo.getPw();
			
			if(id.equals(getId)&&pw.equals(getPw)){
				entity=new ResponseEntity<String>("ok",HttpStatus.OK);
				session.setAttribute("id", id);
				System.out.println("session 아이디"+session.getAttribute("id"));
				model.addAttribute("vo",vo);
			}else{
				entity=new ResponseEntity<String>("no",HttpStatus.OK);
			}
			
			return entity;
		} catch (Exception e) {
			entity=new ResponseEntity<String>("no",HttpStatus.OK);
		}
		
		return entity;
	}
	
	@RequestMapping(value="/userInfo", method=RequestMethod.GET)
	public String userUpdateGet(HttpServletRequest req, Model model){
		HttpSession session=req.getSession();
		MemberVO vo = mService.selectOne(session.getAttribute("id")+"");
		model.addAttribute("vo", vo);
		return "membership/updateInfo";
	}
	
	@RequestMapping(value="/userUpdate/{id}/{pw}/{mail:.+}")
	public ResponseEntity<String> userUpdatePost(@PathVariable("id") String id, @PathVariable("pw") String pw, @PathVariable("mail") String mail, HttpServletRequest req, Model model) throws Exception{
		logger.info("userUpdate post");
		logger.info(mail);
		ResponseEntity<String> entity=null;
		
		try {
			MemberVO vo=mService.selectOne(id);
			
			//vo.setId(id);
			if(pw.equals("no")){
				vo.setPw(vo.getPw());
			}else{
				vo.setPw(pw);
			}
			vo.setMail(mail);
			
			mService.update(vo);
			entity=new ResponseEntity<String>("ok",HttpStatus.OK);
			return entity;
		} catch (Exception e) {
			entity=new ResponseEntity<String>("no",HttpStatus.OK);
		}
		
		return entity;
	}
	
	@RequestMapping(value="/delUser/{id}")
	public String userRemove(@PathVariable("id") String id, HttpServletRequest req){
		logger.info("remove user");
		
		mService.delete(id);
		HttpSession session=req.getSession(false);
		session.invalidate();
		return "redirect:/";
	}
	
	@RequestMapping(value="/userSignIn", method=RequestMethod.GET)
	public String userSignInGet(){
		logger.info("userSignIn Get");
		
		return "membership/signIn";
	}
	
	@RequestMapping(value="/userSignIn", method=RequestMethod.POST)
	public String userSignInPost(MemberVO vo){
		logger.info("signIn Post");
		mService.insert(vo);
		
		return "membership/login";
	}
	
	//회원가입 아이디 중복확인
	@RequestMapping(value="/idCheck/{id}", method=RequestMethod.POST)
	public ResponseEntity<String> userUpdatePost(@PathVariable("id") String id, HttpServletRequest req, Model model){
		logger.info("idCheck");
		ResponseEntity<String> entity= null;
		try {
			MemberVO vo=mService.selectOne(id);
			if(vo.getClass() == null){
				entity=new ResponseEntity<String>("ok",HttpStatus.OK);
			}else if(vo.getClass() != null){
				entity=new ResponseEntity<String>("no",HttpStatus.OK);
			}
		} catch (Exception e) {
			entity=new ResponseEntity<String>("ok",HttpStatus.OK);
		}
		
		return entity;
	}
	
	@RequestMapping(value="/userLoginChk", method=RequestMethod.POST)
	public ResponseEntity<String> userLoginChk(HttpServletRequest req, Model model){
		logger.info("user login check");
		ResponseEntity<String> entity= null;
		HttpSession session=req.getSession();
		String loginId=(String) session.getAttribute("id");
		
		try {
		
			if(loginId==null || loginId.equals("")){
				entity=new ResponseEntity<String>("no",HttpStatus.OK);
			}else{
				entity=new ResponseEntity<String>("ok",HttpStatus.OK);
			}
		} catch (Exception e) {
			entity=new ResponseEntity<String>("no",HttpStatus.OK);
		}
		
		return entity;
	}
	
	@RequestMapping(value="/userFindInfo", method=RequestMethod.GET)
	public String userFindInfoGet(){
		logger.info("userFindInfo Get");
		
		return "membership/findUserInfo";
	}
	
	@RequestMapping(value="/userInfoReq/{mail:.+}", method=RequestMethod.POST)
	public ResponseEntity<String> userInfoReqPost(@PathVariable("mail") String mail, HttpServletRequest req, Model model){
		logger.info("userInfoReq Get");
		ResponseEntity<String> entity= null;
		
		try {
			MemberVO vo=mService.selectByMail(mail);
			if(vo==null || vo.equals("")){
				entity=new ResponseEntity<String>("no",HttpStatus.OK);
			}else{
				SendEmail(vo);
				entity=new ResponseEntity<String>("ok",HttpStatus.OK);
			}
		} catch (Exception e) {
			entity=new ResponseEntity<String>("no",HttpStatus.OK);
		}
		
		return entity;
	}
	
	//메일
	private void SendEmail(MemberVO vo) throws UnsupportedEncodingException {
		logger.info("sendmail 진입");
		String host = "smtp.naver.com";
		String user = "youhanhospital";
		String password = "63xy67$$";
		int port=465;
		
		Properties props = new Properties();
		props.put("mail.smtp.host", host);
		props.put("mail.smtp.port", port);
		props.put("mail.smtp.auth", "true");
		props.put("mail.smtp.ssl.enable", "true");
		props.put("mail.smtp.ssl.trust", host);

		Session session = Session.getDefaultInstance(props, new javax.mail.Authenticator() {
			protected PasswordAuthentication getPasswordAuthentication() {
				return new PasswordAuthentication(user, password);
			}
		});

		// Compose the message
		try {
			MimeMessage message = new MimeMessage(session);
			message.setFrom(new InternetAddress(user,"유한마취통증의학과"));
			message.addRecipient(Message.RecipientType.TO, new InternetAddress(vo.getMail()));

			// Subject
			String subject = "유한통증의학과에서 보내드리는 "+vo.getName()+"님의 가입정보입니다.";
			try {
				message.setSubject(MimeUtility.encodeText(subject, "UTF-8", "B"));
			} catch (UnsupportedEncodingException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			/*String PwMeg = "이름 : " + vo.getName() + "<br>" + "아이디 : " + vo.getId() + "<br>" + "비밀번호 : " + vo.getPw()
					+ "<br>" + "이메일 : " + vo.getMail()+"<br>"+"가입일 : "+vo.getRegdate();

			message.setText(PwMeg, "UTF-8");*/
			message.setContent("<img src='http://www.uhan-hospital.com/resources/images/mailBanner.png'><br>이름 : " + vo.getName() + "<br>" 
					+ "아이디 : " + vo.getId() + "<br>" + "비밀번호 : " + vo.getPw()
					+ "<br>" + "이메일 : " + vo.getMail()+"<br>"+"가입일 : "+vo.getRegdate(), "text/html; charset=utf-8");
			message.setHeader("content-Type", "text/html");

			// send the message
			Transport.send(message);
			System.out.println("전송성공");

		} catch (MessagingException e) {
			e.printStackTrace();
		}
	}
	

	//========================== main ===============================
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Model model, HttpServletRequest req) throws UnsupportedEncodingException {
		logger.info("home");	
		List<NoticeVO> list=nService.selectAll();
		model.addAttribute("list", list);
		StatisticsVO vo = getUser(req);
		if(vo.getUrl().indexOf("http://www.uhan-hospital.com/")>-1){
			logger.info("같은 홈페이지");
		}else{
			sService.insert(getUser(req));
		}
		
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
	@RequestMapping(value="/clinic01_00")
	public String clinic01_00(){
		
		return "clinic/clinic01_0";
	}
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
	@RequestMapping(value="/clinic03_03")
	public String clinic03_03(){
		
		return "clinic/clinic03_3";
	}
	@RequestMapping(value="/clinic03_04")
	public String clinic03_04(){
		
		return "clinic/clinic03_4";
	}

	@RequestMapping(value="/intro1")
	public String intro1(){
		
		return "intro/intro01";
	}
	@RequestMapping(value="/intro2")
	public String intro2(){
		
		return "intro/intro02";
	}
	@RequestMapping(value="/intro3")
	public String intro3(){
		
		return "intro/freqQuestion";
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
		bService.updateCnt(bno);
		
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.makeSearch(cri.getPage());
		pageMaker.setTotalCount(bService.listSearchCount(cri));
		
		model.addAttribute("item", vo);
		model.addAttribute("pageMaker", pageMaker);
		return "news/broadcastingRead";
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
		cService.updateCnt(bno);
		
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.makeSearch(cri.getPage());
		pageMaker.setTotalCount(cService.listSearchCount(cri));
		
		model.addAttribute("item", vo);
		model.addAttribute("pageMaker", pageMaker);
		return "news/commentRead";
	}
	
	@RequestMapping(value = "/news", method = RequestMethod.GET)
	public String news(@ModelAttribute("cri") SearchCriteria cri, RedirectAttributes rttr, Model model) throws Exception {
		logger.info("news get");
		
		List<NewsVO> list = newsService.listSearch(cri);

		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.makeSearch(cri.getPage());
		pageMaker.setTotalCount(newsService.listSearchCount(cri));

		model.addAttribute("list", list);
		model.addAttribute("pageMaker", pageMaker);

		return "/news/news";
	}

	@RequestMapping(value = "/newsRead", method = RequestMethod.GET)
	public String readNews(int bno, @ModelAttribute("cri") SearchCriteria cri, Model model) throws Exception {
		logger.info("newsRead Get");

		NewsVO vo = newsService.selectOne(bno);
		newsService.updateCnt(bno);
		// Criteria cri=new Criteria();
		// cri.setPage(page);
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.makeSearch(cri.getPage());
		pageMaker.setTotalCount(newsService.listSearchCount(cri));
		
		model.addAttribute("item", vo);
		model.addAttribute("pageMaker", pageMaker);
		return "news/newsRead";
	}

	@RequestMapping(value = "/advice", method=RequestMethod.GET)
	public String advice(@ModelAttribute("cri") SearchCriteria cri, Model model) throws Exception {
		logger.info("advice get");
		
		List<AdviceVO> list = aService.listSearch(cri);
		
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.makeSearch(cri.getPage());
		pageMaker.setTotalCount(aService.listSearchCount(cri));
		
		model.addAttribute("list", list);
		model.addAttribute("pageMaker", pageMaker);
		
		return "news/advice";
	}
	
	@RequestMapping(value = "/adviceRegister", method = RequestMethod.GET)
	public String adviceRegisterGet() {
		logger.info("adviceRegister Get");
		
		return "news/adviceRegister";
	}
	
	@RequestMapping(value = "/adviceRegister", method = RequestMethod.POST)
	public String adviceRegisterPost(AdviceVO vo) {
		logger.info("adviceRegister post");
		aService.insert(vo);
		
		return "redirect:/advice";
	}
	
	@RequestMapping(value = "/adviceRegister2", method = RequestMethod.POST)
	public String adviceRegister2Post(AdviceVO vo) {
		logger.info("adviceRegister2 post");
		aService.insert(vo);
		
		return "redirect:/";
	}
	
	@RequestMapping(value = "/advicePWtype", method = RequestMethod.GET)
	public String advicePWcheck(int bno, @ModelAttribute("cri") SearchCriteria cri, Model model) throws Exception {
		logger.info("advicePWcheck Get");
		
		AdviceVO vo=aService.selectOne(bno);
		
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.makeSearch(cri.getPage());
		pageMaker.setTotalCount(aService.listSearchCount(cri));
		
		model.addAttribute("item", vo);
		model.addAttribute("pageMaker", pageMaker);
		
		String pwtype=vo.getPwtype();
		
		if(pwtype.equals("o")){
			logger.info("go Read");
			
			ReplyVO rvo=rService.select(bno);
			aService.updateCnt(bno);
			
			model.addAttribute("reply", rvo);
			
			return "news/adviceRead";
		}
		
		return "news/advicePWcheck";
	}
	
	@RequestMapping(value = "/advicePWcheck2", method = RequestMethod.POST)
	public ResponseEntity<String> advicePWCheckPost(@RequestBody AdviceVO voo) {
		logger.info("advicePWcheck post");
		
		ResponseEntity<String> entity=null;
		try{
			AdviceVO vo=aService.selectOne(voo.getBno());
			String realPW=vo.getPw();
			
			if(realPW.equals(voo.getPw())){
				logger.info("패스워드 맞음");
				entity=new ResponseEntity<String>("ok",HttpStatus.OK);
				return entity;
			}else{
				logger.info("패스워드 틀림");
				entity=new ResponseEntity<String>("no",HttpStatus.OK);
				return entity;
			}
		}catch (Exception e) {
			e.printStackTrace();
			entity=new ResponseEntity<String>("no",HttpStatus.BAD_REQUEST);
			
		}
		
		return entity;
	}
	
	@RequestMapping(value="/adviceRead")
	public String adviceRead(int bno, @ModelAttribute("cri") SearchCriteria cri, Model model) throws Exception {
		
		AdviceVO vo=aService.selectOne(bno);
		ReplyVO rvo=rService.select(bno);
		aService.updateCnt(bno);
		
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.makeSearch(cri.getPage());
		pageMaker.setTotalCount(aService.listSearchCount(cri));
		
		model.addAttribute("pageMaker", pageMaker);
		
		
		model.addAttribute("item",vo);
		model.addAttribute("reply", rvo);
		
		return "news/adviceRead";
	}
	
	@RequestMapping(value="/adviceUpdate", method=RequestMethod.GET)
	public String adviceUpdateGet(int bno, @ModelAttribute("cri") SearchCriteria cri, Model model) throws Exception {
		logger.info("adviceUpdate");
		
		AdviceVO vo=aService.selectOne(bno);
		
		PageMaker pageMaker = new PageMaker();
		
		pageMaker.setCri(cri);
		pageMaker.makeSearch(cri.getPage());
		pageMaker.setTotalCount(aService.listSearchCount(cri));
		
		
		model.addAttribute("item",vo);
		model.addAttribute("pageMaker", pageMaker);
		
		return "news/adviceUpdate";
	}
	
	@RequestMapping(value="/adviceUpdate", method=RequestMethod.POST)
	public String adviceUpdatePost(AdviceVO vo, @ModelAttribute("cri") SearchCriteria cri, Model model) throws Exception{
		logger.info("adviceUpdate Post");
		
		aService.update(vo);
		
		PageMaker pageMaker = new PageMaker();
		
		pageMaker.setCri(cri);
		
		return "redirect:/adviceRead"+pageMaker.makeSearch(cri.getPage())+"&bno="+vo.getBno();
	}
	
	@RequestMapping(value="/adviceDelete")
	public String adviceDelete(int bno, @ModelAttribute("cri") SearchCriteria cri) throws Exception{
		logger.info("adviceDelete");
		aService.delete(bno);
		
		PageMaker pageMaker = new PageMaker();
		
		pageMaker.setCri(cri);
		
		return "redirect:/advice"+pageMaker.makeSearch(cri.getPage());
	}
	
	private StatisticsVO getUser(HttpServletRequest request) throws UnsupportedEncodingException{
		String decodeResult;
		if(request.getHeader("referer")==null){
			decodeResult=null;
		}else{
			decodeResult = URLDecoder.decode(request.getHeader("referer"), "UTF-8");
		} 
		
		
		String agent = request.getHeader("User-Agent");
		String browser = null;
		String device = "";
		String old_url = decodeResult; 
	
		StatisticsVO vo = new StatisticsVO();
		
		if(agent !=null){
			if(agent.indexOf("Trident")>-1){
				browser = "Explorer";
				device  ="PC";
			}else if(agent.indexOf("Chrome")>-1){
				
				if(agent.indexOf("Android")>-1 && agent.indexOf("Mobile")>-1){
					device  ="Mobile";
					if(agent.indexOf("SamsungBrowser")>-1){
						browser="SamsungBrowser";
					}else if(agent.indexOf("inapp")>-1 && agent.indexOf("NAVER")>-1){
						browser="Naver App";
					}else{
						browser="etc";
					}
				}else{
					browser = "Chrome";
					device  ="PC";
				}
				
			}else if(agent.indexOf("Opera")>-1){
				browser = "Opera";
				device  ="PC";
			}else if(agent.indexOf("iPhone")>-1 && agent.indexOf("Mobile")>-1){
				device  ="Mobile";
				if(agent.indexOf("Safari")>-1){
					browser="Safari";
				}else if(agent.indexOf("inapp")>-1 && agent.indexOf("NAVER")>-1){
					browser="Naver App";
				}else{
					browser="etc";
				}
			}else if(agent.indexOf("iPad")>-1 && agent.indexOf("Mobile")>-1){
				device = "Tablet Pc";
				
				if(agent.indexOf("Safari")>-1){
					browser="Safari";
				}else if(agent.indexOf("inapp")>-1 && agent.indexOf("NAVER")>-1){
					browser="Naver App";
				}else{
					browser="etc";
				}
			}else{
				browser="etc";
				device = "etc";
			}
		}
		
		if(old_url==null){
			vo.setUrl("직접");
		}else{
			vo.setUrl(old_url);
		}
		
		vo.setBrowser(browser);
		vo.setDevice(device);
		
		return vo;
	}
	
	@RequestMapping(value="/adminLogin", method=RequestMethod.GET)
	public String adminLogin() throws Exception {
		logger.info("adminLogin");

		return "admin/adminLogin";
	}
	
	@RequestMapping(value="/loginCheck/{id}/{pw}")
	public ResponseEntity<String> loginCheck(@PathVariable("id") String id,@PathVariable("pw") String pw, HttpServletRequest req) throws Exception{
		logger.info("admin Login Check");
		ResponseEntity<String> entity=null;
		
		HttpSession session=req.getSession();
		
		if(id.equals("admin")&&pw.equals("uhan7536001")){
			entity=new ResponseEntity<String>("ok",HttpStatus.OK);
			session.setAttribute("id", id);
			System.out.println("session 아이디"+session.getAttribute("id"));
		}else{
			entity=new ResponseEntity<String>("no",HttpStatus.OK);
		}
		
		return entity;
	}
	
	@RequestMapping(value="/logout",method=RequestMethod.GET)
	public String logout(HttpServletRequest req){
		HttpSession session=req.getSession(false);
		
		session.invalidate();
		
		return "redirect:/";
	}
		
	//개인정보처리방침
	@RequestMapping(value = "/personalInfo", method = RequestMethod.GET)
	public String personalInfoGet() {
		logger.info("personalInfo Get");
		
		return "membership/personalInfo";
	}
	
	//이용약관
	@RequestMapping(value = "/agreement", method = RequestMethod.GET)
	public String agreementGet() {
		logger.info(" Get");
		
		return "membership/agreement";
	}
}
