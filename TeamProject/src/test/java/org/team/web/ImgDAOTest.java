package org.team.web;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.team.domain.ImgVO;
import org.team.persistence.ImgDAOImpl;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = { "file:src/main/webapp/WEB-INF/spring/root-context.xml" })
public class ImgDAOTest {

	@Autowired
	private ImgDAOImpl dao;
	
	@Test
	public void testCreate() throws Exception {
		
		ImgVO vo = new ImgVO();
		
		vo.setFno(5);
		vo.setImg("1.jpg");
		
		dao.create(vo);
		System.out.println(vo);
	}
	
	@Test
	public void testRead() throws Exception {
		
		Integer ino =2;
		System.out.println(dao.read(ino));
	}
	
	@Test
	public void testUpdate() throws Exception {
		
		ImgVO vo = new ImgVO();
		
		vo.setImg("1.jpg");
		vo.setIno(4);
		
		dao.update(vo);
		System.out.println(vo);
		
	}
	
	@Test
	public void testDelete() throws Exception {
		
		Integer ino = 2;
		dao.delete(ino);
		System.out.println(ino);
	}
	
	@Test
	public void testList() throws Exception {
		
		System.out.println(dao.list());
	}

}
