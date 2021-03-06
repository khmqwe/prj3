
package kr.co.sist.service;

import kr.co.sist.dao.MemberDAO;
import kr.co.sist.domain.MyInfoDomain;
import kr.co.sist.vo.LoginVO;
import kr.co.sist.vo.MemberVO;
import kr.co.sist.vo.MyInfoModifyVO;
import kr.co.sist.vo.MyInfoVO;
public class MemberService {
	
	public String loginCheck(LoginVO lVO) {
		String result=null;
		MemberDAO mDAO = new MemberDAO();
		result=mDAO.selectLogin(lVO);
		return result;
	}
	
	public String passCheck(LoginVO lVO) {
		String result=null;
		MemberDAO mDAO = new MemberDAO();
		result=mDAO.selectPass(lVO);
		System.out.println(result);
		return result;
	}
	
	public void addMember(MemberVO mVO) {
		MemberDAO mDAO = new MemberDAO();
		mDAO.insertMember(mVO);

	}
	
	public String checkIdDup(MemberVO mVO) {
		MemberDAO mDAO = new MemberDAO();
		String result=mDAO.selectId(mVO);
		return result;
	}

	public int modMyInfo(MyInfoModifyVO mimVO) {
		MemberDAO mDAO = new MemberDAO();
		int result=mDAO.updateMyInfo(mimVO);
		return result;
	}
	
	public MyInfoDomain searchMyInfo(String m_id) {
		MemberDAO mDAO = new MemberDAO();
		MyInfoDomain mid = mDAO.selectMyInfo(m_id);
		return mid;
	}
	
	public int modifyMyPass(LoginVO lVO) {
		MemberDAO mDAO = new MemberDAO();
		int result = mDAO.updateMyPass(lVO);
		
		return result;
	}
 
}
