package org.team.domain;

import java.util.Date;

public class FileVO {

	private Integer fno;
	private String originname;
	private String copyname;
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
		return originname;
	}
	public void setOriginName(String originname) {
		this.originname = originname;
	}
	public String getCopyName() {
		return copyname;
	}
	public void setCopyName(String copyname) {
		this.copyname = copyname;
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
		return "FileVO [fno=" + fno + ", originname=" + originname + ", copyname=" + copyname + ", userid=" + userid
				+ ", regdate=" + regdate + ", modidate=" + modidate + "]";
	}
	
	
	
}
