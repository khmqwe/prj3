package kr.co.sist.service;

import java.util.List;

import kr.co.sist.dao.AdminCommentDAO;
import kr.co.sist.domain.InfoCommentDomain;
import kr.co.sist.domain.InfoReviewTravelDomain;
import kr.co.sist.vo.AdminCommentPageVO;

public class AdminCommentService {

	public int searchCommentCnt(int tr_num) {
		int cnt = 0;
		AdminCommentDAO acDAO = AdminCommentDAO.getInstance();
		cnt = acDAO.selectCommentCnt(tr_num);
		
		return cnt;
	}
	
	
	public List<InfoCommentDomain> searchComment(AdminCommentPageVO acpVO) {
		List<InfoCommentDomain> list = null;
		
		AdminCommentDAO acDAO = AdminCommentDAO.getInstance();
		list = acDAO.selectComment(acpVO);
		
		return list;
	}
	
	public InfoReviewTravelDomain searchReviewTravel(int tr_num) {
		InfoReviewTravelDomain irtd = null;
		AdminCommentDAO acDAO = AdminCommentDAO.getInstance();
		irtd = acDAO.selectReviewTravel(tr_num);
		
		return irtd;
	}
	
	public int removeComment(int r_num) {
		AdminCommentDAO acDAO = AdminCommentDAO.getInstance();
		int result = acDAO.deleteComment(r_num);
		
		return result;
	}
}
