package kr.co.sist.dao;

import org.apache.ibatis.session.SqlSession;

import kr.co.sist.vo.adminLoginVO;

public class AdminLoginDAO {
	private static AdminLoginDAO alDAO;
	
	private AdminLoginDAO() {
		
	}
	public static AdminLoginDAO getInstance() {
		if(alDAO==null) {
			alDAO=new AdminLoginDAO();
		}
		return alDAO;
	}//getInstance
	
	
	public String selectLogin(adminLoginVO alVO){
		String name=null;
		SqlSession ss=MyBatisHandler.getInstance().getHandler();
		name=ss.selectOne("kr.co.sist.adminLoginMapper.select_admin",alVO);
		if(ss!=null) {ss.close();}
		return name;
	}//selectLogin
	
	
}
