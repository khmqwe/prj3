package kr.co.sist.service;

import java.util.List;

import kr.co.sist.dao.AdminMemberDAO;
import kr.co.sist.domain.AdminMemberDetail1Domain;
import kr.co.sist.domain.AdminMemberDetail2Domain;
import kr.co.sist.domain.AdminMemberDomain;
import kr.co.sist.vo.PageVO;

public class AdminMemberService {

	public int searchMemberCnt() {
		int totalCnt = 0;
		
		AdminMemberDAO amDAO = AdminMemberDAO.getInstance();
		totalCnt = amDAO.selectMemberCnt();
		
		return totalCnt;
	}
	
	public List<AdminMemberDomain> searchAdminMember(PageVO pVO) {
		List<AdminMemberDomain> amdList = null;
		
		AdminMemberDAO amDAO = AdminMemberDAO.getInstance();
		amdList = amDAO.selectAdminMember(pVO);
		
		return amdList;
	}
	
	public AdminMemberDetail1Domain searchAdminMemberDetail1(String m_id) {
		AdminMemberDetail1Domain amdd = null;
		AdminMemberDAO amDAO = AdminMemberDAO.getInstance();
		amdd = amDAO.selectAdminMemberDetail1(m_id);
		
		return amdd;
	}
	
	public List<AdminMemberDetail2Domain> searchAdminMemberDetail2(String m_id) {
		List<AdminMemberDetail2Domain> amdd2List = null;
		AdminMemberDAO amDAO = AdminMemberDAO.getInstance();
		amdd2List = amDAO.selectAdminMemberDetail2(m_id);
		
		return amdd2List;
	}
	
	public int removeAdminMember(String m_id) {
		
		AdminMemberDAO amDAO = AdminMemberDAO.getInstance();
		int result = amDAO.deleteAdminMember(m_id);
		
		return result;
	}
}
