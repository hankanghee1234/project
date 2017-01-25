package org.team.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.team.domain.Criteria;
import org.team.domain.PptVO;
import org.team.domain.SearchCriteria;
import org.team.persistence.PptDAOImpl;

@Service
public class PptServiceImpl implements PptService {
	
	@Autowired
	private PptDAOImpl pptDAO;
	
	@Override
	public void create(PptVO vo) throws Exception {
		
		pptDAO.create(vo);
	}
	
	@Override
	public List<PptVO> pptGuestList() throws Exception {
	
		return pptDAO.pptGuestList();
	}
	
	@Override
	public void update(PptVO vo) throws Exception {
		
		pptDAO.update(vo);
	}

	@Override
	public void delete(Integer pptno) throws Exception {
		
		pptDAO.delete(pptno);
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
	public List<PptVO> listSearchCriteria(SearchCriteria cri) throws Exception {
		
		return pptDAO.listSearch(cri);
	}

	@Override
	public int listSearchCount(SearchCriteria cri) throws Exception {
		
		return pptDAO.listSearchCount(cri);
	}

	



	
}
