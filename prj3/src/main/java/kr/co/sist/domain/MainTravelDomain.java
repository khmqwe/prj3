package kr.co.sist.domain;

public class MainTravelDomain {
	private String tr_name;
	private int tr_num;
	private String a_name;
	private String tr_date;
	private int rnum;
	
	public String getTr_name() {
		return tr_name;
	}
	public void setTr_name(String tr_name) {
		this.tr_name = tr_name;
	}
	public int getTr_num() {
		return tr_num;
	}
	public void setTr_num(int tr_num) {
		this.tr_num = tr_num;
	}
	public String getTr_date() {
		return tr_date;
	}
	public void setTr_date(String tr_date) {
		this.tr_date = tr_date;
	}
	public String getA_name() {
		return a_name;
	}
	public void setA_name(String a_name) {
		this.a_name = a_name;
	}
	public int getRnum() {
		return rnum;
	}
	public void setRnum(int rnum) {
		this.rnum = rnum;
	}
}
