package kr.co.sist.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kr.co.sist.domain.PageDomain;
import kr.co.sist.domain.SearchTravelDomain;
import kr.co.sist.service.MainService;
import kr.co.sist.service.PaginationService;
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
		
		List<SearchTravelDomain> stdList = null;
		
		if (select.equals("none")) {
			stdList = ms.searchSearchedPlace(1, spVO.getName());
			//model.addAttribute("searchList", stdList);
		} else if (select.equals("travel_area")) {
			stdList = ms.searchSearchedPlace(2, spVO.getName());
			//model.addAttribute("searchList", stdList);
		} else if (select.equals("travel_name")) {
			stdList = ms.searchSearchedPlace(3, spVO.getName());
			//model.addAttribute("searchList", stdList);
		} else if (select.equals("areaNumber")) {
			stdList = ms.searchSearchedPlace(4, spVO.getName());
			//model.addAttribute("searchList", stdList);
		}
		
		PaginationService ps = new PaginationService(spVO.getCurPage(), stdList);
		PageDomain pd = new PageDomain(spVO.getCurPage(), ps.getCntInPage(), ps.getStartInpage(),
				ps.getEndInpage(), ps.getStartPageNum(), ps.getEndPageNum(), ps.isPrevBtn(), ps.isNextBtn());
		
		List<SearchTravelDomain> pageList = new ArrayList<SearchTravelDomain>();
		
		for (int i = ps.getStartInpage() - 1; i < ps.getEndInpage(); i++) {
			pageList.add(stdList.get(i));
		}
		
		model.addAttribute("pageList", pageList);
		model.addAttribute("pages", pd);
		model.addAttribute("spVO", spVO);
		
		return "user/travel_list";
	}
	
	//지역버튼 누를 때 이땐 지역번호 받아서 뿌리면 될듯.
}
