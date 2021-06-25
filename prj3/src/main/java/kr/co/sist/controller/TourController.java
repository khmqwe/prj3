package kr.co.sist.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.co.sist.domain.BookingDomain;
import kr.co.sist.service.TourService;
import kr.co.sist.vo.BookingVO;

@Controller
public class TourController {  

	@RequestMapping(value = "/user/tour_info.do", method =RequestMethod.GET)
	public String tourInfoProcess(@RequestParam(defaultValue = "22")int to_num, Model model) {
		
		 TourService ts = new TourService();
		
		 model.addAttribute("todList1",ts.searchTourInfo(to_num));
		
		return "user/tour_info";
	}
	
	 
	  @RequestMapping(value = "/user/tour_success.do", method =RequestMethod.POST)
	  @ResponseBody
	  public String tourBookingProcess(HttpSession hs, BookingVO bVO, Model model) {
	  
		  String id=(String) hs.getAttribute("MID");
		  String resultMsg = "fail"; 
		  if(id !=null) {
			  TourService ts = new TourService();
			  
			  
			  bVO.setM_id(id);
			  System.out.println("---------bVO is--------------"+ bVO);//
			  ts.addBooking(bVO);
			  resultMsg = "success";
		  }
		  
		  return resultMsg;
	  }
	  
	
	  @RequestMapping(value = "/user/mypage_tour.do", method =RequestMethod.GET)
	  public String tourBookingListForm(HttpSession hs, Model model) {
		  List<BookingDomain> bookingList = new ArrayList<>();
		  
		  TourService ts = new TourService();
		  
		  String id=(String) hs.getAttribute("MID"); //아이디가져오기
		  model.addAttribute("m_id",id);
		  System.out.println( "----예약폼 id is------------>"+id);//실행해보세요
			if(id==null) {
				return "user/login"; 
			}
	  
		  bookingList = ts.searchTourBookingList(id);
		  
		  model.addAttribute("bookingList", bookingList);
		  return "user/mypage_tour"; 
	  }
	  
	  @RequestMapping(value = "/user/mypage_tour_cancel.do", method =RequestMethod.POST)
	  @ResponseBody
	  public String tourBookingCancelProcess(int tr_num, Model model) {
	  
		  TourService ts = new TourService();
		  ts.removeTourBooking(tr_num);
		  
		  return "success"; 
	  }
	 
	 
}
