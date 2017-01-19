package org.team.persistence;

import java.util.List;

import org.team.domain.PPTVO;

public interface PPTDAO {

	public void create(PPTVO vo) throws Exception;

	public List<PPTVO> pptUserList() throws Exception;

	public void update(Integer pptno) throws Exception;

	public void delete(Integer pptno) throws Exception;
}
