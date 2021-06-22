package kr.co.sist.service;

import java.util.List;

import kr.co.sist.dao.MainDAO;
import kr.co.sist.domain.SearchTravelDomain;
import kr.co.sist.domain.TravelCommentDomain;
import kr.co.sist.domain.TravelInfoDomain;
import kr.co.sist.domain.TravelThumbDomain;
import kr.co.sist.domain.TravelTourDomain;

public class MainService {

	public List<TravelThumbDomain> searchTravelThumbDomain(int num) {
		
		MainDAO mDAO = MainDAO.getInstance();
		
		List<TravelThumbDomain> ttd = mDAO.selectTravelThumbDomain(num);
		
		return ttd;
	}
	
	public TravelInfoDomain searchTravelInfo(int tr_num) {
		
		MainDAO mDAO = MainDAO.getInstance();
		
		TravelInfoDomain tid = mDAO.selectTravelInfo(tr_num);
		
		return tid;
	}
	
	public List<TravelTourDomain> searchTravelTour(int tr_num) {
		
		MainDAO mDAO = MainDAO.getInstance();
		
		List<TravelTourDomain> ttd = mDAO.selectTravelTour(tr_num);
		
		return ttd;
	}
	
	public List<TravelCommentDomain> searchTravelComment(int tr_num) {
		MainDAO mDAO = MainDAO.getInstance();
		
		List<TravelCommentDomain> tcdList = mDAO.selectTravelComment(tr_num);
		
		return tcdList;
	}
	
	public List<SearchTravelDomain> searchSearchedPlace(int num, String search) {
		MainDAO mDAO = MainDAO.getInstance();
		
		List<SearchTravelDomain> stdList = mDAO.selectSearchedPlace(num, search);
		
		return stdList;
	}
	
}
