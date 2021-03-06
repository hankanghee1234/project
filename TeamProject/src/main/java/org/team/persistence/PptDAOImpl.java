package org.team.persistence;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.team.domain.Criteria;
import org.team.domain.PptFnoVO;
import org.team.domain.PptVO;
import org.team.domain.SearchCriteria;

@Repository
public class PptDAOImpl implements PptDAO {

	@Autowired
	private SqlSession session;
	
	private String NAME = "org.team.dao.PptMapper";
	
	@Override
	public void create(PptVO vo) throws Exception {
		
		session.insert(NAME + ".create", vo);
	}
	
	
	@Override
	public void broadStart(int fno) throws Exception {
		
		session.update(NAME + ".broadStart", fno);
	}
	
	
	
	public List<PptFnoVO> pptFnoRead(String vo)throws Exception {
		
		return session.selectList(NAME + ".pptFnoReadList",vo);
	}
	
	@Override
	public List<PptVO> pptGuestList() throws Exception {
		
		return session.selectList(NAME + ".pptBroadCastList");
	}
	
	@Override
	public PptVO pptRead(Integer fno) throws Exception {
		
		return session.selectOne(NAME + ".pptRead", fno);
	}
	
	@Override
	public void update(PptVO vo) throws Exception {
		
		session.update(NAME + ".update", vo);
	}

	@Override
	public void delete(Integer fno) throws Exception {
		
		session.delete(NAME + ".delete", fno);
		
	}

	@Override
	public List<PptVO> listPage(int page) throws Exception {
		
		if(page <= 0) {
			page = 1;
		}
		page = (page - 1) * 10;
		
		return session.selectList(NAME + ".listPage", page);
	}

	@Override
	public List<PptVO> listCriteria(Criteria cri) throws Exception {
		
		return session.selectList(NAME + ".listCriteria", cri);
	}

	@Override
	public int countPaging(Criteria cri) throws Exception {
		
		return session.selectOne(NAME + ".countPaging", cri);
	}

	@Override
	public List<PptVO> listSearch(SearchCriteria cri) throws Exception {
		
		return session.selectList(NAME + ".listSearch", cri);
	}

	@Override
	public int listSearchCount(SearchCriteria cri) throws Exception {
		
		return session.selectOne(NAME + ".listSearchCount", cri);
	}

	

	

}
