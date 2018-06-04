package com.antweb.controller;

import java.io.File;
import java.io.FileOutputStream;
import java.io.OutputStream;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.logging.SimpleFormatter;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.antweb.domain.AdviceVO;
import com.antweb.domain.BroadcastingVO;
import com.antweb.domain.CommentVO;
import com.antweb.domain.NoticeVO;
import com.antweb.domain.PageMaker;
import com.antweb.domain.ReplyVO;
import com.antweb.domain.SearchCriteria;
import com.antweb.service.AdviceService;
import com.antweb.service.BroadcastingService;
import com.antweb.service.CommentService;
import com.antweb.service.NoticeService;
import com.antweb.service.ReplyService;
import com.antweb.service.StatisticsService;

@Controller
@RequestMapping("/admin/*")
public class AdminController {
	private static final Logger logger = LoggerFactory.getLogger(AdminController.class);

	@Autowired
	private NoticeService nService;

	@Autowired
	private BroadcastingService bService; 

	@Autowired
	private CommentService cService;
	
	@Autowired
	private AdviceService aService;
	
	@Autowired
	private ReplyService rService;
	
	@Autowired
	private StatisticsService sService;
	
	@RequestMapping(value="/")
	public String adminMain(@ModelAttribute("cri") SearchCriteria cri, Model model) throws Exception {
		logger.info("adminNotice GET");
		
		List<NoticeVO> list = nService.listSearch(cri);

		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.makeSearch(cri.getPage());
		pageMaker.setTotalCount(nService.listSearchCount(cri));

		model.addAttribute("list", list);
		model.addAttribute("pageMaker", pageMaker);
		
		return "admin/adminNotice";
	}
	
	@RequestMapping(value="/adminNotice")
	public String adminNotice(@ModelAttribute("cri") SearchCriteria cri, Model model) throws Exception {
		logger.info("adminNotice GET");
		
		List<NoticeVO> list = nService.listSearch(cri);

		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.makeSearch(cri.getPage());
		pageMaker.setTotalCount(nService.listSearchCount(cri));

		model.addAttribute("list", list);
		model.addAttribute("pageMaker", pageMaker);
		
		return "admin/adminNotice";
	}
	
	@RequestMapping(value = "/adminNoticeRead", method = RequestMethod.GET)
	public String adminNoticeRead(int bno, @ModelAttribute("cri") SearchCriteria cri, Model model) throws Exception {
		logger.info("adminNoticeRead Get");

		NoticeVO vo = nService.selectOne(bno);
		nService.updateCnt(bno);
		
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.makeSearch(cri.getPage());
		pageMaker.setTotalCount(nService.listSearchCount(cri));
		
		model.addAttribute("item", vo);
		model.addAttribute("pageMaker", pageMaker);
		return "admin/adminNoticeRead";
	}
	
	@RequestMapping(value = "/adminNoticeRegister", method = RequestMethod.GET)
	public String adminNoticeRegisterGet() {
		logger.info("adminNoticeRegister Get");
		
		return "admin/adminNoticeRegister";
	}
	
	@RequestMapping(value = "/adminNoticeRegister", method = RequestMethod.POST)
	public String adminNoticeRegisterPost(NoticeVO vo) {
		logger.info("adminNoticeRegister post");
		nService.insert(vo);

		return "redirect:/admin/adminNotice";
	}
	
	@RequestMapping(value = "/adminNoticeUpdate", method = RequestMethod.GET)
	public String adminNoticeUpdateGet(int bno, @ModelAttribute("cri") SearchCriteria cri, Model model) throws Exception {
		logger.info("adminNoticeUpdate get");
		
		NoticeVO vo = nService.selectOne(bno);
		
		PageMaker pageMaker=new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.makeSearch(cri.getPage());
		pageMaker.setTotalCount(nService.listSearchCount(cri));
		
		model.addAttribute("item", vo);
		model.addAttribute("pageMaker",pageMaker);
		
		
		return "admin/adminNoticeUpdate";
	}

	@RequestMapping(value = "/adminNoticeUpdate", method = RequestMethod.POST)
	public String modifyPost(NoticeVO vo,int page,@ModelAttribute("cri") SearchCriteria cri,RedirectAttributes rtts, Model model) throws Exception {
		logger.info("adminNoticeUpdate post");
		
		nService.update(vo);
		
		rtts.addAttribute("bno", vo.getBno());
		
		PageMaker pageMaker=new PageMaker();
		
		pageMaker.setCri(cri);
		pageMaker.makeSearch(page);
		
		pageMaker.setTotalCount(nService.listSearchCount(cri));
		
		rtts.addAttribute("page",page);
		
		
		return "redirect:/admin/adminNoticeRead";
	}
	
