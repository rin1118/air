package kr.co.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import kr.co.dao.StayDAO;
import kr.co.dto.HotelBookDTO;
import kr.co.dto.StayDTO;

@Service
public class StayServiceImpl implements StayService{

	@Autowired
	StayDAO dao;

	@Override
	public List<StayDTO> hotelList() {
		// TODO Auto-generated method stub
		return dao.hotelList();
	}
	
	@Override
	public List<StayDTO> regionHotel(String region) {
		// TODO Auto-generated method stub
		return dao.regionHotel(region);
	}

	@Override
	public StayDTO hotelDetail(int staynum) {
		// TODO Auto-generated method stub
		return dao.hotelDetail(staynum);
	}

	@Override
	public List<StayDTO> getRooms(int staynum) {
		// TODO Auto-generated method stub
		return dao.getRooms(staynum);
	}

	@Override
	public void reservation(HotelBookDTO dto) {
		dao.reservation(dto);
	}
}
