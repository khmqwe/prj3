package kr.co.sist.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import kr.co.sist.domain.PageDomain;
import kr.co.sist.service.CommentService;
import kr.co.sist.service.PaginationService;
import kr.co.sist.vo.CommentPageVO;
import kr.co.sist.vo.CommentVO;
import kr.co.sist.vo.ModifyCommentVO;

@Controller
public class CommentController {
	
	@RequestMapping(value="/user/travel_info_add.do", method= RequestMethod.POST)
	public String addComment(CommentVO cVO) {
		
		CommentService cs = new CommentService();
		
		cs.addComment(cVO);
		
		return "forward:travel_info.do";
	}
	
	@RequestMapping(value="/user/mypage_reply.do", method= {RequestMethod.GET, RequestMethod.POST})
	public String myCommentForm(HttpSession session, @RequestParam(defaultValue="1")int curPage,  Model model) {
		
		CommentService cs = new CommentService();
		
		String id = (String)session.getAttribute("MID");
		int totalCnt = cs.searchCommentCnt(id);
		
		PaginationService ps = new PaginationService(curPage, totalCnt);

		PageDomain pd = new PageDomain(curPage, ps.getCntInPage(), ps.getStartInpage(),
				ps.getEndInpage(), ps.getStartPageNum(), ps.getEndPageNum(), ps.isPrevBtn(), ps.isNextBtn());
		
		CommentPageVO cpVO = new CommentPageVO(id, curPage, totalCnt);
		
		model.addAttribute("commentList", cs.searchComment(cpVO));
		model.addAttribute("pages", pd);
		
		return "user/mypage_reply";
	}
	
	@RequestMapping(value="user/comment_remove.do", method= {RequestMethod.GET, RequestMethod.POST})
	public String removeCommentProcess(int r_num) {
		
		CommentService cs = new CommentService();
		cs.removeComment(r_num);
		
		return "forward:mypage_reply.do";
	}
	
	@RequestMapping(value="user/comment_modify.do", method=RequestMethod.POST)
	public String modifyCommentProcess(ModifyCommentVO mcVO) {
		
		CommentService cs = new CommentService();
		cs.modifyComment(mcVO);
		
		return "forward:mypage_reply.do";
	}
}
