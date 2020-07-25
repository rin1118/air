package kr.co.dao;

import java.util.List;

import kr.co.dto.TravelStoryDTO;

public interface TravelStoryDAO {
	//게시글 리스트 불러오기
	public List<TravelStoryDTO> selectList();
	
	//게시글 작성
	public void write(TravelStoryDTO dto);
	
	//해당 게시글 불러오기
	public TravelStoryDTO selectOne(int seq);

	//게시글 업데이트
	public void update(TravelStoryDTO dto);
	
	//게시글 삭제
	public void delete(int seq);
	
	
	
}
