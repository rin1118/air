package kr.co.dto;

import java.util.Date;

public class TravelStoryDTO {
	private int seq;
	private String title;
	private String name;
	private String content;
	private String id;
	private String preview;
	private Date w_date;
	private int favorite;
	
	public int getSeq() {
		return seq;
	}
	public void setSeq(int seq) {
		this.seq = seq;
	}
	
	public int getFavorite() {
		return favorite;
	}
	public void setFavorite(int favorite) {
		this.favorite = favorite;
	}
	
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public Date getW_date() {
		return w_date;
	}
	public void setW_date(Date w_date) {
		this.w_date = w_date;
	}
	
	public String getPreview() {
		return preview;
	}
	public void setPreview(String preview) {
		this.preview = preview;
	}
	
	@Override
	public String toString() {
		return "TravelStoryDTO [seq=" + seq + ", title=" + title + ", name=" + name + ", content=" + content + ", id="
				+ id + ", preview=" + preview + ", w_date=" + w_date + ", favorite=" + favorite + "]";
	}
}
