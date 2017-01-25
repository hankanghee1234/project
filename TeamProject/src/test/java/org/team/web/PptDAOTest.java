package org.team.web;

import java.util.List;

import javax.inject.Inject;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.team.domain.Criteria;
import org.team.domain.PptVO;
import org.team.domain.SearchCriteria;
import org.team.persistence.PptDAOImpl;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = { "file:src/main/webapp/WEB-INF/spring/root-context.xml" })
public class PptDAOTest {

	@Inject
	private PptDAOImpl dao;
	
	@Test
	public void testCreate() throws Exception {
		
		PptVO vo = new PptVO();
		
		vo.setFno(3);
		vo.setUserid("user10");
		vo.setPpt_kind("java");
		vo.setPpt_title("script");
		vo.setPpt_desc("ajax");
		
		dao.create(vo);
		System.out.println(vo);
	}
	
	@Test
	public void testGuestlist() throws Exception {
		
		System.out.println(dao.pptGuestList());
	}
	
	@Test
	public void testUpdate() throws Exception {
		
		PptVO vo = new PptVO();
		
		vo.setPpt_kind("script");
		vo.setPpt_title("node");
		vo.setPpt_desc("realsense");
		vo.setPptno(2);
		
		dao.update(vo);
		System.out.println(vo);
	}
	
	@Test
	public void testDelete() throws Exception {
		
		Integer pptno = 2;
		dao.delete(pptno);
		System.out.println(pptno);
	}
	
	@Test
	public void listPageTest() throws Exception {
		
		int page = 1;
		
		List<PptVO> list = dao.listPage(page);
		
		for (PptVO PptVO : list) {
			System.out.println(PptVO.getPptno() + ":" + PptVO.getFno() + ":" + PptVO.getUserid()
			+ ":" + PptVO.getPpt_kind() + ":" + PptVO.getPpt_title() + ":" + PptVO.getPpt_desc());
		}
	}
	
	@Test
	public void listCriteriaTest() throws Exception {
		
		Criteria cri = new Criteria();
		
		cri.setPage(1);
		cri.setPerPageNum(20);
		
		List<PptVO> list = dao.listCriteria(cri);
		
		for (PptVO PptVO : list) {
			System.out.println(PptVO.getPptno() + ":" + PptVO.getFno() + ":" + PptVO.getUserid()
			+ ":" + PptVO.getPpt_kind() + ":" + PptVO.getPpt_title() + ":" + PptVO.getPpt_desc());
		}
	}
	
	@Test
	public void testSearchCount() throws Exception {
		
		SearchCriteria cri = new SearchCriteria();
		cri.setPage(1);
		cri.setKeyword("user02");
		cri.setSearchType("u");
		
		System.out.println("===============================");
		
		List<PptVO> list = dao.listSearch(cri);
		
		for (PptVO PptVO : list) {
			System.out.println(PptVO.getPptno() + ":" + PptVO.getFno() + ":" + PptVO.getUserid()
			+ ":" + PptVO.getPpt_kind() + ":" + PptVO.getPpt_title() + ":" + PptVO.getPpt_desc());
		}
		
		System.out.println("================================");
		System.out.println("COUNT: " + dao.listSearchCount(cri));
	} 
}
