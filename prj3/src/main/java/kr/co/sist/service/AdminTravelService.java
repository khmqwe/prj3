package kr.co.sist.service;

import java.util.List;

import kr.co.sist.dao.AdminTravelDAO;
import kr.co.sist.domain.MainTravelDomain;
import kr.co.sist.vo.TravelPageVO;

public class AdminTravelService {

	public int searchTotalCnt() {
		
		AdminTravelDAO atDAO = new AdminTravelDAO();
		
		int totalCnt = atDAO.selectToalCnt();
		
		return totalCnt;
		
	}
	
	public List<MainTravelDomain> searchTravelPage(TravelPageVO tpVO) {
		
		AdminTravelDAO atDAO = new AdminTravelDAO();
		
		List<MainTravelDomain> list = atDAO.selectTravelPage(tpVO);
		
		return list;
	}
	
	
}
