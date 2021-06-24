package kr.co.sist.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kr.co.sist.service.DashBoardService;
@Controller
public class DashBoardController {

	// AdminLoginController에서 전부 받음 
	
//	@RequestMapping(value = "/admin/adminMain.do",method = RequestMethod.GET)
//	public String dashBoardForm(Model model) {
//		DashBoardService ds=DashBoardService.getInstance();
//		model.addAttribute("member",ds.searchTotalMember());
//		model.addAttribute("comment",ds.searchMonthComment());
//		model.addAttribute("booking",ds.searchMonthBookingTour());
//		
//		return"admin/02_adminMain";
//	}//dashBoardForm
	
	
}
