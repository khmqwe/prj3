package kr.co.sist.vo;

public class FindPassVO {
	private String m_id,m_email,m_telnum;

	public FindPassVO() {
	}

	public FindPassVO(String m_id, String m_email, String m_telnum) {
		this.m_id = m_id;
		this.m_email = m_email;
		this.m_telnum = m_telnum;
	}

	public String getM_id() {
		return m_id;
	}

	public String getM_email() {
		return m_email;
	}

	public String getM_telnum() {
		return m_telnum;
	}

	public void setM_id(String m_id) {
		this.m_id = m_id;
	}

	public void setM_email(String m_email) {
		this.m_email = m_email;
	}

	public void setM_telnum(String m_telnum) {
		this.m_telnum = m_telnum;
	}


}
