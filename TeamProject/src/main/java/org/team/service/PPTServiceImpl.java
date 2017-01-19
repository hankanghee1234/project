package org.team.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.team.domain.PPTVO;
import org.team.persistence.PPTDAO;

@Service
public class PPTServiceImpl implements PPTService {

	@Autowired
	private PPTDAO PPTDAO;

	@Override
	public void create(PPTVO vo) throws Exception {
		PPTDAO.create(vo);
	}

	@Override
	public List<PPTVO> pptUserList() throws Exception {
		return PPTDAO.pptUserList();
	}

	@Override
	public void update(Integer pptno) throws Exception {
		PPTDAO.update(pptno);
	}

	@Override
	public void delete(Integer pptno) throws Exception {
		PPTDAO.delete(pptno);
	}

}
