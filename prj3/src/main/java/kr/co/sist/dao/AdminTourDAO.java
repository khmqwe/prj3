package kr.co.sist.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import kr.co.sist.domain.AdminInfoTourDomain;
import kr.co.sist.domain.AdminTourDomain;
import kr.co.sist.vo.AdminTourPageVO;
import kr.co.sist.vo.PageVO;

public class AdminTourDAO {
	
	private static AdminTourDAO atDAO;
	
	private AdminTourDAO() {
		
	}
	
	public static AdminTourDAO getInstance() {
		if (atDAO == null) {
			atDAO = new AdminTourDAO();
		}
		
		return atDAO;
	}
	
	public int selectTourCnt(int tr_num) {
		
		SqlSession ss = MyBatisHandler.getInstance().getHandler();
		
		int totalCnt = ss.selectOne("kr.co.sist.adminTourMapper.selectTourCnt", tr_num);
		
		if (ss != null) {
			ss.close();
		}
		
		return totalCnt;
	}
	
	public List<AdminTourDomain> selectTourMainPage(AdminTourPageVO atpVO) {
		List<AdminTourDomain> atdList = null;
		SqlSession ss = MyBatisHandler.getInstance().getHandler();
		
		atdList = ss.selectList("kr.co.sist.adminTourMapper.selectTourMainPage", atpVO);
		
		if (ss != null) { ss.close(); }
		
		return atdList;
	}
	
	public AdminInfoTourDomain selectTourDetail(int to_num) {
		
		AdminInfoTourDomain aitd = null;
		SqlSession ss = MyBatisHandler.getInstance().getHandler();
		
		aitd = ss.selectOne("kr.co.sist.adminTourMapper.selectTourDetail", to_num);
		
		if (ss != null) { ss.close(); }
		
		return aitd;
	}
}
