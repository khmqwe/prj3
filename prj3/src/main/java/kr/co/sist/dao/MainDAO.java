package kr.co.sist.dao;

import java.util.List;
import java.util.Random;

import org.apache.ibatis.session.SqlSession;

import kr.co.sist.domain.SearchTravelDomain;
import kr.co.sist.domain.TravelCommentDomain;
import kr.co.sist.domain.TravelInfoDomain;
import kr.co.sist.domain.TravelThumbDomain;
import kr.co.sist.domain.TravelTourDomain;

public class MainDAO {
	
private static MainDAO mDAO;
	
	private MainDAO() {
		
	};
	
	public static MainDAO getInstance() {
		if (mDAO == null) {
			mDAO = new MainDAO();
		}
		
		return mDAO;
	}
	
	public List<TravelThumbDomain> selectTravelThumbDomain(int num) {
		
		SqlSession ss = MyBatisHandler.getInstance().getHandler();
		List<TravelThumbDomain> ttd = null;
		if (num == 1) {
			ttd = ss.selectList("kr.co.sist.mainMapper.selectTravelThumb1");
		}
		
		else if (num == 2) {
			
			ttd = ss.selectList("kr.co.sist.mainMapper.selectTravelThumb2", new Random().nextInt(11)+1);
		}
		
		if (ss != null) {ss.close();}
		
		return ttd;
	}
	
	public TravelInfoDomain selectTravelInfo(int tr_num) {
		SqlSession ss = MyBatisHandler.getInstance().getHandler();
		
		TravelInfoDomain tid = ss.selectOne("kr.co.sist.mainMapper.selectTravelInfo", tr_num);
		
		if (ss != null) {ss.close();}
		
		return tid;
	}
	
	public TravelTourDomain selectTravelTour(int tr_num) {
		SqlSession ss = MyBatisHandler.getInstance().getHandler();
		
		TravelTourDomain ttd = ss.selectOne("kr.co.sist.mainMapper.selectTravelTour", tr_num);
		
		if (ss != null) {ss.close();}
		
		return ttd;
	}
	
	public List<TravelCommentDomain> selectTravelComment(int tr_num) {
		SqlSession ss = MyBatisHandler.getInstance().getHandler();
		
		List<TravelCommentDomain> tcdList = ss.selectList("kr.co.sist.mainMapper.selectTravelComment", tr_num);
		
		if (ss != null) {ss.close();}
		
		return tcdList;
	}
	
	public List<SearchTravelDomain> selectSearchedPlace(int num, String search) {
		SqlSession ss = MyBatisHandler.getInstance().getHandler();
		
		List<SearchTravelDomain> stdList = null;
		
		switch(num) {
		case 1:
			stdList = ss.selectList("kr.co.sist.mainMapper.selectSearchedPlace1");
			break;
		case 2:
			stdList = ss.selectList("kr.co.sist.mainMapper.selectSearchedPlace2", search);
			break;
		case 3:
			stdList = ss.selectList("kr.co.sist.mainMapper.selectSearchedPlace3", search);
			break;
		default:
			break;
		}
		
		if (ss != null) {ss.close();}
		
		return stdList;
	}
}
