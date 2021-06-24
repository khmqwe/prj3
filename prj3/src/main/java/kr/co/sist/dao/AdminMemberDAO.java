package kr.co.sist.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import kr.co.sist.domain.AdminMemberDetail1Domain;
import kr.co.sist.domain.AdminMemberDetail2Domain;
import kr.co.sist.domain.AdminMemberDomain;
import kr.co.sist.vo.PageVO;

public class AdminMemberDAO {
	
	private static AdminMemberDAO amDAO;
	
	private AdminMemberDAO() {
		
	}
	
	public static AdminMemberDAO getInstance() {
		if (amDAO == null) {
			amDAO = new AdminMemberDAO();
		}
		
		return amDAO;
	}
	
	public int selectMemberCnt() {
		int totalCnt = 0;
		SqlSession ss = MyBatisHandler.getInstance().getHandler();
		totalCnt = ss.selectOne("kr.co.sist.adminMemberMapper.selectMemberCnt");
		
		if (ss != null) { ss.close(); }
		
		return totalCnt;
	}
	
	public List<AdminMemberDomain> selectAdminMember(PageVO pVO) {
		List<AdminMemberDomain> amdList = null;
		SqlSession ss = MyBatisHandler.getInstance().getHandler();
		
		amdList = ss.selectList("kr.co.sist.adminMemberMapper.selectAdminMember", pVO);
		
		if (ss != null) { ss.close(); }
		
		return amdList;
	}
	
	public AdminMemberDetail1Domain selectAdminMemberDetail1(String m_id) {
		AdminMemberDetail1Domain amdd = null;
		SqlSession ss = MyBatisHandler.getInstance().getHandler();
		
		amdd = ss.selectOne("kr.co.sist.adminMemberMapper.selectAdminMemberDetail1", m_id);
		if (ss != null) { ss.close(); }
		
		return amdd;
	}
	
	public List<AdminMemberDetail2Domain> selectAdminMemberDetail2(String m_id) {
		List<AdminMemberDetail2Domain> amdd2List = null;
		SqlSession ss = MyBatisHandler.getInstance().getHandler();
		
		amdd2List = ss.selectList("kr.co.sist.adminMemberMapper.selectAdminMemberDetail2", m_id);
		if (ss != null) { ss.close(); }
		
		return amdd2List;
	}
	
	public int deleteAdminMember(String m_id) {
		
		SqlSession ss = MyBatisHandler.getInstance().getHandler();
		
		int result = ss.update("kr.co.sist.adminMemberMapper.deleteAdminMember", m_id);
		
		if (result == 1) {
			ss.commit();
		}
		
		if (ss != null) {
			ss.close();
		}
		
		return result;
	}
}
