package org.team.domain;

import java.util.Date;

public class ImgVO {

	private Integer ino;
	private Integer fno;
	private String img;
	private Date regdate;
	private Date modidate;
	
	public Integer getIno() {
		return ino;
	}
	public void setIno(Integer ino) {
		this.ino = ino;
	}
	public Integer getFno() {
		return fno;
	}
	public void setFno(Integer fno) {
		this.fno = fno;
	}
	public String getImg() {
		return img;
	}
	public void setImg(String img) {
		this.img = img;
	}
	public Date getRegdate() {
		return regdate;
	}
	public void setRegdate(Date regdate) {
		this.regdate = regdate;
	}
	public Date getModidate() {
		return modidate;
	}
	public void setModidate(Date modidate) {
		this.modidate = modidate;
	}
	
	@Override
	public String toString() {
		return "ImgVO [ino=" + ino + ", fno=" + fno + ", img=" + img + ", regdate=" + regdate + ", modidate=" + modidate
				+ "]";
	}
	
	
}
