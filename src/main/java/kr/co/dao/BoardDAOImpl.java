package kr.co.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.dto.Criteria;
import kr.co.dto.BoardDTO;

@Repository
public class BoardDAOImpl implements BoardDAO {
	
	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public int listCount() {
		// TODO Auto-generated method stub
		return sqlSession.selectOne("boardMapper.listCount");
	}

	@Override
	public List<BoardDTO> list(Criteria cri) {
		// TODO Auto-generated method stub
		return sqlSession.selectList("boardMapper.listPage", cri);
	}
	
	@Override
	public int write(BoardDTO boardVO) throws Exception {
		int insertCount = sqlSession.insert("boardMapper.insert", boardVO);
		return insertCount;
	}

	@Override
	public List<BoardDTO> getList() throws Exception {
		// TODO Auto-generated method stub
		
		return sqlSession.selectList("boardMapper.getList");
	}

	@Override
	public BoardDTO selectOne(int b_no) throws Exception {
		
		return sqlSession.selectOne("boardMapper.selectOne", b_no);
	}

	@Override
	public void update(BoardDTO boardVO) {
		sqlSession.update("boardMapper.update", boardVO);			
	}

	@Override
	public void delete(int b_no) throws Exception {
		sqlSession.update("boardMapper.delete", b_no);			
	}

}
