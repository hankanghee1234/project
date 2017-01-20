package org.team.web;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.team.domain.PptVO;
import org.team.persistence.PptDAOImpl;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = { "file:src/main/webapp/WEB-INF/spring/root-context.xml" })
public class PptDAOTest {

	@Autowired
	private PptDAOImpl dao;
	
	@Test
	public void testCreate() throws Exception {

		PptVO vo = new PptVO();
		
		vo.setFno(2);
		vo.setUserid("user12");
		vo.setPpt_kind("javascript");
		vo.setPpt_title("coding");
		vo.setPpt_desc("코딩은 어렵다.");
		
		dao.create(vo);
		System.out.println(vo);
		
	}

}
