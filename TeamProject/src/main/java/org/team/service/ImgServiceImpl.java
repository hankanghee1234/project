package org.team.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.team.domain.ImgVO;
import org.team.persistence.ImgDAOImpl;

@Service
public class ImgServiceImpl implements ImgService {

	@Autowired
	private ImgDAOImpl imgDAO;

	@Override
	public void create(ImgVO vo) throws Exception {

		imgDAO.create(vo);
	}

	@Override
	public List<ImgVO> imgRead(Integer fno) throws Exception {

		return imgDAO.imgRead(fno);
	}

	@Override
	public void update(ImgVO vo) throws Exception {

		imgDAO.update(vo);
	}

	@Override
	public void delete(Integer ino) throws Exception {

		imgDAO.delete(ino);
	}

	@Override
	public List<ImgVO> list() throws Exception {

		return imgDAO.list();
	}

}
