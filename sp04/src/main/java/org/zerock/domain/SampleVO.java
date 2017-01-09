package org.zerock.domain;

public class SampleVO {

	public String title;
	public String content;
	
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	
	@Override
	public String toString() {
		return "Sample [title=" + title + ", content=" + content + "]";
	}
	
	
	
}
