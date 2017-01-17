package org.team.persistence;

import java.util.List;

import org.team.domain.FileVO;

public interface FileDAO {

	public void create(FileVO vo) throws Exception;
	
	public FileVO read(Integer fno) throws Exception;
	
	public void update(FileVO vo) throws Exception;
	
	public void delete(Integer fno) throws Exception;
	
	public List<FileVO> list() throws Exception;
}
