package com.antweb.controller;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.antweb.domain.BroadcastingVO;
import com.antweb.domain.CommentVO;
import com.antweb.domain.NoticeVO;
import com.antweb.domain.PageMaker;
import com.antweb.domain.SearchCriteria;
import com.antweb.service.BroadcastingService;
import com.antweb.service.CommentService;
import com.antweb.service.NoticeService;

@Controller
/* @RequestMapping("news/*") */
public class NewsController {
	private static final Logger logger = LoggerFactory.getLogger(NewsController.class);

	

}
