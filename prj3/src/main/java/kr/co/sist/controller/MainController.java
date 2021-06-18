package kr.co.sist.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kr.co.sist.service.MainService;
import kr.co.sist.vo.SelectProcessVO;

@Controller
public class MainController {
	
	@RequestMapping(value="/index.do", method=RequestMethod.GET)
	public String main(Model model) {
		
		MainService ms = new MainService();
		
		model.addAttribute("ttdList1", ms.searchTravelThumbDomain(1));
		model.addAttribute("ttdList2", ms.searchTravelThumbDomain(2));
		
		return "user/main";
	}
	
	@RequestMapping(value="/user/travel_info.do", method=RequestMethod.GET)
	public String travelInfoForm(int tr_num, Model model) {
		
		MainService ms = new MainService();
		
		model.addAttribute("travelInfo", ms.searchTravelInfo(tr_num));
		model.addAttribute("travelTour", ms.searchTravelTour(tr_num));
		model.addAttribute("travelComment", ms.searchTravelComment(tr_num));
		
		return "user/travel_info";
	}
	
	@RequestMapping(value="/user/travel_list.do", method=RequestMethod.GET)
	public String searchProcess(SelectProcessVO spVO, Model model) {
		
		MainService ms = new MainService();
		String select = spVO.getSelect();
		
		if (select.equals("none")) {
			model.addAttribute("searchList", ms.searchSearchedPlace(1, spVO.getName()));
		} else if (select.equals("travel_area")) {
			model.addAttribute("searchList", ms.searchSearchedPlace(2, spVO.getName()));
		} else if (select.equals("travel_name")) {
			model.addAttribute("searchList", ms.searchSearchedPlace(3, spVO.getName()));
		}
		
		return "user/travel_list";
	}
}
