package org.team.persistence;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.team.domain.MemberVO;

@Repository
public class MemberDAOImpl implements MemberDAO {

	@Autowired
	private SqlSession session;

	private String NAME = "org.team.dao.MemberMapper";

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
	
	
	@Override
	public boolean memberLogin(MemberVO vo) throws Exception {
		String userid = session.selectOne(NAME + ".memberLogin", vo);
		if (userid != null) {
			return true;
		} else {
			return false;
		}
	}

	@Override
	public boolean loginDupleChk(String userid) throws Exception {
		String check = session.selectOne(NAME + ".loginDupleChk", userid);
		if (check != null) {
			return true;
		} else {
			return false;
		}
	}

	

}
