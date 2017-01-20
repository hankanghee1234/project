package org.team.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.team.domain.FileVO;
import org.team.persistence.FileDAOImpl;

@Service
public class FileServiceImpl implements FileService {

	@Autowired
	private FileDAOImpl fileDAO;
	
	@Override
	public void create(FileVO vo) throws Exception {
		
		fileDAO.create(vo);
	}

	@Override
	public FileVO read(Integer fno) throws Exception {

		return fileDAO.read(fno);
	}

	@Override
	public void update(FileVO vo) throws Exception {

		fileDAO.update(vo);
	}

	@Override
	public void delete(Integer fno) throws Exception {
		
		fileDAO.delete(fno);
	}

	@Override
	public List<FileVO> list() throws Exception {

		return fileDAO.list();
	}

}