	@RequestMapping(value = "/adminNoticeDelete", method = RequestMethod.GET) 
	public String adminNoticeDelete(int bno, SearchCriteria cri,RedirectAttributes rtts) throws Exception {
		logger.info("delete");
		
		nService.delete(bno);//게시글, 파일 삭제
		rtts.addAttribute("perPageNum",cri.getPerPageNum());
		rtts.addAttribute("page",cri.getPage());

		return "redirect:/admin/adminNotice";
	}
	
	
	@RequestMapping(value = "/adminBroadcasting")
	public String broadcasting(@ModelAttribute("cri") SearchCriteria cri, Model model) throws Exception {

		logger.info("adminBroadcasting get");

		List<BroadcastingVO> list = bService.listSearch(cri);

		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.makeSearch(cri.getPage());
		pageMaker.setTotalCount(bService.listSearchCount(cri));

		model.addAttribute("list", list);
		model.addAttribute("pageMaker", pageMaker);

		return "admin/adminBroadcasting";
	}

	@RequestMapping(value = "/adminBroadcastingRead", method = RequestMethod.GET)
	public String readBroadcasting(int bno, @ModelAttribute("cri") SearchCriteria cri, Model model) throws Exception {
		logger.info("adminBroadcastingRead Get");

		BroadcastingVO vo = bService.selectOne(bno);
		bService.updateCnt(bno);
		
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.makeSearch(cri.getPage());
		pageMaker.setTotalCount(bService.listSearchCount(cri));
		
		model.addAttribute("item", vo);
		model.addAttribute("pageMaker", pageMaker);
		return "admin/adminBroadcastingRead";
	}
	
	@RequestMapping(value = "/adminBroadcastingRegister", method = RequestMethod.GET)
	public String adminBroadcastingeRegisterGet() {
		logger.info("adminBroadcastingRegister Get");
		
		return "admin/adminBroadcastingRegister";
	}
	
	@RequestMapping(value = "/adminBroadcastingRegister", method = RequestMethod.POST)
	public String adminBroadcastingRegisterPost(BroadcastingVO vo) {
		logger.info("adminBroadcastingRegister post");
		bService.insert(vo);

		return "redirect:/admin/adminBroadcasting";
	}
	
	@RequestMapping(value = "/adminBroadcastingUpdate", method = RequestMethod.GET)
	public String adminBroadcastingUpdateGet(int bno, @ModelAttribute("cri") SearchCriteria cri, Model model) throws Exception {
		logger.info("adminBroadcastingUpdate get");
		
		BroadcastingVO vo = bService.selectOne(bno);
		
		PageMaker pageMaker=new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.makeSearch(cri.getPage());
		pageMaker.setTotalCount(bService.listSearchCount(cri));
		
		model.addAttribute("item", vo);
		model.addAttribute("pageMaker",pageMaker);
		
		
		return "admin/adminBroadcastingUpdate";
	}

	@RequestMapping(value = "/adminBroadcastingUpdate", method = RequestMethod.POST)
	public String modifyPost(BroadcastingVO vo,int page,@ModelAttribute("cri") SearchCriteria cri,RedirectAttributes rtts, Model model) throws Exception {
		logger.info("adminBroadcastingUpdate post");
		
		logger.info("page: "+page);
		
		bService.update(vo);
		
		rtts.addAttribute("bno", vo.getBno());
		
		PageMaker pageMaker=new PageMaker();
		
		pageMaker.setCri(cri);
		pageMaker.makeSearch(page);
		
		pageMaker.setTotalCount(bService.listSearchCount(cri));
		
		rtts.addAttribute("page",page);
		
		
		return "redirect:/admin/adminBroadcastingRead";
	}
	
	@RequestMapping(value = "/adminBroadcastingDelete", method = RequestMethod.GET) 
	public String adminBroadcastingDelete(int bno, SearchCriteria cri,RedirectAttributes rtts) throws Exception {
		logger.info("adminBroadcastingDelete");
		
		bService.delete(bno);//게시글, 파일 삭제
		rtts.addAttribute("perPageNum",cri.getPerPageNum());
		rtts.addAttribute("page",cri.getPage());

		return "redirect:/admin/adminBroadcasting";
	}
	
	

	@RequestMapping(value = "/adminComment")
	public String comment(@ModelAttribute("cri") SearchCriteria cri, Model model) throws Exception {

		logger.info("adminComment get");

		List<CommentVO> list = cService.listSearch(cri);

		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.makeSearch(cri.getPage());
		pageMaker.setTotalCount(cService.listSearchCount(cri));

		model.addAttribute("list", list);
		model.addAttribute("pageMaker", pageMaker);

		return "admin/adminComment";
	}

