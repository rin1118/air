package kr.co.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.dao.TravelStoryDAO;
import kr.co.dto.TravelStoryDTO;

@Service
public class TravelStoryServiceImpl implements TravelStoryService {
	
	@Autowired
	TravelStoryDAO dao;
	
	@Override
	public List<TravelStoryDTO> selectList() {
		// TODO Auto-generated method stub
		return dao.selectList();
	}
	
	public void write(TravelStoryDTO dto) {
		dao.write(dto);
	}

	@Override
	public TravelStoryDTO selectOne(int seq) {
		// TODO Auto-generated method stub
		return dao.selectOne(seq);
	}

	@Override
	public void delete(int seq) {
		dao.delete(seq);
	}

	@Override
	public void update(TravelStoryDTO dto) {
		dao.update(dto);
	}

	
}
