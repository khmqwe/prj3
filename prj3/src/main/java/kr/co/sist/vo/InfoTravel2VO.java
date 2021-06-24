package kr.co.sist.vo;

public class InfoTravel2VO {
	private String tr_name;
	private int tr_num;
	private int a_num;
	private String thumb_img;
	private String img1, img2, img3;
	private String tr_simple_explain;
	private String tr_explain;
	private double tr_latitude, tr_longitude;
	private String tr_addr, tr_time, tr_telnum;
	
	public InfoTravel2VO() {
	
	}
	
	public InfoTravel2VO(String tr_name, int tr_num, int a_num, String thumb_img, String img1, String img2, String img3,
			String tr_simple_explain, String tr_explain, double tr_latitude, double tr_longitude, String tr_addr,
			String tr_time, String tr_telnum) {
		this.tr_name = tr_name;
		this.tr_num = tr_num;
		this.a_num = a_num;
		this.thumb_img = thumb_img;
		this.img1 = img1;
		this.img2 = img2;
		this.img3 = img3;
		this.tr_simple_explain = tr_simple_explain;
		this.tr_explain = tr_explain;
		this.tr_latitude = tr_latitude;
		this.tr_longitude = tr_longitude;
		this.tr_addr = tr_addr;
		this.tr_time = tr_time;
		this.tr_telnum = tr_telnum;
	}

	public String getTr_name() {
		return tr_name;
	}
	public void setTr_name(String tr_name) {
		this.tr_name = tr_name;
	}
	public int getA_num() {
		return a_num;
	}
	public void setA_num(int a_num) {
		this.a_num = a_num;
	}
	public String getThumb_img() {
		return thumb_img;
	}
	public void setThumb_img(String thumb_img) {
		this.thumb_img = thumb_img;
	}
	public String getImg1() {
		return img1;
	}
	public void setImg1(String img1) {
		this.img1 = img1;
	}
	public String getImg2() {
		return img2;
	}
	public void setImg2(String img2) {
		this.img2 = img2;
	}
	public String getImg3() {
		return img3;
	}
	public void setImg3(String img3) {
		this.img3 = img3;
	}
	public String getTr_simple_explain() {
		return tr_simple_explain;
	}
	public void setTr_simple_explain(String tr_simple_explain) {
		this.tr_simple_explain = tr_simple_explain;
	}
	public String getTr_explain() {
		return tr_explain;
	}
	public void setTr_explain(String tr_explain) {
		this.tr_explain = tr_explain;
	}
	public double getTr_latitude() {
		return tr_latitude;
	}
	public void setTr_latitude(double tr_latitude) {
		this.tr_latitude = tr_latitude;
	}
	public double getTr_longitude() {
		return tr_longitude;
	}
	public void setTr_longitude(double tr_longitude) {
		this.tr_longitude = tr_longitude;
	}
	public String getTr_addr() {
		return tr_addr;
	}
	public void setTr_addr(String tr_addr) {
		this.tr_addr = tr_addr;
	}
	public String getTr_time() {
		return tr_time;
	}
	public void setTr_time(String tr_time) {
		this.tr_time = tr_time;
	}
	public String getTr_telnum() {
		return tr_telnum;
	}
	public void setTr_telnum(String tr_telnum) {
		this.tr_telnum = tr_telnum;
	}

	public int getTr_num() {
		return tr_num;
	}

	public void setTr_num(int tr_num) {
		this.tr_num = tr_num;
	}

	@Override
	public String toString() {
		return "InfoTravel2VO [tr_name=" + tr_name + ", tr_num=" + tr_num + ", a_num=" + a_num + ", thumb_img="
				+ thumb_img + ", img1=" + img1 + ", img2=" + img2 + ", img3=" + img3 + ", tr_simple_explain="
				+ tr_simple_explain + ", tr_explain=" + tr_explain + ", tr_latitude=" + tr_latitude + ", tr_longitude="
				+ tr_longitude + ", tr_addr=" + tr_addr + ", tr_time=" + tr_time + ", tr_telnum=" + tr_telnum + "]";
	}

}
