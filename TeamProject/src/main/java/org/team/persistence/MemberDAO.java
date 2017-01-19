package org.team.persistence;

import java.util.List;

import org.team.domain.MemberVO;

public interface MemberDAO {

	public void create(MemberVO vo) throws Exception;

	public MemberVO read(String userid) throws Exception;

	public void update(MemberVO vo) throws Exception;

	public void delete(String userid) throws Exception;

	public List<MemberVO> list() throws Exception;

	public void broadStart(String userid) throws Exception;

	public boolean memberLogin(MemberVO vo) throws Exception;

	public boolean loginDupleChk(String userid) throws Exception;

}
