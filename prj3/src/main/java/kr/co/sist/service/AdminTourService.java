package kr.co.sist.service;

import java.util.List;

import kr.co.sist.dao.AdminTourDAO;
import kr.co.sist.domain.AdminInfoTourDomain;
import kr.co.sist.domain.AdminTourDomain;
import kr.co.sist.vo.AdminTourPageVO;
import kr.co.sist.vo.PageVO;

public class AdminTourService {

	public int searchTourCnt(int tr_num) {
		
		AdminTourDAO atDAO = AdminTourDAO.getInstance();
		
		int totalCnt = atDAO.selectTourCnt(tr_num);
		
		return totalCnt;
	}
	
	public List<AdminTourDomain> searchTourMainPage(AdminTourPageVO atpVO) {
		
		AdminTourDAO atDAO = AdminTourDAO.getInstance();
		List<AdminTourDomain> atdList = atDAO.selectTourMainPage(atpVO);
		
		return atdList;
	}
	
	public AdminInfoTourDomain searchTourDetail(int to_num) {
		
		AdminTourDAO atDAO = AdminTourDAO.getInstance();
		AdminInfoTourDomain aitd = atDAO.selectTourDetail(to_num);
		
		return aitd;
	}
}
