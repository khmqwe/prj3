package kr.co.sist.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import kr.co.sist.domain.AdminInfoTourDomain;
import kr.co.sist.domain.PageDomain;
import kr.co.sist.service.AdminTourService;
import kr.co.sist.service.PaginationService;
import kr.co.sist.vo.AdminTourPageVO;
import kr.co.sist.vo.PageVO;

import static org.springframework.web.bind.annotation.RequestMethod.GET;
import static org.springframework.web.bind.annotation.RequestMethod.POST;

@Controller
public class AdminTourController {
	
	@RequestMapping(value="/admin/07_tourManage.do", method = {GET, POST})
	public String adminTourList(@RequestParam(defaultValue="1")int curPage, int tr_num, Model model) {
		
		AdminTourService ats = new AdminTourService();
		
		int totalCnt = ats.searchTourCnt(tr_num);
		
		PaginationService ps = new PaginationService(curPage, totalCnt);
		PageDomain pd = new PageDomain(curPage, ps.getCntInPage(), ps.getStartInpage(),
				ps.getEndInpage(), ps.getStartPageNum(), ps.getEndPageNum(), ps.isPrevBtn(), ps.isNextBtn());
		
		AdminTourPageVO atpVO = new AdminTourPageVO();
		atpVO.setStartNum(ps.getStartInpage());
		atpVO.setEndNum(ps.getEndInpage());
		atpVO.setTr_num(tr_num);
		
		model.addAttribute("atdList", ats.searchTourMainPage(atpVO));
		model.addAttribute("pages", pd);
		
		return "admin/07_tourManage";
	}
	
	@RequestMapping(value="/admin/08_tourRevise.do", method = {GET, POST})
	public String modifyTourForm(int to_num, Model model) {
		
		AdminTourService ats = new AdminTourService();
		model.addAttribute("aitd", ats.searchTourDetail(to_num));
		
		return "admin/08_tourRevise";
	}
}
