package org.team.service;

import java.util.List;

import org.team.domain.Criteria;
import org.team.domain.PptVO;
import org.team.domain.SearchCriteria;

public interface PptService {

	public void create(PptVO vo) throws Exception;
	
	public List<PptVO> pptGuestList() throws Exception;
	
	public PptVO pptRead(Integer pptno) throws Exception;
	
	public void update(PptVO vo) throws Exception;

	public void delete(Integer pptno) throws Exception;
	
	public List<PptVO> listCriteria(Criteria cri) throws Exception;
	
	public int listCountCriteria(Criteria cri) throws Exception;
	
	public List<PptVO> listSearchCriteria(SearchCriteria cri) throws Exception;
	
	public int listSearchCount(SearchCriteria cri) throws Exception;
}
