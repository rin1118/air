package kr.co.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/air/*")
public class AirController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);

	@RequestMapping(value = "/main", method = RequestMethod.GET)
	public String home(Model model) {
		logger.info("메인 뷰 페이지");
		
		return "air/main";
	}
	
	@RequestMapping(value = "/airList", method = RequestMethod.GET)
	public String airList(Model model) {
		logger.info("항공 목록 뷰 페이지");
		
		return "air/airList";
	}
	
}
