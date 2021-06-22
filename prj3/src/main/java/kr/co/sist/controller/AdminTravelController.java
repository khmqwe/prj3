package kr.co.sist.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import kr.co.sist.domain.MainTravelDomain;
import kr.co.sist.domain.PageDomain;
import kr.co.sist.service.AdminTravelService;
import kr.co.sist.service.PaginationService;
import kr.co.sist.vo.TravelPageVO;

@Controller
public class AdminTravelController {
	
	@RequestMapping(value="/admin/03_travelManage.do", method=RequestMethod.GET)
	public String adminTravelList(@RequestParam(defaultValue="1")int curPage, Model model) {
		
		AdminTravelService ats = new AdminTravelService();
		int totalCnt = ats.searchTotalCnt();
		
		PaginationService ps = new PaginationService(curPage, totalCnt);
		PageDomain pd = new PageDomain(curPage, ps.getCntInPage(), ps.getStartInpage(),
				ps.getEndInpage(), ps.getStartPageNum(), ps.getEndPageNum(), ps.isPrevBtn(), ps.isNextBtn());
		
		TravelPageVO tpVO = new TravelPageVO();
		tpVO.setStartNum(ps.getStartInpage());
		tpVO.setEndNum(ps.getEndInpage());
		
		List<MainTravelDomain> mtdList = ats.searchTravelPage(tpVO);
		
		model.addAttribute("pages", pd);
		model.addAttribute("mtdList", mtdList);
		
		return "admin/03_travelManage";
	}
	
	@RequestMapping(value="/admin/05_newWrite.do", method=RequestMethod.GET)
	public String addTravelForm(Model model) {
		
		
		
		
		return "admin/05_newWrite";
	}
	
	@RequestMapping(value="/admin/04_contentsRevise.do", method=RequestMethod.GET)
	public String modifyTravelForm(Model model) {
		
		
		
		return "admin/04_contentsRevise";
	}
	
}
