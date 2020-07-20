package kr.co.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import kr.co.dto.MemberDTO;
import kr.co.service.MemberService;

@Controller
@RequestMapping("/member/*")
public class MemberController {
	
	@Autowired
	MemberService service;
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);

	@RequestMapping(value = "/member/login", method = RequestMethod.GET)
	public String loginView(Model model) {
		logger.info("로그인 뷰 페이지");
		
		return "member/login";
	}
	
	@RequestMapping(value = "/member/login", method = RequestMethod.POST)
	public String login(Model model, MemberDTO dto, HttpServletRequest req, RedirectAttributes rttr) {
		logger.info("로그인 처리");
		
		HttpSession session = req.getSession();	
		session.setMaxInactiveInterval(60*60);
		
		String url = "";
		
		try {	
			MemberDTO member = service.loginCheck(dto);
			System.out.println(member.toString());
			
			session.setAttribute("member", member);
			
		} catch(Exception e) {
			url = "redirect:/login";
			session.setAttribute("member", null);
			rttr.addFlashAttribute("msg", false);
		}
		return "redirect:/";
	}
	
	
	@RequestMapping(value = "/member/signUp", method = RequestMethod.GET)
	public String signUpView(Model model) {
		logger.info("회원가입 뷰 페이지");
		
		return "member/signup";
	}
	
	@RequestMapping(value = "/member/signUp", method = RequestMethod.POST)
	public String signUp(Model model, MemberDTO dto) {
		logger.info("회원가입 처리 페이지");
		
		try {
			service.join(dto);			
		}catch(Exception e) {
			System.out.println(e);
		}
		
		return "redirect:/";
	}
	
	@RequestMapping(value = "/member/logout", method = RequestMethod.GET)
	public String logout(Model model, HttpSession session) {
		logger.info("로그아웃 처리");
		
		session.invalidate();

		return "redirect:/";
	}
}
