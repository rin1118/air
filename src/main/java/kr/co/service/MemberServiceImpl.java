package kr.co.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.dao.MemberDAO;
import kr.co.dto.MemberDTO;

@Service
public class MemberServiceImpl implements MemberService{

	@Autowired
	MemberDAO dao;
	
	@Override
	public void join(MemberDTO dto) {
		dao.join(dto);
	}

	@Override
	public MemberDTO loginCheck(MemberDTO dto) {
		// TODO Auto-generated method stub
		return dao.loginCheck(dto);
	}

}
