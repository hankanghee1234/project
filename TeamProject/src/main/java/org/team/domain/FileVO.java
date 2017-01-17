package org.team.domain;

import java.util.Date;

public class FileVO {

	private Integer fno;
	private String originName;
	private String copyName;
	private String userid;
	private Date regdate;
	private Date modidate;
	
	public Integer getFno() {
		return fno;
	}
	public void setFno(Integer fno) {
		this.fno = fno;
	}
	public String getOriginName() {
		return originName;
	}
	public void setOriginName(String originName) {
		this.originName = originName;
	}
	public String getCopyName() {
		return copyName;
	}
	public void setCopyName(String copyName) {
		this.copyName = copyName;
	}
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
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
		return "FileVO [fno=" + fno + ", originName=" + originName + ", copyName=" + copyName + ", userid=" + userid
				+ ", regdate=" + regdate + ", modidate=" + modidate + "]";
	}
	
	
	
}
