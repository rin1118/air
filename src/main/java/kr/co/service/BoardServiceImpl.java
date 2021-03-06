package kr.co.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.dao.BoardDAO;
import kr.co.dto.Criteria;
import kr.co.dto.BoardDTO;

@Service
public class BoardServiceImpl implements BoardService {

	@Autowired
	private BoardDAO dao;
	
	@Override
	public int listCount() {
		// TODO Auto-generated method stub
		return dao.listCount();
	}

	@Override
	public List<BoardDTO> list(Criteria cri) {
		// TODO Auto-generated method stub
		return dao.list(cri);
	}
	
	@Override
	public int write(BoardDTO boardVO) throws Exception {
		int insertCount = dao.write(boardVO);
		return insertCount;
	}

	@Override
	public List<BoardDTO> getList() throws Exception {
		// TODO Auto-generated method stub
//		List<BoardVO> list = dao.getList();
//		
//		SimpleDateFormat sDate2 = new SimpleDateFormat("yyyy.MM.dd");
//		SimpleDateFormat fDate  = new SimpleDateFormat("yyyy.MM.dd");
//
//		for(int i=0; i<list.size();i++) {
//			BoardVO vo = list.get(i); 
//			String before = sDate2.format(vo.getRegdate());
//			Date d = fDate.parse(before);
//			
//			String from = "2013-04-08 10:10:10";
//			SimpleDateFormat transFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss"); 
//			Date to = transFormat.parse(from);
//			System.out.println(to);
//		
//			System.out.println(before);
//			System.out.println(d);
//			vo.setRegdate(d);
//		}
		
		return dao.getList();
	}

	@Override
	public BoardDTO selectOne(int b_no) throws Exception {
		return dao.selectOne(b_no);
	}

	@Override
	public void update(BoardDTO boardVO) throws Exception {

		dao.update(boardVO);

	}

	@Override
	public void delete(int b_no) throws Exception {
		// TODO Auto-generated method stub
		dao.delete(b_no);
	}

	

}
