package org.team.persistence;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.team.domain.ImgVO;

@Repository
public class ImgDAOImpl implements ImgDAO {

	@Autowired
	private SqlSession session;
	
	private String NAME = "org.team.dao.ImgMapper";
	
	@Override
	public void create(ImgVO vo) throws Exception {
		
		session.insert(NAME + ".create", vo);
	}

	@Override
	public ImgVO read(Integer ino) throws Exception {
		
		return session.selectOne(NAME + ".read", ino);
	}

	@Override
	public void update(ImgVO vo) throws Exception {
		
		session.update(NAME + ".update", vo);
	}

	@Override
	public void delete(Integer ino) throws Exception {
		
		session.delete(NAME + ".delete", ino);
	}

	@Override
	public List<ImgVO> list() throws Exception {
		
		return session.selectList(NAME + ".list");
	}

}
