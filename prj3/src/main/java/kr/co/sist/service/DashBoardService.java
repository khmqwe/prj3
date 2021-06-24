package kr.co.sist.service;

import kr.co.sist.dao.DashBoardDAO;

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
	
	
	
}
