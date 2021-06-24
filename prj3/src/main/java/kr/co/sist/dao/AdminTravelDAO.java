package kr.co.sist.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import kr.co.sist.domain.InfoTravelDomain;
import kr.co.sist.domain.MainTravelDomain;
import kr.co.sist.vo.InfoTravel2VO;
import kr.co.sist.vo.InfoTravelVO;
import kr.co.sist.vo.PageVO;

public class AdminTravelDAO {

	private static AdminTravelDAO atDAO;
	
	private AdminTravelDAO() {
		
	};
	
	public static AdminTravelDAO getInstance() {
		if (atDAO == null) {
			atDAO = new AdminTravelDAO();
		}
		
		return atDAO;
	}
	
	public int selectToalCnt() {
		
		SqlSession ss = MyBatisHandler.getInstance().getHandler();
		
		int totalCnt = ss.selectOne("kr.co.sist.adminTravelMapper.selectAllCnt");
		
		if (ss != null) { ss.close();}
		
		return totalCnt;
	}
	
	public List<MainTravelDomain> selectTravelPage(PageVO tpVO) {
		
		SqlSession ss = MyBatisHandler.getInstance().getHandler();
		
		List<MainTravelDomain> list = ss.selectList("kr.co.sist.adminTravelMapper.selectTravelPage", tpVO);
		
		if (ss != null) { ss.close();}
		
		return list;
	}
	
	public int insertTravel(InfoTravelVO itVO) {
		
		SqlSession ss = MyBatisHandler.getInstance().getHandler();
		
		int result = ss.insert("kr.co.sist.adminTravelMapper.insertTravel", itVO);
		
		if (result == 1) {
			ss.commit();
		}
		
		if (ss != null) {
			ss.close();
		}
		
		return result;
	}
	
	public InfoTravelDomain selectTravel(int tr_num) {
		
		SqlSession ss = MyBatisHandler.getInstance().getHandler();
		
		InfoTravelDomain itd = ss.selectOne("kr.co.sist.adminTravelMapper.selectTravel", tr_num);
		
		if (ss != null) {
			ss.close();
		}
		
		return itd;
	}
	
	public int updateTravel(InfoTravel2VO it2VO) {
		SqlSession ss = MyBatisHandler.getInstance().getHandler();
		
		int result = ss.update("kr.co.sist.adminTravelMapper.updateTravel", it2VO);
		
		if (result == 1) {
			ss.commit();
		}
		
		if (ss != null) {
			ss.close();
		}
		
		return result;
	}
	
}
