package kr.co.sist.service;

import kr.co.sist.dao.CommentDAO;
import kr.co.sist.vo.CommentVO;

public class CommentService {
	
	public int addComment(CommentVO cVO) {
		
		CommentDAO cDAO = CommentDAO.getInstance();
		
		int result = cDAO.insertComment(cVO);
		
		return result;
	}
}
