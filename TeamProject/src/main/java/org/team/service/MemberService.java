package org.team.service;

import java.util.List;

import org.team.domain.MemberVO;

public interface MemberService {

	public void create(MemberVO vo) throws Exception;
	
	public MemberVO read(String userid) throws Exception;
	
	public void update(MemberVO vo) throws Exception;
	
	public void delete(String userid) throws Exception;
	
	public List<MemberVO> list() throws Exception;
}
