package kr.co.sist.dao;

import org.apache.ibatis.session.SqlSession;

import kr.co.sist.vo.CommentVO;

public class CommentDAO {

	private static CommentDAO cDAO;
	
	private CommentDAO() {
		
	}
	
	public static CommentDAO getInstance() {
		if (cDAO == null) {
			cDAO = new CommentDAO();
		}
		
		return cDAO;
	}
	
	public int insertComment(CommentVO cVO) {
		
		SqlSession ss = MyBatisHandler.getInstance().getHandler();
		
		int result = ss.insert("kr.co.sist.commentMapper.insertComment", cVO);
		
		if (result == 1) {
			ss.commit();
		}
		
		if (ss != null) {
			ss.close();
		}
		
		return result;
	}
}
