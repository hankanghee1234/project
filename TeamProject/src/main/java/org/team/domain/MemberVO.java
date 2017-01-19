package org.team.domain;

import java.util.Date;

public class MemberVO {

	private String userid;
	private String userpw;
	private String email;
	private String username;
	private Integer broad_state;
	private Date regdate;
	private Date modidate;

	public MemberVO() {

	}

	public MemberVO(String userid, String userpw) {

	}

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

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public Integer getBroad_state() {
		return broad_state;
	}

	public void setBroad_state(Integer broad_state) {
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
		return "MemberVO [userid=" + userid + ", userpw=" + userpw + ", email=" + email + ", username=" + username
				+ ", broad_state=" + broad_state + ", regdate=" + regdate + ", modidate=" + modidate + "]";
	}

	

}
