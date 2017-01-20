package org.team.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.team.domain.PptVO;
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
	public List<PptVO> pptUserList() throws Exception {
		
		return pptDAO.pptUserList();
	}

	@Override
	public void update(PptVO vo) throws Exception {
		
		pptDAO.update(vo);
	}

	@Override
	public void delete(Integer pptno) throws Exception {
		
		pptDAO.delete(pptno);
	}

}
