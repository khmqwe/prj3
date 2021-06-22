package kr.co.sist.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import kr.co.sist.domain.MainTravelDomain;
import kr.co.sist.vo.TravelPageVO;

public class AdminTravelDAO {

	public int selectToalCnt() {
		
		SqlSession ss = MyBatisHandler.getInstance().getHandler();
		
		int totalCnt = ss.selectOne("kr.co.sist.adminTravelMapper.selectAllCnt");
		
		if (ss != null) { ss.close();}
		
		return totalCnt;
	}
	
	public List<MainTravelDomain> selectTravelPage(TravelPageVO tpVO) {
		
		SqlSession ss = MyBatisHandler.getInstance().getHandler();
		
		List<MainTravelDomain> list = ss.selectList("kr.co.sist.adminTravelMapper.selectTravelPage", tpVO);
		
		if (ss != null) { ss.close();}
		
		return list;
	}
	
}
