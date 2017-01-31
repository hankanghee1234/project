package org.team.web;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.team.domain.FileVO;
import org.team.domain.ImgVO;
import org.team.domain.PptVO;
import org.team.persistence.ImgDAOImpl;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = { "file:src/main/webapp/WEB-INF/spring/root-context.xml" })
public class ImgDAOTest {

	@Autowired
	private ImgDAOImpl dao;
	
	@Test
	public void testCreate() throws Exception {
		
		ImgVO ivo = new ImgVO();
		
		ivo.setFno(10);
		ivo.setImg("1.jpg");
		
		dao.imgCreate(ivo);
		
		FileVO fvo = new FileVO();
		
		fvo.setOriginName("test.pptx");
		fvo.setCopyName("test.jpg");
		fvo.setUserid("user10");
		
		dao.fileCreate(fvo);
		
		PptVO pvo = new PptVO();
		
		pvo.setFno(10);
		pvo.setUserid("user10");
		pvo.setPpt_kind("연예인");
		pvo.setPpt_title("걸그룹");
		pvo.setPpt_desc("아이오아이");
		
		dao.pptCreate(pvo);
		
		System.out.println(ivo);
		System.out.println(fvo);
		System.out.println(pvo);
	}
	
	@Test
	public void testImgRead() throws Exception {
		
		Integer fno =10;
		System.out.println(dao.imgRead(fno));
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
