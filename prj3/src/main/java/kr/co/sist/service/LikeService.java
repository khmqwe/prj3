package kr.co.sist.service;

import kr.co.sist.dao.LikeDAO;
import kr.co.sist.vo.LikeVO;

public class LikeService {
	
	public String searchLike(LikeVO lVO) {
		LikeDAO lDAO = LikeDAO.getInstance();
		String id = lDAO.selectLike(lVO);
		
		return id;
	}
	
	public void addLike(LikeVO lVO) {
		LikeDAO lDAO = LikeDAO.getInstance();
		lDAO.insertLike(lVO);
	}
	
	public void removeLike(LikeVO lVO) {
		LikeDAO lDAO = LikeDAO.getInstance();
		lDAO.deleteLike(lVO);
	}
}
