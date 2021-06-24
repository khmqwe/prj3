package kr.co.sist.service;

import java.util.List;

import kr.co.sist.dao.DashBoardDAO;
import kr.co.sist.domain.PopularLikeDomain;
import kr.co.sist.domain.PopularReviewDomain;

public class DashBoardService {
	private static  DashBoardService dbs;
	
	private DashBoardService() {
	}
	
	public static DashBoardService getInstance() {
		if (dbs==null) {
			dbs=new DashBoardService();
		}
		return dbs;
	}
	
	public int searchTotalMember() {
		DashBoardDAO dd=DashBoardDAO.getInstance();
		return dd.selectTotalMember();
	}//searchTotalMember
	
	public int searchMonthComment() {
		DashBoardDAO dd=DashBoardDAO.getInstance();
		return dd.selectMonthComment();
	}//searchMonthComment
	
	public int searchMonthBookingTour() {
		DashBoardDAO dd=DashBoardDAO.getInstance();
		return dd.selectMonthBookingTour();
	}//searchMonthBookingTour
	
	public int searchMonthPrice() {
		DashBoardDAO dd=DashBoardDAO.getInstance();
		return dd.selectMonthPrice();
	}//searchMonthBookingTour
	
	public List<PopularLikeDomain> searchPopularLike(){
		DashBoardDAO dd=DashBoardDAO.getInstance();
		return dd.selectPopularLike();
	}//searchPopularLike
	
	public List<PopularReviewDomain> searchPopularReview(){
		DashBoardDAO dd=DashBoardDAO.getInstance();
		return dd.selectPopularReview();
	}//searchPopularReview
	
	
}
