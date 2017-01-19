package org.team.persistence;

import java.util.List;

import org.team.domain.PptVO;

public interface PptDAO {

	public void create(PptVO vo) throws Exception;

	public List<PptVO> pptUserList() throws Exception;

	public void update(Integer pptno) throws Exception;

	public void delete(Integer pptno) throws Exception;
}
