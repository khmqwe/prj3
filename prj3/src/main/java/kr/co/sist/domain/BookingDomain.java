package kr.co.sist.domain;

public class BookingDomain {
	
	private String to_name;
	private String thumb_img;
	private int b_num;
	private String b_due_date;
	private String r_num;
	private String m_id;
	
	public String getM_id() {
		return m_id;
	}
	public void setM_id(String m_id) {
		this.m_id = m_id;
	}
	public String getTo_name() {
		return to_name;
	}
	public void setTo_name(String to_name) {
		this.to_name = to_name;
	}
	public String getThumb_img() {
		return thumb_img;
	}
	public void setThumb_img(String thumb_img) {
		this.thumb_img = thumb_img;
	}
	public int getB_num() {
		return b_num;
	}
	public void setB_num(int b_num) {
		this.b_num = b_num;
	}
	public String getB_due_date() {
		return b_due_date;
	}
	public void setB_due_date(String b_due_date) {
		this.b_due_date = b_due_date;
	}
	public String getR_num() {
		return r_num;
	}
	public void setR_num(String r_num) {
		this.r_num = r_num;
	}
	
}
