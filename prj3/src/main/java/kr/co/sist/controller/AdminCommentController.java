package kr.co.sist.controller;

import static org.springframework.web.bind.annotation.RequestMethod.GET;
import static org.springframework.web.bind.annotation.RequestMethod.POST;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import kr.co.sist.domain.PageDomain;
import kr.co.sist.service.AdminCommentService;
import kr.co.sist.service.PaginationService;
import kr.co.sist.vo.AdminCommentPageVO;

@Controller
public class AdminCommentController {

	@RequestMapping(value = "/admin/06_reviewManage.do", method= {GET, POST})
	public String adminCommentList(@RequestParam(defaultValue = "22")int tr_num, @RequestParam(defaultValue = "1")int curPage, Model model) {
		
		AdminCommentService acs = new AdminCommentService();
		int totalCnt = acs.searchCommentCnt(tr_num);
		
		PaginationService ps = new PaginationService(curPage, totalCnt);
		PageDomain pd = new PageDomain(curPage, ps.getCntInPage(), ps.getStartInpage(),
				ps.getEndInpage(), ps.getStartPageNum(), ps.getEndPageNum(), ps.isPrevBtn(), ps.isNextBtn());
		
		AdminCommentPageVO acpVO = new AdminCommentPageVO();
		acpVO.setStartNum(ps.getStartInpage());
		acpVO.setEndNum(ps.getEndInpage());
		acpVO.setTr_num(tr_num);
		
		model.addAttribute("pages", pd);
		model.addAttribute("icdList", acs.searchComment(acpVO));
		model.addAttribute("irtd", acs.searchReviewTravel(tr_num));
		return "admin/06_reviewManage";
	}
	
	@RequestMapping(value = "/admin/06_reviewManage_remove.do", method= {GET,POST})
	public String reviewRemove(@RequestParam(defaultValue = "0")int r_num) {
		
		AdminCommentService acs = new AdminCommentService();
		
		acs.removeComment(r_num);
		
		return "forward:06_reviewManage.do";
	}
}
