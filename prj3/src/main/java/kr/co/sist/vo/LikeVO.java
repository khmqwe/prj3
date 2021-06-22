package kr.co.sist.vo;

public class LikeVO {
	private int tr_num;
	private String m_id;
	
	public LikeVO() {
	}
	
	public LikeVO(int tr_num, String m_id) {
		this.tr_num = tr_num;
		this.m_id = m_id;
	}
	
	public int getTr_num() {
		return tr_num;
	}
	public void setTr_num(int tr_num) {
		this.tr_num = tr_num;
	}
	public String getM_id() {
		return m_id;
	}
	public void setM_id(String m_id) {
		this.m_id = m_id;
	}
}
