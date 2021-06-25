package kr.co.sist.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import kr.co.sist.domain.MyCommentDomain;
import kr.co.sist.vo.CommentPageVO;
import kr.co.sist.vo.CommentVO;
import kr.co.sist.vo.ModifyCommentVO;

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
	
	public int selectCommentCnt(String id) {
		int totalCnt = 0;
		
		SqlSession ss = MyBatisHandler.getInstance().getHandler();
		
		totalCnt = ss.selectOne("kr.co.sist.commentMapper.selectCommentCnt", id);
		
		if (ss != null) {
			ss.close();
		}
		
		return totalCnt;
	}
	
	public List<MyCommentDomain> selectComment(CommentPageVO cpVO) {
		
		List<MyCommentDomain> list = null;
		
		SqlSession ss = MyBatisHandler.getInstance().getHandler();
		
		list = ss.selectList("kr.co.sist.commentMapper.selectComment", cpVO);
		
		if (ss != null) { ss.close(); }
		
		return list;
	}
	
	public int deleteComment(int r_num) {
		int result = 0;
		
		SqlSession ss = MyBatisHandler.getInstance().getHandler();
		
		result = ss.delete("kr.co.sist.commentMapper.deleteComment", r_num);
		
		if (result == 1) {
			ss.commit();
		}
		
		if (ss != null) {
			ss.close();
		}
		
		return result;
	}
	
	public int updateComment(ModifyCommentVO mcVO) {
		int result = 0;
		SqlSession ss = MyBatisHandler.getInstance().getHandler();
		
		result = ss.update("kr.co.sist.commentMapper.updateComment", mcVO);
		
		if (result == 1) {
			ss.commit();
		}
		
		if (ss != null) {
			ss.close();
		}
		return result;
	}
}
