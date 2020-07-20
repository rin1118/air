package kr.co.dao;

import kr.co.dto.MemberDTO;

public interface MemberDAO {
	
	//회원가입
	public void join(MemberDTO dto);
	
	//로그인 체크
	public MemberDTO loginCheck(MemberDTO dto);
}
