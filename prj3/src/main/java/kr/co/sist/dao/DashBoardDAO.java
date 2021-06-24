package kr.co.sist.dao;

import org.apache.ibatis.session.SqlSession;

public class DashBoardDAO {

	public static DashBoardDAO dbDAO;
	
	private DashBoardDAO() {
		
	};

	public static DashBoardDAO getInstance() {
		if(dbDAO==null) {
			dbDAO=new DashBoardDAO();
		}
		return dbDAO;
	}
	
	public int selectTotalMember() {
		int cnt=0;
		SqlSession ss=MyBatisHandler.getInstance().getHandler();
		cnt=ss.selectOne("kr.co.sist.dashBoardMapper.selectTotalMember");
		if (ss != null) {ss.close();}
		return cnt;
	}//selectTotalMember
	
	
	
	public int selectMonthComment() {
		int cnt=0;
		SqlSession ss=MyBatisHandler.getInstance().getHandler();
		cnt=ss.selectOne("kr.co.sist.dashBoardMapper.selectMonthComment");
		if (ss != null) {ss.close();}
		return cnt;
	}//selectMonthComment
	
	
	public int selectMonthBookingTour() {
		int cnt=0;
		SqlSession ss=MyBatisHandler.getInstance().getHandler();
		cnt=ss.selectOne("kr.co.sist.dashBoardMapper.selectMonthBookingTour");
		if (ss != null) {ss.close();}
		return cnt;
	}//selectMonthBookingTour
	
	
}
