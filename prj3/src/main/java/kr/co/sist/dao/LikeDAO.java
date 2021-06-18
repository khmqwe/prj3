package kr.co.sist.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import kr.co.sist.domain.LikeCountDomain;


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
	
	public List<LikeCountDomain> selectLikeCount() {
		
		SqlSession ss = MyBatisHandler.getInstance().getHandler();
		
		List<LikeCountDomain> list = ss.selectList("kr.co.sist.likeMapper.selectLike");
		
		if(ss != null) {ss.close();}
		
		return list;
	}

}
