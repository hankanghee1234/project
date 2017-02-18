package org.team.web;

import java.util.List;

import javax.inject.Inject;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.team.domain.Criteria;
import org.team.domain.PptFnoVO;
import org.team.domain.PptVO;
import org.team.domain.SearchCriteria;
import org.team.persistence.PptDAOImpl;

import com.itextpdf.text.log.SysoCounter;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = { "file:src/main/webapp/WEB-INF/spring/root-context.xml" })
public class PptDAOTest {

	@Inject
	private PptDAOImpl dao;
	
	@Test
	public void testCreate() throws Exception {
		
		PptVO vo = new PptVO();
		
		vo.setUserid("user10");
		vo.setPpt_kind("java");
		vo.setPpt_title("script");
		vo.setPpt_desc("ajax");
		
		dao.create(vo);
		System.out.println(vo);
	}
	
	@Test
	public void testPptFnoReadList() throws Exception {
		
	
		
		
		List<PptFnoVO> list = dao.pptFnoRead("user01");
		
		
		String tos = null;
		System.out.println("0번쨰임  "+list.get(0));
		
		for(int i = 0; i<list.size();i++){
			PptFnoVO str = list.get(i);
			tos = str.toString();
			
			System.out.println(tos);
			
			String[] s1 = tos.split("=");
				
			System.out.println(s1[1]);
			
			String tos1 = s1[1].toString();
			
			String s2[] = tos1.split("]");
			
			System.out.println(s2[0]);
			
			tos = s2[0];
			
		}
		
		
	
		System.out.println("누적?"+tos);
		
		
		
		
		
		/*
		for(int i = 0; i<list.size(); i++){
			str = list.get(i);
			
			
			System.out.println(str);
			
			
		}
*/
	
		
		
	}
	
	@Test
	public void testGuestlist() throws Exception {
		
		System.out.println(dao.pptGuestList());
	}
	
	@Test
	public void testPptRead() throws Exception {
		
		Integer fno = 1;
		System.out.println(dao.pptRead(fno));
	}
	
	@Test
	public void testUpdate() throws Exception {
		
		PptVO vo = new PptVO();
		
		vo.setPpt_kind("script");
		vo.setPpt_title("node");
		vo.setPpt_desc("realsense");
		
		dao.update(vo);
		System.out.println(vo);
	}
	
	@Test
	public void testDelete() throws Exception {
		
		Integer fno = 1;
		dao.delete(fno);
		System.out.println(fno);
	}
	
	@Test
	public void listPageTest() throws Exception {
		
		int page = 1;
		
		List<PptVO> list = dao.listPage(page);
		
		for (PptVO PptVO : list) {
			System.out.println(PptVO.getFno() + ":" + PptVO.getUserid()
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
			System.out.println(PptVO.getFno() + ":" + PptVO.getUserid()
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
			System.out.println(PptVO.getFno() + ":" + PptVO.getUserid()
			+ ":" + PptVO.getPpt_kind() + ":" + PptVO.getPpt_title() + ":" + PptVO.getPpt_desc());
		}
		
		System.out.println("================================");
		System.out.println("COUNT: " + dao.listSearchCount(cri));
	} 
}
