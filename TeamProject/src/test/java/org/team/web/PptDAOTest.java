package org.team.web;

import javax.inject.Inject;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.team.domain.PptVO;
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
	public void testList() throws Exception {
		
		System.out.println(dao.pptUserList());
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
}
