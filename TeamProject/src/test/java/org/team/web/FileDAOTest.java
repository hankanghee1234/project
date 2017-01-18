package org.team.web;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.team.domain.FileVO;
import org.team.persistence.FileDAOImpl;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = { "file:src/main/webapp/WEB-INF/spring/root-context.xml" })
public class FileDAOTest {

	@Autowired
	private FileDAOImpl dao;
	
	@Test
	public void testCreate() throws Exception {
		
		FileVO vo = new FileVO();
		
		vo.setOriginName("2.txt");
		vo.setCopyName("2.txt");
		vo.setUserid("user01");
		
		dao.create(vo);
		System.out.println(vo);
	}
	
	@Test
	public void testRead() throws Exception {
		
		Integer fno = 1;
		System.out.println(dao.read(fno));
	}
	
	@Test
	public void testUpdate() throws Exception {
		
		FileVO vo = new FileVO();
		
		vo.setOriginName("1.txt");
		vo.setCopyName("1.txt");
		vo.setFno(1);
		
		dao.update(vo);
		System.out.println(vo);
	}
	
	@Test
	public void testDelete() throws Exception {
		
		Integer fno = 2;
		dao.delete(fno);
		System.out.println(fno);
	}
	
	@Test
	public void testList() throws Exception {
		
		System.out.println(dao.list());
	}

}
