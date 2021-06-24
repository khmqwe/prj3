package kr.co.sist.service;

import java.util.List;

import kr.co.sist.dao.AdminTravelDAO;
import kr.co.sist.domain.InfoTravelDomain;
import kr.co.sist.domain.MainTravelDomain;
import kr.co.sist.vo.InfoTravel2VO;
import kr.co.sist.vo.InfoTravelVO;
import kr.co.sist.vo.PageVO;

public class AdminTravelService {

	public int searchTotalCnt() {
		
		AdminTravelDAO atDAO = AdminTravelDAO.getInstance();
		
		int totalCnt = atDAO.selectToalCnt();
		
		return totalCnt;
		
	}
	
	public List<MainTravelDomain> searchTravelPage(PageVO tpVO) {
		
		AdminTravelDAO atDAO = AdminTravelDAO.getInstance();
		
		List<MainTravelDomain> list = atDAO.selectTravelPage(tpVO);
		
		return list;
	}
	
	public int addTravel(InfoTravelVO itVO) {
		
		AdminTravelDAO atDAO = AdminTravelDAO.getInstance();
		
		int result = atDAO.insertTravel(itVO);
		
		return result;
	}
	
	public InfoTravelDomain searchTravel(int tr_num) {
		
		AdminTravelDAO atDAO = AdminTravelDAO.getInstance();
		
		InfoTravelDomain itd = atDAO.selectTravel(tr_num);
		
		return itd;
	}
	
	public int modifyTravel(InfoTravel2VO it2VO) {
		AdminTravelDAO atDAO = AdminTravelDAO.getInstance();
		
		int result = atDAO.updateTravel(it2VO);
		
		return result;
	}
	
}
