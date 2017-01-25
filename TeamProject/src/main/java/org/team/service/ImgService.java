package org.team.service;

import java.util.List;

import org.team.domain.ImgVO;

public interface ImgService {

	public void create(ImgVO vo) throws Exception;
	
	public List<ImgVO> read(Integer fno) throws Exception;
	
	public void update(ImgVO vo) throws Exception;
	
	public void delete(Integer ino) throws Exception;
	
	public List<ImgVO> list() throws Exception;
}
