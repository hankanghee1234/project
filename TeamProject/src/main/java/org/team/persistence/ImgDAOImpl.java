package org.team.persistence;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.team.domain.FileVO;
import org.team.domain.ImgVO;
import org.team.domain.PptVO;

@Repository
public class ImgDAOImpl implements ImgDAO {

	@Autowired
	private SqlSession session;
	
	private String NAME = "org.team.dao.ImgMapper";
	
	@Override
	public void imgCreate(ImgVO ivo) throws Exception {
		
		session.insert(NAME + ".imgCreate", ivo);
	}
	
	@Override
	public void fileCreate(FileVO fvo) throws Exception {
		
		session.insert(NAME + ".fileCreate", fvo);
	}

	@Override
	public void pptCreate(PptVO pvo) throws Exception {
		
		session.insert(NAME + ".pptCreate", pvo);
	}
	
	@Override
	public List<ImgVO> imgRead(Integer fno) throws Exception {
		
		return session.selectList(NAME + ".imgRead", fno);
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
