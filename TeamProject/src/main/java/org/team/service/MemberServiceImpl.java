package org.team.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.team.domain.MemberVO;
import org.team.persistence.MemberDAO;

@Service
public class MemberServiceImpl implements MemberService {

	@Autowired
	private MemberDAO memberDAO;

	@Override
	public void create(MemberVO vo) throws Exception {
		memberDAO.create(vo);
	}

	@Override
	public MemberVO read(String userid) throws Exception {
		return memberDAO.read(userid);
	}

	@Override
	public void update(MemberVO vo) throws Exception {
		memberDAO.update(vo);
	}

	@Override
	public void delete(String userid) throws Exception {
		memberDAO.delete(userid);
	}

	@Override
	public List<MemberVO> list() throws Exception {
		return memberDAO.list();
	}
	
	@Override
	public boolean loginDupleChk(String userid) throws Exception {
		return memberDAO.loginDupleChk(userid);
	}

	@Override
	public boolean memberLogin(MemberVO vo) throws Exception {
		return memberDAO.memberLogin(vo);
	}

}
