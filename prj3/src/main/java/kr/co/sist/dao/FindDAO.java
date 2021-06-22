package kr.co.sist.dao;


import org.apache.ibatis.session.SqlSession;

import kr.co.sist.vo.FindIdVO;
import kr.co.sist.vo.FindPassVO;
import kr.co.sist.vo.NewPassVO;

public class FindDAO {
	static FindDAO fDAO;
	
	private FindDAO() {
		
	}
	
	public static FindDAO getInstance() {
		if(fDAO == null) {
			fDAO = new FindDAO();
		}//end if
		return fDAO;
	}//getInstance
	
	public String SelectId(FindIdVO fiVO) {
		String id=null;
		SqlSession ss=MyBatisHandler.getInstance().getHandler();
		id=ss.selectOne("kr.co.sist.findMapper.select_find_id",fiVO);
		if(ss != null) {ss.close();}
		return id;
	}
	
	public String selectPass(FindPassVO fpVO) {
		String id=null;
		SqlSession ss=MyBatisHandler.getInstance().getHandler();
		id=ss.selectOne("kr.co.sist.findMapper.select_find_pass",fpVO);
		if(ss != null) {ss.close();}
		return id;
	}
	
	public int updatePass(NewPassVO npVO) {
		int rowCnt=0;
		SqlSession ss=MyBatisHandler.getInstance().getHandler();
		//Äõ¸®¹®¼öÇà 
		rowCnt=ss.update("kr.co.sist.findMapper.update_find_pass",npVO);
		if(rowCnt==1) {
			ss.commit();
		}
		if(ss != null) {ss.close();} 
		
		return rowCnt;
	}
}
