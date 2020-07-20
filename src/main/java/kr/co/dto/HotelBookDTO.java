package kr.co.dto;

public class HotelBookDTO {
	
	private int book_num;
	private int s_num;
	private int book_product;
	private String book_date;
	private String book_checkin;
	private String book_checkout;
	private String id;
	private String phone;
	private String name;
	
	public int getBook_num() {
		return book_num;
	}
	public void setBook_num(int book_num) {
		this.book_num = book_num;
	}
	public int getS_num() {
		return s_num;
	}
	public void setS_num(int s_num) {
		this.s_num = s_num;
	}
	public int getBook_product() {
		return book_product;
	}
	public void setBook_product(int book_product) {
		this.book_product = book_product;
	}
	public String getBook_date() {
		return book_date;
	}
	public void setBook_date(String book_date) {
		this.book_date = book_date;
	}
	public String getBook_checkin() {
		return book_checkin;
	}
	public void setBook_checkin(String book_checkin) {
		this.book_checkin = book_checkin;
	}
	public String getBook_checkout() {
		return book_checkout;
	}
	public void setBook_checkout(String book_checkout) {
		this.book_checkout = book_checkout;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	@Override
	public String toString() {
		return "HotelBookDTO [book_num=" + book_num + ", s_num=" + s_num + ", book_product=" + book_product
				+ ", book_date=" + book_date + ", book_checkin=" + book_checkin + ", book_checkout=" + book_checkout
				+ ", id=" + id + ", phone=" + phone + ", name=" + name + ", getBook_num()=" + getBook_num()
				+ ", getS_num()=" + getS_num() + ", getBook_product()=" + getBook_product() + ", getBook_date()="
				+ getBook_date() + ", getBook_checkin()=" + getBook_checkin() + ", getBook_checkout()="
				+ getBook_checkout() + ", getId()=" + getId() + ", getPhone()=" + getPhone() + ", getName()="
				+ getName() + ", getClass()=" + getClass() + ", hashCode()=" + hashCode() + ", toString()="
				+ super.toString() + "]";
	}
	
	
	
}
