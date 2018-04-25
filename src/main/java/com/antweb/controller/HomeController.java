package com.antweb.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.swing.plaf.synth.SynthSeparatorUI;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.mobile.device.Device;
import org.springframework.mobile.device.DeviceUtils;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(HttpServletRequest req, HttpServletResponse res, Model model) {
		logger.info("home");
		
		/*String ua=req.getHeader("User-Agent");
		System.out.println(ua);*/
		
		Device device=DeviceUtils.getCurrentDevice(req);
		
		if (device == null) {
            System.out.println("device is null");
			return "home";
        }
        String deviceType = "unknown";
        if (device.isNormal()) {
            deviceType = "normal";
            System.out.println("normal");
        } else if (device.isMobile()) {
            deviceType = "mobile";
            System.out.println("mobile");
        } else if (device.isTablet()) {
            deviceType = "tablet";
            System.out.println("tablet");
        }
		
		model.addAttribute("ua",deviceType);
		return "home";
	}
	
}
