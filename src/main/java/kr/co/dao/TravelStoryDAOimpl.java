package kr.co.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.dto.TravelStoryDTO;

@Repository
public class TravelStoryDAOimpl implements TravelStoryDAO {

	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public List<TravelStoryDTO> selectList() {
		// TODO Auto-generated method stub
		return sqlSession.selectList("travelMapper.selectList");
	}
	
	@Override
	public void write(TravelStoryDTO dto) {
		sqlSession.insert("travelMapper.write", dto);
	}

	@Override
	public TravelStoryDTO selectOne(int seq) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne("travelMapper.selectOne", seq);
	}

	@Override
	public void delete(int seq) {
		sqlSession.delete("travelMapper.delete", seq);
	}

	@Override
	public void update(TravelStoryDTO dto) {
		sqlSession.update("travelMapper.update", dto);
	}

	

}
