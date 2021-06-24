package kr.co.sist.service;

import java.security.SecureRandom;

import kr.co.sist.dao.AdminLoginDAO;
import kr.co.sist.dao.FindDAO;
import kr.co.sist.vo.FindIdVO;
import kr.co.sist.vo.FindPassVO;
import kr.co.sist.vo.NewPassVO;
import kr.co.sist.vo.adminLoginVO;

public class AdminLoginService {
	
	static AdminLoginService as;

	private AdminLoginService() {
		
	}
	public static AdminLoginService getInstance() {
		if(as==null) {
			as=new AdminLoginService();
		}//endif
		return as;
	}//getInstance
	
	public String adminLogin(adminLoginVO alVO) {
		AdminLoginDAO ad=AdminLoginDAO.getInstance();
		return ad.selectLogin(alVO);
	}//adminLogin
	
}


