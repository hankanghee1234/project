package org.team.persistence;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.team.domain.PPTVO;

@Repository
public class PPTDAOImpl implements PPTDAO {

	@Autowired
	private SqlSession session;

	private String NAME = "org.team.dao.pptListMapper";

	@Override
	public void create(PPTVO vo) throws Exception {
		session.insert(NAME + ".create", vo);
	}

	@Override
	public List<PPTVO> pptUserList() throws Exception {
		return session.selectList(NAME + ".pptUserList");
	}

	@Override
	public void update(Integer pptno) throws Exception {
		session.update(NAME + ".update", pptno);
	}

	@Override
	public void delete(Integer pptno) throws Exception {
		session.delete(NAME + ".delete", pptno);
	}

}
