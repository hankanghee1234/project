package org.team.persistence;

import java.util.List;

import org.team.domain.Criteria;
import org.team.domain.PptVO;
import org.team.domain.SearchCriteria;

public interface PptDAO {

	public void create(PptVO vo) throws Exception;

	public List<PptVO> pptGuestList() throws Exception; // guest 접속으로 인한 ppt 정보 호출
	
	public List<PptVO> pptUserList(String userid) throws Exception; // 로그인 정보에 따른 ppt list 호출
	
	public void update(PptVO vo) throws Exception;

	public void delete(Integer pptno) throws Exception;
	
	public List<PptVO> listPage(int page) throws Exception;
	
	public List<PptVO> listCriteria(Criteria cri) throws Exception;
	
	public int countPaging(Criteria cri) throws Exception;
	
	public List<PptVO> listSearch(SearchCriteria cri) throws Exception;
	
	public int listSearchCount(SearchCriteria cri) throws Exception;
}
