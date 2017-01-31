package org.team.persistence;

import java.util.List;

import org.team.domain.ImgVO;

public interface ImgDAO {

	public void create(ImgVO vo) throws Exception;

	public List<ImgVO> imgRead(Integer fno) throws Exception; // ppt data에 대한
																// 이미지 읽기

	public void update(ImgVO vo) throws Exception;

	public void delete(Integer ino) throws Exception;

	public List<ImgVO> list() throws Exception;
}
