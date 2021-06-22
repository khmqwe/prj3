package kr.co.sist.dao;

import org.apache.ibatis.session.SqlSession;

import kr.co.sist.vo.LikeVO;


public class LikeDAO {

	private static LikeDAO lDAO;
	
	private LikeDAO() {
		
	};
	
	public static LikeDAO getInstance() {
		if (lDAO == null) {
			lDAO = new LikeDAO();
		}
		
		return lDAO;
	}
	
	public String selectLike(String m_id) {
		SqlSession ss = MyBatisHandler.getInstance().getHandler();
		String id = ss.selectOne("kr.co.sist.likeMapper.selectLike", m_id);
		
		if (ss != null) {ss.close();}
		
		return id;
	}
	
	public void insertLike(LikeVO lVO) {
		SqlSession ss = MyBatisHandler.getInstance().getHandler();
		
		int insertResult = ss.insert("kr.co.sist.likeMapper.insertLike", lVO);
		int updateResult = 0;
		
		if (insertResult != 0) {
			updateResult = ss.update("kr.co.sist.likeMapper.updateLikePlus", lVO.getTr_num());
		}
		
		if (updateResult != 0) {
			ss.commit();
		}
		
		if (ss != null) {
			ss.close();
		}
	}
	
	public void deleteLike(LikeVO lVO) {
		SqlSession ss = MyBatisHandler.getInstance().getHandler();
		
		int insertResult = ss.delete("kr.co.sist.likeMapper.deleteLike", lVO);
		int updateResult = 0;
		
		if (insertResult != 0) {
			updateResult = ss.update("kr.co.sist.likeMapper.updateLikeMinus", lVO.getTr_num());
		}
		
		if (updateResult != 0) {
			ss.commit();
		}
		
		if (ss != null) {
			ss.close();
		}
	}
}
