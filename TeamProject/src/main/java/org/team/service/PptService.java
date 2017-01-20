package org.team.service;

import java.util.List;

import org.team.domain.PptVO;

public interface PptService {

	public void create(PptVO vo) throws Exception;

	public List<PptVO> pptUserList() throws Exception;

	public void update(PptVO vo) throws Exception;

	public void delete(Integer pptno) throws Exception;
}
