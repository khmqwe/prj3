package kr.co.sist.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import kr.co.sist.domain.MainTravelDomain;
import kr.co.sist.domain.PopularLikeDomain;
import kr.co.sist.domain.PopularReviewDomain;
import kr.co.sist.vo.PageVO;

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
	
	public int selectMonthPrice() {
		int cnt=0;
		SqlSession ss=MyBatisHandler.getInstance().getHandler();
		cnt=ss.selectOne("kr.co.sist.dashBoardMapper.selectMonthPrice");
		if (ss != null) {ss.close();}
		return cnt;
	}//selectMonthBookingTour
	
	
	public List<PopularLikeDomain> selectPopularLike() {
		SqlSession ss = MyBatisHandler.getInstance().getHandler();
		List<PopularLikeDomain> list = ss.selectList("kr.co.sist.dashBoardMapper.selectPopularLike");
		if (ss != null) { ss.close();}
		return list;
		}//selectPopularLike
		
	public List<PopularReviewDomain> selectPopularReview() {
		SqlSession ss = MyBatisHandler.getInstance().getHandler();
		List<PopularReviewDomain> list = ss.selectList("kr.co.sist.dashBoardMapper.selectPopularReview");
		if (ss != null) { ss.close();}
		return list;
	}//selectPopularLike
	
}
