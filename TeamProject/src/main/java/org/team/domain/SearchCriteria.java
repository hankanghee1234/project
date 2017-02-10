package org.team.domain;

public class SearchCriteria extends Criteria {

	private String searchType;
	private String keyword;
	private String userid;
	private Integer fno;
	
	public SearchCriteria() {
		this.fno = 2;
	}
	
	public Integer getFno() {
		return fno;
	}
	public void setFno(Integer fno) {
		this.fno = fno;
	}
	public String getSearchType() {
		return searchType;
	}
	public void setSearchType(String searchType) {
		this.searchType = searchType;
	}
	public String getKeyword() {
		return keyword;
	}
	public void setKeyword(String keyword) {
		this.keyword = keyword;
	}
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
	
	@Override
	public String toString() {
		return "SearchCriteria [searchType=" + searchType + ", keyword=" + keyword + ", userid=" + userid + ", fno="
				+ fno + "]";
	}

}
