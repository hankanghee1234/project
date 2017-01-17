package org.team.web;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.team.domain.MemberVO;
import org.team.persistence.MemberDAOImpl;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = { "file:src/main/webapp/WEB-INF/spring/root-context.xml" })
public class MemberDAOTest {
	
	@Autowired
	private MemberDAOImpl dao;
	
	@Test
	public void testCreate() throws Exception {
		
		MemberVO vo = new MemberVO();
		vo.setUserid("user10");
		vo.setUserpw("user10");
		vo.setEmail("aaa@bbb.com");
		vo.setUname("user10");
		
		dao.create(vo);
	}
	
	@Test
	public void testRead() throws Exception {
		
	}
	
	@Test
	public void testUpdate() throws Exception {
		
	}
	
	@Test
	public void testDelete() throws Exception {
		
	}

}
