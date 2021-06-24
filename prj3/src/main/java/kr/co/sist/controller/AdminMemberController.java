package kr.co.sist.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import kr.co.sist.domain.PageDomain;
import kr.co.sist.service.AdminMemberService;
import kr.co.sist.service.PaginationService;
import kr.co.sist.vo.PageVO;

import static org.springframework.web.bind.annotation.RequestMethod.GET;
import static org.springframework.web.bind.annotation.RequestMethod.POST;

@Controller
public class AdminMemberController {

	@RequestMapping(value = "/admin/10_memberList.do", method= {GET, POST})
	public String adminMemberForm(@RequestParam(defaultValue="1")int curPage, Model model) {
		
		AdminMemberService ams = new AdminMemberService();
		int totalCnt = ams.searchMemberCnt();
		
		PaginationService ps = new PaginationService(curPage, totalCnt);
		PageDomain pd = new PageDomain(curPage, ps.getCntInPage(), ps.getStartInpage(),
				ps.getEndInpage(), ps.getStartPageNum(), ps.getEndPageNum(), ps.isPrevBtn(), ps.isNextBtn());
		
		PageVO pVO = new PageVO();
		pVO.setStartNum(ps.getStartInpage());
		pVO.setEndNum(ps.getEndInpage());
		
		model.addAttribute("amdList", ams.searchAdminMember(pVO));
		model.addAttribute("pages", pd);
		
		
		return "admin/10_memberList";
	}
	
	@RequestMapping(value="/admin/11_memberManage.do", method= {GET, POST})
	public String AdminMemberDetail(String m_id, Model model) {
		
		AdminMemberService ams = new AdminMemberService();
		
		model.addAttribute("amdd", ams.searchAdminMemberDetail1(m_id));
		model.addAttribute("amdd2List", ams.searchAdminMemberDetail2(m_id));
		
		return "admin/11_memberManage";
	}
	
	@RequestMapping(value="/admin/11_memberManage_remove.do", method= {GET, POST})
	public String removeAdminMemberProcess(String m_id) {
		
		AdminMemberService ams = new AdminMemberService();
		ams.removeAdminMember(m_id);
		
		return "forward:10_memberList.do";
	}
}
