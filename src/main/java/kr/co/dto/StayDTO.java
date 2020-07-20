package kr.co.dto;

public class StayDTO {
	//호텔
	private int staynum;
	private String stayname;
	private String stayaddress;
	private String staytel;
	private String staycost;
	private String stayintro;
	private String staygrade;
	private String stayregion;
	private String selectimg;
	private String hotelimg;
	private String roomimg;
	private String id;
	
	//호텔 방 번호
	private int roomnum;
	private String roomname;
	private String price;
	private String roomintro;
	private String people;
	private String peoplemax;
	
	//호텔
	
	public int getStaynum() {
		return staynum;
	}
	public void setStaynum(int staynum) {
		this.staynum = staynum;
	}

	public String getStayname() {
		return stayname;
	}

	public void setStayname(String stayname) {
		this.stayname = stayname;
	}
	public String getStayaddress() {
		return stayaddress;
	}
	public void setStayaddress(String stayaddress) {
		this.stayaddress = stayaddress;
	}
	public String getStaytel() {
		return staytel;
	}
	public void setStaytel(String staytel) {
		this.staytel = staytel;
	}
	public String getStaycost() {
		return staycost;
	}
	public void setStaycost(String staycost) {
		this.staycost = staycost;
	}
	public String getStayintro() {
		return stayintro;
	}
	public void setStayintro(String stayintro) {
		this.stayintro = stayintro;
	}
	public String getStaygrade() {
		return staygrade;
	}
	public void setStaygrade(String staygrade) {
		this.staygrade = staygrade;
	}
	public String getStayregion() {
		return stayregion;
	}
	public void setStayregion(String stayregion) {
		this.stayregion = stayregion;
	}
	public String getSelectimg() {
		return selectimg;
	}
	public void setSelectimg(String selectimg) {
		this.selectimg = selectimg;
	}
	public String getHotelimg() {
		return hotelimg;
	}
	public void setHotelimg(String hotelimg) {
		this.hotelimg = hotelimg;
	}
	
	
	//룸
	
	public int getRoomnum() {
		return roomnum;
	}
	public void setRoomnum(int roomnum) {
		this.roomnum = roomnum;
	}
	
	public String getRoomimg() {
		return roomimg;
	}
	public void setRoomimg(String roomimg) {
		this.roomimg = roomimg;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}

	public String getRoomname() {
		return roomname;
	}
	public void setRoomname(String roomname) {
		this.roomname = roomname;
	}
	public String getPrice() {
		return price;
	}
	public void setPrice(String price) {
		this.price = price;
	}
	public String getRoomintro() {
		return roomintro;
	}
	public void setRoomintro(String roomintro) {
		this.roomintro = roomintro;
	}
	public String getPeople() {
		return people;
	}
	public void setPeople(String people) {
		this.people = people;
	}
	public String getPeoplemax() {
		return peoplemax;
	}
	public void setPeoplemax(String peoplemax) {
		this.peoplemax = peoplemax;

	}
	@Override
	public String toString() {
		return "StayDTO [staynum=" + staynum + ", stayname=" + stayname + ", stayaddress=" + stayaddress + ", staytel="
				+ staytel + ", staycost=" + staycost + ", stayintro=" + stayintro + ", staygrade=" + staygrade
				+ ", stayregion=" + stayregion + ", selectimg=" + selectimg + ", hotelimg=" + hotelimg + ", roomimg="
				+ roomimg + ", id=" + id + ", roomnum=" + roomnum + ", roomname=" + roomname + ", price=" + price
				+ ", roomintro=" + roomintro + ", people=" + people + ", peoplemax=" + peoplemax + "]";
	}
}
