package kr.co.sist.service;

import java.util.List;

import kr.co.sist.dao.TourDAO;
import kr.co.sist.domain.BookingDomain;
import kr.co.sist.domain.TourInfoDomain;
import kr.co.sist.vo.BookingVO;

public class TourService {  
	
	public TourInfoDomain searchTourInfo(int tr_num) {
		
		TourDAO tDAO = TourDAO.getInstance();
		
		TourInfoDomain tod = tDAO.searchTourInfo(tr_num);
				
		return tod; 
	}
	
	
	  public void addBooking(BookingVO bVO) {
		  TourDAO tDAO = new TourDAO();
		  tDAO.insertBooking(bVO);
		  
	  }
	 
	 public int searchCurBNum() {
		 
		 TourDAO tDAO = new TourDAO();
		 return tDAO.selectCurBNum();
		 
	 }//searchCurBNum
	
	 public List<BookingDomain> searchTourBookingList(){ 
		 
		 TourDAO tDAO = TourDAO.getInstance(); 
		 List<BookingDomain> bdm =tDAO.selectTourBookingList();
		 return bdm;
		 
	 }//searchTourBookingList
	
	 
	 public int removeTourBooking(int b_num) { 
		 int rowCnt = 0 ; 
		 TourDAO tDAO = new TourDAO();
		 rowCnt = tDAO.deleteTourBooking(b_num);
		 return rowCnt;
	 }//removeTourBooking
}
