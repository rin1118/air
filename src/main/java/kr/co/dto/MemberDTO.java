package kr.co.dto;

import org.springframework.stereotype.Repository;

@Repository
public class MemberDTO {
	private String name;
	private String id;
	private String pw;
	private String email;
	private String phone;
	private String grade;
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPw() {
		return pw;
	}
	public void setPw(String pw) {
		this.pw = pw;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getGrade() {
		return grade;
	}
	public void setGrade(String grade) {
		this.grade = grade;
	}
	
	@Override
	public String toString() {
		return "MemberDTO [name=" + name + ", id=" + id + ", pw=" + pw + ", email=" + email + ", phone=" + phone
				+ ", grade=" + grade + "]";
	}
	
	
}
