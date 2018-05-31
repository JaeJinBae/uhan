package com.antweb.controller;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.antweb.service.BoardService;

@Controller
@RequestMapping("/admin/*")
public class AdminController {
	private static final Logger logger = LoggerFactory.getLogger(AdminController.class);

	@Autowired
	private BoardService service;
	
	@RequestMapping(value="/")
	public String adminMain(){
		logger.info("adminMain GET");
		
		return "admin/adminNotice";
	}
	
	@RequestMapping(value="/aBoard")
	public String board(){
		logger.info("admin Board Main");
		
		return "/admin/adminBoard";
	}
	
	@RequestMapping(value="/statistics")
	public String statistics(HttpServletRequest req, Model model){
		logger.info("admin statistics Main");
		String uri=req.getRequestURI();
		model.addAttribute("uri",uri);
		return "/admin/adminStatistics";
	}
	/*@RequestMapping(value = "/board", method = RequestMethod.GET)
	public String home(@ModelAttribute("cri") SearchCriteria cri, Model model) throws Exception {
		logger.info("home입니다.");
		
		List<BoardVO> list = bservice.listSearch(cri);
		
		PageMaker pageMaker=new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.makeSearch(cri.getPage());
		pageMaker.setTotalCount(bservice.listSearchCount(cri));
		
		model.addAttribute("list", list);
		model.addAttribute("pageMaker",pageMaker);
		return "home";
	}

	@RequestMapping(value = "/read/{bno}/{page}")
	public String read(@PathVariable("bno") int bno, @PathVariable("page") int page, Model model) throws Exception {
		logger.info("read");

		BoardVO vo = bservice.selectOne(bno);
		bservice.updateCnt(bno);
		Criteria cri=new Criteria();
		cri.setPage(page);
		List<ReplyVO> list=rservice.listReplyPage(bno, cri);
		
		
		PageMaker pageMaker=new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.setTotalCount(rservice.count(bno));
		
		model.addAttribute("item", vo);
		model.addAttribute("list",list);
		model.addAttribute("pageMaker",pageMaker);
		
		return "readForm";
	}
	
	@RequestMapping(value="/pwcheck/{bno}", method=RequestMethod.GET)
	public String pwcheckGet(@PathVariable("bno") int bno, Model model){
		logger.info("pwcheck Get");
		
		BoardVO vo=bservice.selectOne(bno);
		if(vo.getPwtype().equals("x")){
			logger.info(vo.getPwtype());
			model.addAttribute("bno",bno);
			model.addAttribute("page",1);
			return "redirect:/read/"+bno+"/"+1;
		}
		
		model.addAttribute("vo",vo);
		return "pwcheck";
	}

	@RequestMapping(value = "/register", method = RequestMethod.GET)
	public String registerGet() {
		logger.info("registerGet");

		return "registerForm";
	}

	@RequestMapping(value = "/register", method = RequestMethod.POST)
	public String registerPost(BoardVO vo) {
		logger.info("registerPost");
		bservice.insert(vo);

		return "redirect:/board";
	}

	@ResponseBody
	@RequestMapping("imgUpload")
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
		
		// 외부 ftp접속해서 파일 업로드==================================================================================================================================
		String serverIp = "112.175.85.200";//호스트 주소(ex. http://아이디.iud.cdn3.cafe24.com)
		int serverPort = 21;//포트번호
		String user = "test7425";//ftp아이디
		String password = "qowowls12!";//ftp비밀번호

		FileInputStream fis = null;
		FTPClient ftpClient = new FTPClient();

		File fileObj = multipartToFile(upload);

		try {
			ftpClient.connect(serverIp, serverPort);// ftp연결
			ftpClient.setControlEncoding("utf-8");// ftp인코딩설정
			int reply = ftpClient.getReplyCode();// 응답코드받기
			if (!FTPReply.isPositiveCompletion(reply)) {
				ftpClient.disconnect();
				throw new Exception(serverIp + "FTP 서버 연결 실패");
			}

			ftpClient.setSoTimeout(1000 * 20);
			ftpClient.login(user, password);
			ftpClient.changeWorkingDirectory("www");//디렉토리변경(저장할 폴더로 이동)
			ftpClient.setFileType(FTP.BINARY_FILE_TYPE);
			ftpClient.enterLocalActiveMode();

			fis = new FileInputStream(fileObj);
			ftpClient.storeFile(upload.getOriginalFilename(), fis);
		} finally {
			if (ftpClient.isConnected()) {
				ftpClient.disconnect();
			}
			if (fis != null) {
				fis.close();
			}
		}

		map.put("uploaded", 1);
		map.put("fileName", fileName);
		map.put("url", "http://test7425.cdn3.cafe24.com/"+fileName);

		return map;
	}
	
	public File multipartToFile(MultipartFile multipart) throws IllegalStateException, IOException {
		File convFile = new File(multipart.getOriginalFilename());
		multipart.transferTo(convFile);
		return convFile;
	}

	@RequestMapping("/delete/{bno}")
	public String delete(@PathVariable("bno") int bno) throws Exception {
		logger.info("delete");
		
		rservice.deleteByBno(bno);
		bservice.delete(bno);
		
		return "redirect:/";
	}
	
	@RequestMapping(value="/update/{bno}", method=RequestMethod.GET)
	public String updateGet(@PathVariable("bno") int bno, Model model){
		BoardVO vo=bservice.selectOne(bno);
		model.addAttribute("obj",vo);
		
		return "updateForm";
	}
	
	@RequestMapping(value="/update",method=RequestMethod.POST)
	public String updatePost(BoardVO vo){
		bservice.update(vo);
		
		return "redirect:/";
	}

	@RequestMapping("/login")
	public String loginGet(){
		logger.info("loginGet");
		
		return "login";
	}
	
	@RequestMapping(value="manager2", method=RequestMethod.GET)
	public String managerGet(){
		logger.info("managerGet");
		
		return "manager";
	}*/

}
