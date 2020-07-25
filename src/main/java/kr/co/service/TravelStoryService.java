package kr.co.service;

import java.util.List;

import kr.co.dto.TravelStoryDTO;

public interface TravelStoryService {
	
	//게시글 리스트 불러오기
	public List<TravelStoryDTO> selectList();
	
	//게시글 등록
	public void write(TravelStoryDTO dto);
	
	//해당 게시글 불러오기
	public TravelStoryDTO selectOne(int seq);
	
	//게시글 업데이트
	public void update(TravelStoryDTO dto);
	
	//해당 게시글 삭제
	public void delete(int seq);
}
