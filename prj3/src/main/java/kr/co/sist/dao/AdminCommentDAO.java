package kr.co.sist.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import kr.co.sist.domain.InfoCommentDomain;
import kr.co.sist.domain.InfoReviewTravelDomain;
import kr.co.sist.vo.AdminCommentPageVO;

public class AdminCommentDAO {
	
	private static AdminCommentDAO acDAO;
	
	private AdminCommentDAO() {
		
	}
	
	public static AdminCommentDAO getInstance() {
		if (acDAO == null) {
			acDAO = new AdminCommentDAO();
		}
		
		return acDAO;
	}
	
	public int selectCommentCnt(int tr_num) {
		
		int cnt = 0;
		
		SqlSession ss = MyBatisHandler.getInstance().getHandler();
		cnt = ss.selectOne("kr.co.sist.adminCommentMapper.selectCommentCnt", tr_num);
		if (ss != null) { ss.close(); }
		
		return cnt;
	}
	
	public List<InfoCommentDomain> selectComment(AdminCommentPageVO acpVO) {
		
		List<InfoCommentDomain> list = null;
		
		SqlSession ss = MyBatisHandler.getInstance().getHandler();
		
		list = ss.selectList("kr.co.sist.adminCommentMapper.selectComment", acpVO);
		
		if (ss != null) { ss.close(); }
		
		return list;
	}
	
	public InfoReviewTravelDomain selectReviewTravel(int tr_num) {
		InfoReviewTravelDomain irtd = null;
		
		SqlSession ss = MyBatisHandler.getInstance().getHandler();
		
		irtd = ss.selectOne("kr.co.sist.adminCommentMapper.selectInfoTravel", tr_num);
		
		if (ss != null) { ss.close(); }
		
		return irtd;
	}
	
	public int deleteComment(int r_num) {
		SqlSession ss = MyBatisHandler.getInstance().getHandler();
		
		int result = ss.delete("kr.co.sist.adminCommentMapper.deleteComment", r_num);
		
		if (result == 1) {
			ss.commit();
		}
		
		if (ss != null) { ss.close(); }
		
		return result;
	}
	
}
