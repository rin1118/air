package kr.co.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/travelStory")
public class TravelStoryController {
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);

	@RequestMapping(value = "/main", method = RequestMethod.GET)
	public String home(Model model) {
		logger.info("여행이야기 뷰 페이지");
		
		return "travelStory/main";
	}
	
	@RequestMapping(value = "/writeView", method = RequestMethod.GET)
	public String writeView(Model model) {
		logger.info("여행이야기 글쓰기 뷰 페이지");
		
		return "travelStory/storyWrite";
	}
}
