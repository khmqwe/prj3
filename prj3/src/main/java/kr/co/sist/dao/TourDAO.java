package kr.co.sist.dao;   

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.List;

import org.apache.ibatis.session.SqlSession;

import kr.co.sist.domain.BookingDomain;
import kr.co.sist.domain.TourInfoDomain;
import kr.co.sist.vo.BookingVO;

public class TourDAO {
	
	private static TourDAO tDAO;
	
	public TourDAO() {     
		
	}
	
	public static TourDAO getInstance() {
		if(tDAO==null) {
			tDAO = new TourDAO();
		}
		return tDAO;
	}
	
	public TourInfoDomain searchTourInfo(int tr_num) {
		SqlSession ss = MyBatisHandler.getInstance().getHandler();
		TourInfoDomain tod = ss.selectOne("kr.co.sist.tourMapper.selectTourInfo",tr_num);
		if(ss != null) {ss.close();} 
		return tod; 
	}//searchTourInfo
	
	  public void insertBooking(BookingVO bVO) {
		
		  SqlSession ss = MyBatisHandler.getInstance().getHandler();
		  int rowCnt = ss.insert("kr.co.sist.tourMapper.insertBooking", bVO);
		  
		  bVO.setB_num(bVO.getB_num());
		  
		  //commit
	      if(rowCnt == 1) {
	         ss.commit();
	         Calendar cal = Calendar.getInstance(); 
	    	 SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMdd");
	    	 
	    	 String rNum = sdf.format(cal.getTime());
	    	 String idx = Integer.toString(bVO.getB_num());
	    	 if(idx.length() == 1) idx = "000" + idx;
	    	 if(idx.length() == 2) idx = "00" + idx;
	    	 if(idx.length() == 3) idx = "0" + idx;
	    	 
	    	 bVO.setR_num(rNum+idx);
	    	 int rowCnt2 = ss.update("kr.co.sist.tourMapper.updateRNum", bVO);
	    	 
	    	 if(rowCnt2 > 0) {
	    		 ss.commit();
	    	 }
	      }
		  
		  if(ss!=null) {ss.close();}//end if 
		  
	  }//insertBooking
	  
	  
	 public int selectCurBNum() {
		
		 int cnt=0;
			//1. MyBatis Handler 얻기
			SqlSession ss = MyBatisHandler.getInstance().getHandler();
			//2. id에 해당하는 쿼리를 찾아서 실행한 후 결과 얻기.
			cnt = ss.selectOne("kr.co.sist.tourMapper.selectCurBNum");
			
			if(ss != null) {ss.close();}//end if
			
			return cnt;
	 }//selectCurBNum
	 
	  public List<BookingDomain> selectTourBookingList(String m_id){ 
		  SqlSession ss = MyBatisHandler.getInstance().getHandler();
	 
		  List<BookingDomain> bdList = null;
	
		  bdList = ss.selectList("kr.co.sist.tourMapper.selectBooking",m_id); 
		  
		 if (ss != null) {ss.close();}
		 
		 return bdList;
	 
	 }//selectTourBookingList
	 
	 public int deleteTourBooking(int b_num) { 
		 
		 int rowCnt = 0;
	
		 //MyBatis Handler 얻기 
		 SqlSession ss =MyBatisHandler.getInstance().getHandler();
		
		//delete작업
		 rowCnt = ss.update("kr.co.sist.tourMapper.deleteTourBooking", b_num);
		 
		 if(rowCnt == 1) { ss.commit(); }//end if
		 
		 if( ss != null ) {
			 ss.close(); }//end if
		 return rowCnt; 
	 }//deleteTourBooking

	 
	}//class