	@RequestMapping(value = "/adminCommentRead", method = RequestMethod.GET)
	public String readNComment(int bno, @ModelAttribute("cri") SearchCriteria cri, Model model) throws Exception {
		logger.info("adminCommentRead Get");

		CommentVO vo = cService.selectOne(bno);
		cService.updateCnt(bno);
		
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.makeSearch(cri.getPage());
		pageMaker.setTotalCount(cService.listSearchCount(cri));
		
		model.addAttribute("item", vo);
		model.addAttribute("pageMaker", pageMaker);
		return "admin/adminCommentRead";
	}
	
	@RequestMapping(value = "/adminCommentRegister", method = RequestMethod.GET)
	public String adminCommentRegisterGet() {
		logger.info("adminCommentRegister Get");
		
		return "admin/adminCommentRegister";
	}
	
	@RequestMapping(value = "/adminCommentRegister", method = RequestMethod.POST)
	public String adminCommentRegisterPost(CommentVO vo) {
		logger.info("adminCommentRegister post");
		cService.insert(vo);

		return "redirect:/admin/adminComment";
	}
	
	@RequestMapping(value = "/adminCommentUpdate", method = RequestMethod.GET)
	public String adminCommentUpdateGet(int bno, @ModelAttribute("cri") SearchCriteria cri, Model model) throws Exception {
		logger.info("adminCommentUpdate get");
		
		CommentVO vo = cService.selectOne(bno);
		
		PageMaker pageMaker=new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.makeSearch(cri.getPage());
		pageMaker.setTotalCount(cService.listSearchCount(cri));
		
		model.addAttribute("item", vo);
		model.addAttribute("pageMaker",pageMaker);
		
		
		return "admin/adminCommentUpdate";
	}

	@RequestMapping(value = "/adminCommentUpdate", method = RequestMethod.POST)
	public String modifyPost(CommentVO vo,int page,@ModelAttribute("cri") SearchCriteria cri,RedirectAttributes rtts, Model model) throws Exception {
		logger.info("adminCommentUpdate post");
		
		cService.update(vo);
		
		rtts.addAttribute("bno", vo.getBno());
		
		PageMaker pageMaker=new PageMaker();
		
		pageMaker.setCri(cri);
		pageMaker.makeSearch(page);
		
		pageMaker.setTotalCount(cService.listSearchCount(cri));
		
		rtts.addAttribute("page",page);
		
		return "redirect:/admin/adminCommentRead";
	}
	
	@RequestMapping(value = "/adminCommentDelete", method = RequestMethod.GET) 
	public String adminCommentDelete(int bno, SearchCriteria cri,RedirectAttributes rtts) throws Exception {
		logger.info("adminCommentDelete");
		
		cService.delete(bno);//게시글, 파일 삭제
		rtts.addAttribute("perPageNum",cri.getPerPageNum());
		rtts.addAttribute("page",cri.getPage());

		return "redirect:/admin/adminComment";
	}
	
	@RequestMapping(value = "/adminAdvice", method=RequestMethod.GET)
	public String advice(@ModelAttribute("cri") SearchCriteria cri, Model model) throws Exception {
		logger.info("advice get");
		
		List<AdviceVO> list = aService.listSearch(cri);
		
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.makeSearch(cri.getPage());
		pageMaker.setTotalCount(aService.listSearchCount(cri));
		
		model.addAttribute("list", list);
		model.addAttribute("pageMaker", pageMaker);

		return "admin/adminAdvice";
	}
	
	@RequestMapping(value = "/adminAdviceRead", method = RequestMethod.GET)
	public String adminAdviceRead(int bno, @ModelAttribute("cri") SearchCriteria cri, Model model) throws Exception {
		logger.info("adminAdviceRead Get");

		AdviceVO vo = aService.selectOne(bno);
		ReplyVO rvo=rService.select(bno);
		
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.makeSearch(cri.getPage());
		pageMaker.setTotalCount(aService.listSearchCount(cri));
		
		model.addAttribute("item", vo);
		model.addAttribute("reply", rvo);
		model.addAttribute("pageMaker", pageMaker);
		return "admin/adminAdviceRead";
	}
	
	@RequestMapping(value="/adminAdviceAddReply", method=RequestMethod.POST)
	public String adminAdviceAddReply(ReplyVO vo) throws Exception{
		logger.info("adminAdviceAddReply POSt");
		
		rService.insert(vo);
		
		
		return "redirect:/admin/adminAdvice";
	}
	
