package kr.co.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.dto.HotelBookDTO;
import kr.co.dto.MemberDTO;
import kr.co.dto.StayDTO;

@Repository
public class StayDAOImpl implements StayDAO {
	
	@Autowired
	private SqlSession sqlSession;

	@Override
	public List<StayDTO> hotelList() {
		// TODO Auto-generated method stub
		return sqlSession.selectList("stayMapper.hotelList");
	}
	
	@Override
	public List<StayDTO> regionHotel(String region) {
		// TODO Auto-generated method stub
		return sqlSession.selectList("stayMapper.regionHotel", region);
	}
	
	@Override
	public StayDTO hotelDetail(int staynum) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne("stayMapper.hotelDetail", staynum);
	}

	@Override
	public List<StayDTO> getRooms(int staynum) {
		// TODO Auto-generated method stub
		return sqlSession.selectList("stayMapper.getRooms", staynum);
	}

	@Override
	public void reservation(HotelBookDTO dto) {
		sqlSession.insert("stayMapper.reservation", dto);
	}


	
	

}
