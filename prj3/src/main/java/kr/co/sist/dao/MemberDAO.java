package kr.co.sist.dao;

import java.security.NoSuchAlgorithmException;

import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;

import kr.co.sist.domain.AdminMemberDetail1Domain;
import kr.co.sist.domain.MyInfoDomain;
import kr.co.sist.util.cipher.DataEncrypt;
import kr.co.sist.vo.LoginVO;
import kr.co.sist.vo.MemberVO;
import kr.co.sist.vo.MyInfoVO;

public class MemberDAO {
	public String selectLogin(LoginVO lVO) {
		String result = null;
		SqlSession ss = MyBatisHandler.getInstance().getHandler();
		// ��ȣȭ
		String password = lVO.getMPASS();
		try {
			lVO.setMPASS(DataEncrypt.messageDigest("MD5", password));
		} catch (NoSuchAlgorithmException e) {
			e.printStackTrace();
		}
		result = ss.selectOne("kr.co.sist.memberMapper.selectLoginInfo", lVO);
		if (ss != null) {	ss.close();}
		return result;
	}
	
	public String selectPass(LoginVO lVO) {
		String result = null;
		SqlSession ss = MyBatisHandler.getInstance().getHandler();
		// ��ȣȭ
		String password = lVO.getMPASS();
		try {
			lVO.setMPASS(DataEncrypt.messageDigest("MD5", password));
		} catch (NoSuchAlgorithmException e) {
			e.printStackTrace();
		}
		result = ss.selectOne("kr.co.sist.memberMapper.selectPass", lVO);
		if(result == null) {
			result = "null";
		}
		if (ss != null) {	ss.close();}
		return result;
	}
	
	public void insertMember(MemberVO mVO) {
		SqlSession ss = MyBatisHandler.getInstance().getHandler();
		// ��ȣȭ
		String password = mVO.getMPASS();
		try {
			mVO.setMPASS(DataEncrypt.messageDigest("MD5", password));
		} catch (NoSuchAlgorithmException e) {
			e.printStackTrace();
		}
		ss.insert("kr.co.sist.memberMapper.insertMember", mVO);
		ss.commit();
		if (ss != null) {
			ss.close();
		}
	}

	public  String selectId(MemberVO mVO) {
		SqlSession ss = MyBatisHandler.getInstance().getHandler();
		String selectname = ss.selectOne("kr.co.sist.memberMapper.selectId",mVO);
		if (ss != null) {
			ss.close();
		}
		return selectname;
	}

	public int updateMyInfo(MyInfoVO miVO) {
		SqlSession ss = MyBatisHandler.getInstance().getHandler();
		int update = ss.update("kr.co.sist.memberMapper.updateMyInofo",miVO);
		System.out.println(update);
		if (ss != null) {
			ss.close();
		}
		return update;
	}
	
	/*
	 * public MyInfoDomain selectMyInfo(String m_id) { MyInfoDomain md = null;
	 * SqlSession ss = MyBatisHandler.getInstance().getHandler();
	 * 
	 * md = ss.selectOne("kr.co.sist.adminMemberMapper.selectId", m_id); if (ss !=
	 * null) { ss.close(); }
	 * 
	 * return md; }
	 */
	
}
