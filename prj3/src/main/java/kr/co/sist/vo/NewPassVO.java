package kr.co.sist.vo;

public class NewPassVO {
	private String m_id, m_pass;

	
	public NewPassVO() {
	}

	public NewPassVO(String m_id, String m_pass) {
		this.m_id = m_id;
		this.m_pass = m_pass;
	}

	public String getM_id() {
		return m_id;
	}

	public String getM_pass() {
		return m_pass;
	}

	public void setM_id(String m_id) {
		this.m_id = m_id;
	}

	public void setM_pass(String m_pass) {
		this.m_pass = m_pass;
	}
	
	
	
}
