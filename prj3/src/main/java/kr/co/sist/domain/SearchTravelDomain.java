package kr.co.sist.domain;

public class SearchTravelDomain {
	private int tr_num;
	private String tr_name;
	private int like_cnt;
	private String thumb_img;
	private String a_name;
	private String tr_simple_explain;
	
	public int getTr_num() {
		return tr_num;
	}
	public void setTr_num(int tr_num) {
		this.tr_num = tr_num;
	}
	public String getTr_name() {
		return tr_name;
	}
	public void setTr_name(String tr_name) {
		this.tr_name = tr_name;
	}
	public int getLike_cnt() {
		return like_cnt;
	}
	public void setLike_cnt(int like_cnt) {
		this.like_cnt = like_cnt;
	}
	public String getThumb_img() {
		return thumb_img;
	}
	public void setThumb_img(String thumb_img) {
		this.thumb_img = thumb_img;
	}
	public String getA_name() {
		return a_name;
	}
	public void setA_name(String a_name) {
		this.a_name = a_name;
	}
	public String getTr_simple_explain() {
		return tr_simple_explain;
	}
	public void setTr_simple_explain(String tr_simple_explain) {
		this.tr_simple_explain = tr_simple_explain;
	}
}
