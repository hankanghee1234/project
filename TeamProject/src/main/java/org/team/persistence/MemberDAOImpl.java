package org.team.persistence;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.team.domain.MemberVO;

public class MemberDAOImpl implements MemberDAO {
	
	@Inject
	private SqlSession session;
	
	private String NAME = "";
	
	@Override
	public void create(MemberVO vo) throws Exception {
		
		session.insert(NAME + ".create", vo);
	}

	@Override
	public MemberVO read(String userid) throws Exception {
		
		return session.selectOne(NAME + ".read", userid);
	}

	@Override
	public void update(MemberVO vo) throws Exception {
				
		session.update(NAME + ".update", vo);
	}

	@Override
	public void delete(String userid) throws Exception {
		
		session.delete(NAME + ".delete", userid);
	}

	@Override
	public List<MemberVO> list() throws Exception {
		
		return session.selectList(NAME + ".list");
	}

}
