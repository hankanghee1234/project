package org.team.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.team.domain.ImgVO;
import org.team.persistence.ImgDAOImpl;

@Service
public class ImgServiceImpl implements ImgService {

	@Autowired
	private ImgDAOImpl service;

	@Override
	public void create(ImgVO vo) throws Exception {

		service.create(vo);
	}

	@Override
	public ImgVO read(Integer ino) throws Exception {

		return service.read(ino);
	}

	@Override
	public void update(ImgVO vo) throws Exception {

		service.update(vo);
	}

	@Override
	public void delete(Integer ino) throws Exception {

		service.delete(ino);
	}

	@Override
	public List<ImgVO> list() throws Exception {

		return service.list();
	}

}
