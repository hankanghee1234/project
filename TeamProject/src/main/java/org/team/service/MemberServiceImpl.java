package org.team.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.team.domain.MemberVO;

@Service
public class MemberServiceImpl implements MemberService {

	@Autowired
	private MemberService service;
	
	@Override
	public void create(MemberVO vo) throws Exception {
		
		service.create(vo);
	}

	@Override
	public MemberVO read(String userid) throws Exception {
		
		return service.read(userid);
	}

	@Override
	public void update(MemberVO vo) throws Exception {
		
		service.update(vo);
	}

	@Override
	public void delete(String userid) throws Exception {
		
		service.delete(userid);
	}

	@Override
	public List<MemberVO> list() throws Exception {
		
		return service.list();
	}

}
