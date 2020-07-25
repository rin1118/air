package kr.co.dto;

import java.util.Date;

public class BoardDTO {
	private int b_no;
	private String title;
	private String content;
	private String writer;
	private Date regdate;
	
	public int getB_no() {
		return b_no;
	}
	public void setB_no(int b_no) {
		this.b_no = b_no;
	}
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
	public String getWriter() {
		return writer;
	}
	public void setWriter(String writer) {
		this.writer = writer;
	}
	public Date getRegdate() {
		return regdate;
	}
	public void setRegdate(Date regdate) {
		this.regdate = regdate;
	}
	
	@Override
	public String toString() {
		return "BoardDTO [b_no=" + b_no + ", title=" + title + ", content=" + content + ", writer=" + writer
				+ ", regdate=" + regdate + "]";
	}
	
	
}
