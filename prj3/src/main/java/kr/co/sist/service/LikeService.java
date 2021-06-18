package kr.co.sist.service;

import java.util.List;

import kr.co.sist.dao.LikeDAO;
import kr.co.sist.domain.LikeCountDomain;

public class LikeService {
	public List<LikeCountDomain> searchLikeCount() {
		
		LikeDAO lDAO = LikeDAO.getInstance();
		
		List<LikeCountDomain> list = lDAO.selectLikeCount();
		
		return list;
	}
}
