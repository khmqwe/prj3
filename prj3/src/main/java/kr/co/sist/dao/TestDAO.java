package kr.co.sist.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import kr.co.sist.domain.TravelThumbDomain;

public class TestDAO {
	
	public List<TravelThumbDomain> selectTest() {
		
		SqlSession ss = MyBatisHandler.getInstance().getHandler();
		
		List<TravelThumbDomain> list = ss.selectList("selectData");
		
		return list;
	}
}
