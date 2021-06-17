package kr.co.sist.service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import kr.co.sist.dao.MyBatisHandler;
import kr.co.sist.dao.TestDAO;
import kr.co.sist.domain.TravelThumbDomain;

public class TestService {

public List<TravelThumbDomain> selectTest() {
		
		TestDAO tDAO = new TestDAO();
		
		List<TravelThumbDomain> list = tDAO.selectTest();
	
		return list;
	}
}
