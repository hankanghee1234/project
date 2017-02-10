package org.team.domain;

import java.util.Date;

public class PptVO {

	private Integer fno;
	private String userid;
	private String ppt_kind;
	private String ppt_title;
	private String ppt_desc;
	private int broad_state;
	private Date regdate;
	private Date modidate;
	public Integer getFno() {
		return fno;
	}
	public void setFno(Integer fno) {
		this.fno = fno;
	}
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
	public String getPpt_kind() {
		return ppt_kind;
	}
	public void setPpt_kind(String ppt_kind) {
		this.ppt_kind = ppt_kind;
	}
	public String getPpt_title() {
		return ppt_title;
	}
	public void setPpt_title(String ppt_title) {
		this.ppt_title = ppt_title;
	}
	public String getPpt_desc() {
		return ppt_desc;
	}
	public void setPpt_desc(String ppt_desc) {
		this.ppt_desc = ppt_desc;
	}
	public int getBroad_state() {
		return broad_state;
	}
	public void setBroad_state(int broad_state) {
		this.broad_state = broad_state;
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
		return "PptVO [fno=" + fno + ", userid=" + userid + ", ppt_kind=" + ppt_kind + ", ppt_title=" + ppt_title
				+ ", ppt_desc=" + ppt_desc + ", broad_state=" + broad_state + ", regdate=" + regdate + ", modidate="
				+ modidate + "]";
	}
	
	
	
	
	
}
