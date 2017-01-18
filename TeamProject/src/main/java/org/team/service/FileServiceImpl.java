package org.team.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.team.domain.FileVO;
import org.team.persistence.FileDAOImpl;

@Service
public class FileServiceImpl implements FileService {

	@Autowired
	private FileDAOImpl service;
	
	@Override
	public void create(FileVO vo) throws Exception {
		
		service.create(vo);
	}

	@Override
	public FileVO read(Integer fno) throws Exception {

		return service.read(fno);
	}

	@Override
	public void update(FileVO vo) throws Exception {

		service.update(vo);
	}

	@Override
	public void delete(Integer fno) throws Exception {
		
		service.delete(fno);
	}

	@Override
	public List<FileVO> list() throws Exception {

		return service.list();
	}

}
