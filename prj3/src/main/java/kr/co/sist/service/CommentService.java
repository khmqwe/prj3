package kr.co.sist.service;

import java.util.List;

import kr.co.sist.dao.CommentDAO;
import kr.co.sist.domain.MyCommentDomain;
import kr.co.sist.vo.CommentPageVO;
import kr.co.sist.vo.CommentVO;
import kr.co.sist.vo.ModifyCommentVO;

public class CommentService {
	
	public int addComment(CommentVO cVO) {
		
		CommentDAO cDAO = CommentDAO.getInstance();
		
		int result = cDAO.insertComment(cVO);
		
		return result;
	}
	
	public int searchCommentCnt(String id) {
		
		int totalCnt = 0;
		
		CommentDAO cDAO = CommentDAO.getInstance();
		totalCnt = cDAO.selectCommentCnt(id);
		
		return totalCnt;
	}
	
	public List<MyCommentDomain> searchComment(CommentPageVO cpVO) {
		
		List<MyCommentDomain> list = null;
		
		CommentDAO cDAO = CommentDAO.getInstance();
		list = cDAO.selectComment(cpVO);
		
		return list;
	}
	
	public int removeComment(int r_num) {
		int result = 0;
		
		CommentDAO cDAO = CommentDAO.getInstance();
		result = cDAO.deleteComment(r_num);
		
		return result;
	}
	
	public int modifyComment(ModifyCommentVO mcVO) {
		int result = 0;
		
		CommentDAO cDAO = CommentDAO.getInstance();
		result = cDAO.updateComment(mcVO);
		
		return result;
	}
}
