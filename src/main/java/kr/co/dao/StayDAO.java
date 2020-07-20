package kr.co.dao;

import java.util.List;

import kr.co.dto.HotelBookDTO;
import kr.co.dto.StayDTO;

public interface StayDAO {

	//호텔 select list
	public List<StayDTO> hotelList();
	
	//지역별 호텔 list
	public List<StayDTO> regionHotel(String region);
	
	//호텔 detail page select
	public StayDTO hotelDetail(int staynum);
	
	//호텔의 room select
	public List<StayDTO> getRooms(int staynum);
	
	//호텔 예약
	public void reservation(HotelBookDTO dto);

}
