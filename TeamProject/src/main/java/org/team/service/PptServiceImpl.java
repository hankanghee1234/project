package org.team.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.team.domain.Criteria;
import org.team.domain.PptFnoVO;
import org.team.domain.PptVO;
import org.team.domain.SearchCriteria;
import org.team.persistence.ImgDAOImpl;
import org.team.persistence.PptDAOImpl;

@Service
public class PptServiceImpl implements PptService {
	
	@Autowired
	private PptDAOImpl pptDAO;
	
	@Autowired
	private ImgDAOImpl imgDAO;
	
	@Override
	public void create(PptVO vo) throws Exception {
		
		pptDAO.create(vo);
	}
	
	public List<PptFnoVO> pptFnoRead(String vo)throws Exception {
		
		return pptDAO.pptFnoRead(vo);
	}
	
	@Override
	public void broadStart(Integer fno) throws Exception {
		pptDAO.broadStart(fno);
	}
	
	@Override
	public List<PptVO> pptGuestList() throws Exception {
	
		return pptDAO.pptGuestList();
	}
	
	@Override
	public void update(PptVO vo) throws Exception {
		
		pptDAO.update(vo);
	}

	@Transactional
	@Override
	public void delete(Integer fno) throws Exception {
		
		imgDAO.delete(fno);
		
		pptDAO.delete(fno);
		
		
		
	}

	@Override
	public List<PptVO> listCriteria(Criteria cri) throws Exception {
		
		return pptDAO.listCriteria(cri);
	}

	@Override
	public int listCountCriteria(Criteria cri) throws Exception {
		
		return pptDAO.countPaging(cri);
	}

	@Override
	public List<PptVO> listSearch(SearchCriteria cri) throws Exception {
		
		return pptDAO.listSearch(cri);
	}

	@Override
	public int listSearchCount(SearchCriteria cri) throws Exception {
		
		return pptDAO.listSearchCount(cri);
	}

	@Override
	public PptVO pptRead(Integer fno) throws Exception {
		
		return pptDAO.pptRead(fno);
	}

}
