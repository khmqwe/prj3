package kr.co.sist.vo;

public class InfoTourVO {
	private String to_name;
	private String to_take_time;
	private int la_num;
	private String thumb_img;
	private String plan_explain;
	private String to_meeting_time;
	private String to_meeting_loc;
	private String to_start_date;
	private String to_end_date;
	private int tr_num;
	private int to_price;
	
	public InfoTourVO() {
	}
	public InfoTourVO(String to_name, String to_take_time, int la_num, String thumb_img, String plan_explain,
			String to_meeting_time, String to_meeting_loc, String to_start_date, String to_end_date, int tr_num, int to_price) {
		this.to_name = to_name;
		this.to_take_time = to_take_time;
		this.la_num = la_num;
		this.thumb_img = thumb_img;
		this.plan_explain = plan_explain;
		this.to_meeting_time = to_meeting_time;
		this.to_meeting_loc = to_meeting_loc;
		this.to_start_date = to_start_date;
		this.to_end_date = to_end_date;
		this.tr_num = tr_num;
		this.to_price = to_price;
	}
	public String getTo_name() {
		return to_name;
	}
	public void setTo_name(String to_name) {
		this.to_name = to_name;
	}
	public String getTo_take_time() {
		return to_take_time;
	}
	public void setTo_take_time(String to_take_time) {
		this.to_take_time = to_take_time;
	}
	public int getLa_num() {
		return la_num;
	}
	public void setLa_num(int la_num) {
		this.la_num = la_num;
	}
	public String getThumb_img() {
		return thumb_img;
	}
	public void setThumb_img(String thumb_img) {
		this.thumb_img = thumb_img;
	}
	public String getPlan_explain() {
		return plan_explain;
	}
	public void setPlan_explain(String plan_explain) {
		this.plan_explain = plan_explain;
	}
	public String getTo_meeting_time() {
		return to_meeting_time;
	}
	public void setTo_meeting_time(String to_meeting_time) {
		this.to_meeting_time = to_meeting_time;
	}
	public String getTo_meeting_loc() {
		return to_meeting_loc;
	}
	public void setTo_meeting_loc(String to_meeting_loc) {
		this.to_meeting_loc = to_meeting_loc;
	}
	public String getTo_start_date() {
		return to_start_date;
	}
	public void setTo_start_date(String to_start_date) {
		this.to_start_date = to_start_date;
	}
	public String getTo_end_date() {
		return to_end_date;
	}
	public void setTo_end_date(String to_end_date) {
		this.to_end_date = to_end_date;
	}
	public int getTr_num() {
		return tr_num;
	}
	public void setTr_num(int tr_num) {
		this.tr_num = tr_num;
	}
	public int getTo_price() {
		return to_price;
	}
	public void setTo_price(int to_price) {
		this.to_price = to_price;
	}
	
	
}
