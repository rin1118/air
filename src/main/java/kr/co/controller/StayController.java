package kr.co.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import kr.co.dto.HotelBookDTO;
import kr.co.dto.MemberDTO;
import kr.co.dto.StayDTO;
import kr.co.service.StayService;

@Controller
@RequestMapping("/stay")
public class StayController {
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);

	@Autowired
	StayService service;
	
	@RequestMapping(value = "/main", method = RequestMethod.GET)
	public String stayMain(Model model) {
		logger.info("호텔 메인 뷰 페이지");
		
		List<StayDTO> list = service.hotelList();
		
		model.addAttribute("list", list);
		
		return "stay/main";
	}
	
	@RequestMapping(value = "/hotelList", method = RequestMethod.GET)
	public String staySelect(Model model, String stayRegion, String checkin, String checkout) {
		logger.info("호텔 리스트 뷰 페이지");
		
		System.out.println(stayRegion);
		System.out.println(checkin);
		
		List<StayDTO> result = service.regionHotel(stayRegion);
		model.addAttribute("result", result);
		model.addAttribute("region", stayRegion);
		model.addAttribute("checkIn", checkin);
		model.addAttribute("checkOut", checkout);
		return "stay/stayList";
	}
	
	@RequestMapping(value = "/detail", method = RequestMethod.GET)
	public String stayDetail(Model model, int staynum, String checkIn, String checkOut) {
		logger.info("호텔 디테일 뷰 페이지");
		
		System.out.println(checkIn);
		
		StayDTO hotel = service.hotelDetail(staynum);
		List<StayDTO> rooms = service.getRooms(staynum);
		
		model.addAttribute("result", hotel);
		model.addAttribute("rooms", rooms);
		model.addAttribute("checkIn", checkIn);
		model.addAttribute("checkOut", checkOut);
		
		return "stay/stayDetail";
	}
	
	@RequestMapping(value = "/reservation", method = RequestMethod.GET)
	public String reservationView(Model model, @RequestParam Map<String, String> param,
			String s_num, String hotelName, String roomname, String roomnum, String checkIn, String checkOut) {
		logger.info("호텔 예약 뷰 페이지");
		
		System.out.println(param.get("hotelName"));
		
		model.addAttribute("item", param);
		
		return "stay/reservation";
	}
	
	@RequestMapping(value = "/reservation", method = RequestMethod.POST)
	public String reservation(Model model, HotelBookDTO dto, HttpServletRequest req) {
		logger.info("호텔 예약 처리 페이지");
	
		System.out.println(dto.toString());
		
		HttpSession session = req.getSession();
		MemberDTO member = (MemberDTO) session.getAttribute("member");
		
		dto.setId(member.getId());
		
		service.reservation(dto);
		
		return "redirect:/stay/main";
	}
}
