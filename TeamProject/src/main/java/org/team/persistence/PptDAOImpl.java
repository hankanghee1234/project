package org.team.persistence;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.team.domain.PptVO;

public class PptDAOImpl implements PptDAO {

	@Autowired
	private SqlSession session;
	
	private String NAME = "org.team.dao.PptMapper";
	
	@Override
	public void create(PptVO vo) throws Exception {
		
		session.insert(NAME + ".create", vo);
	}

	@Override
	public List<PptVO> pptUserList() throws Exception {
		
		return session.selectList(NAME + ".list");
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
