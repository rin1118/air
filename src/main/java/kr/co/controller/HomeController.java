package kr.co.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/*")
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Model model) {
		logger.info("메인 뷰 페이지");
		
		return "main";
	}
	
	@RequestMapping(value = "/travelInfo/main_img.html", method = RequestMethod.GET)
	public String imgBanner(Model model) {
		logger.info("메인 이미지 배너 페이지");
		
		return "travelInfo/main_img";
	}
	
}
