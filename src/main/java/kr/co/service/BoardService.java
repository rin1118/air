package kr.co.service;

import java.util.List;

import kr.co.dto.BoardDTO;
import kr.co.dto.Criteria;

public interface BoardService {
	
	//게시물 총 갯수 얻기
	public int listCount();
		
	//게시물 목록 조회 (페이징 적용)
	public List<BoardDTO> list(Criteria cri);
	
	public List<BoardDTO> getList() throws Exception;
	public int write(BoardDTO boardVO) throws Exception;
	public BoardDTO selectOne(int b_no) throws Exception;
	public void update(BoardDTO boardVO) throws Exception;
	public void delete(int b_no) throws Exception;
}

