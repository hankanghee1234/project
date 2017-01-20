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
		vo.setUserid("user11");
		vo.setUserpw("user11");
		vo.setEmail("aaa@bbb.com");
		vo.setUsername("user11");

		dao.create(vo);
		System.out.println(vo);

	}

	@Test
	public void testRead() throws Exception {

		String userid = "user00";
		System.out.println(dao.read(userid));
	}

	@Test
	public void testUpdate() throws Exception {

		MemberVO vo = new MemberVO();
		vo.setUserpw("user11");
		vo.setEmail("bbb@ccc.com");
		vo.setUsername("user11");
		vo.setUserid("user00");

		dao.update(vo);
		System.out.println(vo);
	}

	@Test
	public void testDelete() throws Exception {

		String userid = "user10";
		dao.delete(userid);
		System.out.println(userid);
	}

	@Test
	public void testList() throws Exception {

		System.out.println(dao.list());
	}
}
