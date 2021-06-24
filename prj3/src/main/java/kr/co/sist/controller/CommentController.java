package kr.co.sist.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kr.co.sist.service.CommentService;
import kr.co.sist.vo.CommentVO;

@Controller
public class CommentController {
	
	@RequestMapping(value="/user/travel_info_add.do", method= RequestMethod.POST)
	public String addComment(CommentVO cVO) {
		
		CommentService cs = new CommentService();
		
		cs.addComment(cVO);
		
		return "forward:travel_info.do";
	}
	
	@RequestMapping(value="/user/mypage_reply.do", method= RequestMethod.GET)
	public String myCommentForm(HttpSession session, Model model) {
		
		
		return "user/mypage_reply";
	}
}
