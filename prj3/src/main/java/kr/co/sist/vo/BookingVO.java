package kr.co.sist.vo;

public class BookingVO {
	private int b_num;
	private String bookingDate;  
	private int tourNum;
	private String m_id;
	private String r_num;	//예약 번호
	
	
	public int getB_num() {
		return b_num;
	}
	public void setB_num(int b_num) {
		this.b_num = b_num;
	}
	public String getBookingDate() {
		return bookingDate;
	}
	public void setBookingDate(String bookingDate) {
		this.bookingDate = bookingDate;
	}
	public int getTourNum() {
		return tourNum;
	}
	public void setTourNum(int tourNum) {
		this.tourNum = tourNum;
	}
	public String getM_id() {
		return m_id;
	}
	public void setM_id(String m_id) {
		this.m_id = m_id;
	}
	public String getR_num() {
		return r_num;
	}
	public void setR_num(String r_num) {
		this.r_num = r_num;
	}
	@Override
	public String toString() {
		return "BookingVO [b_num=" + b_num + ", bookingDate=" + bookingDate + ", tourNum=" + tourNum + ", m_id=" + m_id
				+ ", r_num=" + r_num + "]";
	}
	
}
