package kr.co.service;

import kr.co.dto.MemberDTO;

public interface MemberService {
	public void join(MemberDTO dto);
	public MemberDTO loginCheck(MemberDTO dto);
}
