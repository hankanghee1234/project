package org.team.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.team.domain.FileVO;
import org.team.domain.ImgVO;
import org.team.domain.PptVO;
import org.team.persistence.ImgDAOImpl;

@Service
public class ImgServiceImpl implements ImgService {

	@Autowired
	private ImgDAOImpl imgDAO;

	@Transactional
	@Override
	public void create( FileVO fvo, ImgVO ivo, PptVO pvo) throws Exception {

		imgDAO.fileCreate(fvo);
		imgDAO.imgCreate(ivo);
		imgDAO.pptCreate(pvo);
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
