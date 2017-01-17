package org.team.domain;

import java.util.Date;

public class MemberVO {

	private String userid;
	private String userpw;
	private String email;
	private String uname;
	private Date regdate;
	private Date modidate;
	
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
	public String getUserpw() {
		return userpw;
	}
	public void setUserpw(String userpw) {
		this.userpw = userpw;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getUname() {
		return uname;
	}
	public void setUname(String uname) {
		this.uname = uname;
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
		return "MemberVO [userid=" + userid + ", userpw=" + userpw + ", email=" + email + ", uname=" + uname
				+ ", regdate=" + regdate + ", modidate=" + modidate + "]";
	}
	
	
	
}
