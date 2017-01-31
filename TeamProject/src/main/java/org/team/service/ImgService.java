package org.team.service;

import java.util.List;

import org.team.domain.FileVO;
import org.team.domain.ImgVO;
import org.team.domain.PptVO;

public interface ImgService {

	public void create(ImgVO ivo, FileVO fvo, PptVO pvo) throws Exception;

	public List<ImgVO> imgRead(Integer fno) throws Exception;
	
	public void update(ImgVO vo) throws Exception;
	
	public void delete(Integer ino) throws Exception;
	
	public List<ImgVO> list() throws Exception;
}