	@RequestMapping(value="/adminAdviceUpdate", method=RequestMethod.GET)
	public String adminAdviceUpdateGet(int bno, @ModelAttribute("cri") SearchCriteria cri, Model model) throws Exception{
		logger.info("adminAdviceUpdate Get");
		
		AdviceVO vo=aService.selectOne(bno);
		
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.makeSearch(cri.getPage());
		pageMaker.setTotalCount(aService.listSearchCount(cri));
		
		model.addAttribute("item", vo);
		model.addAttribute("pageMaker", pageMaker);
		
		return "admin/adminAdviceUpdate";
	}
	
	@RequestMapping(value="/adminAdviceUpdate", method=RequestMethod.POST)
	public String adminAdviceUpdatePost(AdviceVO vo,  @ModelAttribute("cri") SearchCriteria cri, Model model) throws Exception{
		logger.info("adminAdvicePost");
		
		aService.update(vo);
		
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		
		return "redirect:/admin/adminAdviceRead"+pageMaker.makeSearch(cri.getPage())+"&bno="+vo.getBno();
	}
	
	@RequestMapping(value="/adminAdviceDelete")
	public String adminAdviceDelete(int bno, @ModelAttribute("cri") SearchCriteria cri, Model model) throws Exception{
		logger.info("adminAdviceDelete");
		
		aService.delete(bno);
		rService.delete(bno);
		
		PageMaker pageMaker=new PageMaker();
		pageMaker.setCri(cri);
		
		return "redirect:/admin/adminAdvice"+pageMaker.makeSearch(cri.getPage());
	}
	
	@RequestMapping(value="/adminAdviceReplyUpdate", method=RequestMethod.GET)
	public String adminAdviceReplyUpdateGet(int bno, @ModelAttribute("cri") SearchCriteria cri, Model model) throws Exception{
		logger.info("adminAdviceReplyUpdate Get");
		
		ReplyVO rvo=rService.select(bno);
		
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.makeSearch(cri.getPage());
		pageMaker.setTotalCount(aService.listSearchCount(cri));
		
		model.addAttribute("reply", rvo);
		model.addAttribute("pageMaker", pageMaker);
		
		return "admin/adminAdviceReplyUpdate";
	}
	
	@RequestMapping(value="/adminAdviceReplyUpdate", method=RequestMethod.POST)
	public String adminAdviceReplyUpdatePost(ReplyVO vo, @ModelAttribute("cri") SearchCriteria cri, Model model) throws Exception{
		logger.info("adminAdviceReplyUpdate Post");
		
		rService.update(vo);
		
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);

		
		return "redirect:/admin/adminAdviceRead"+pageMaker.makeSearch(cri.getPage())+"&bno="+vo.getBno();
	}
	
	@RequestMapping(value="/adminAdviceReplyDelete")
	public String adminAdviceReplyDelete(int bno, @ModelAttribute("cri") SearchCriteria cri, Model model) throws Exception{
		logger.info("adminAdviceReplyDelete");
		
		rService.delete(bno);
		aService.updateStateWait(bno);
		
		PageMaker pageMaker=new PageMaker();
		pageMaker.setCri(cri);
		
		return "redirect:/admin/adminAdviceRead"+pageMaker.makeSearch(cri.getPage())+"&bno="+bno;
	}
	
	@ResponseBody
	@RequestMapping("/imgUpload")
	public Map<String, Object> imgaeUpload(HttpServletRequest req, @RequestParam MultipartFile upload, Model model)
			throws Exception {
		logger.info("image upload!!!!!");

		// http body
		OutputStream out = null;

		Map<String, Object> map = new HashMap<String, Object>();

		// 업로드한 파일 이름
		String fileName = upload.getOriginalFilename();

		//바이트 배열로 변환
		byte[] bytes=upload.getBytes();
		
		//이미지를 업로드할 디렉토리(배포경로로 설정)
		String innerUploadPath="resources/upload/";
		String uploadPath= (req.getSession().getServletContext().getRealPath("/"))+ innerUploadPath;
		logger.info(uploadPath);
		
		out=new FileOutputStream(new File(uploadPath+fileName));//서버에 파일 저장
		//서버에 저장됨
		out.write(bytes);

		String fileUrl="/"+innerUploadPath+fileName;

		System.out.println(fileUrl);
		
		map.put("uploaded", 1);
		map.put("fileName", fileName);
		map.put("url", fileUrl);


		return map;
	}
	
	@RequestMapping(value="/statistics")
	public String statistics(HttpServletRequest req, Model model){
		logger.info("admin statistics Main");
		String uri=req.getRequestURI();
		model.addAttribute("uri",uri);
		
		model.addAttribute("total",sService.total());
		
		Date today = new Date();
		model.addAttribute("today",today);
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		model.addAttribute("todayCount",sService.selectCount("%"+sdf.format(today)+"%"));
		
		return "/admin/adminStatistics";
	}
	
	

}
