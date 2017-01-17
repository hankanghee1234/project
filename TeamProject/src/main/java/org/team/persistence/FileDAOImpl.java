package org.team.persistence;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.team.domain.FileVO;

@Repository
public class FileDAOImpl implements FileDAO {

	@Autowired
	private SqlSession session;
	
	private String NAME = "org.team.dao.FileMapper";
	
	@Override
	public void create(FileVO vo) throws Exception {
		
		session.insert(NAME + ".create", vo);
	}

	@Override
	public FileVO read(Integer fno) throws Exception {
		
		return session.selectOne(NAME + ".read", fno);
	}

	@Override
	public void update(FileVO vo) throws Exception {
		
		session.update(NAME + ".update", vo);
	}

	@Override
	public void delete(Integer fno) throws Exception {
		
		session.delete(NAME + ".delete", fno);
	}

	@Override
	public List<FileVO> list() throws Exception {
		
		return session.selectList(NAME + ".list");
	}

}
