package kr.co.sist.controller;

import javax.servlet.http.HttpSession;

import org.json.simple.JSONObject;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;

import kr.co.sist.service.LikeService;
import kr.co.sist.vo.LikeVO;

@Controller
public class LikeController {
	
	@RequestMapping(value="/user/travel_like.do", method= RequestMethod.GET,
			produces = "application/json; charset=UTF-8")
	@ResponseBody
	public String checkLike(HttpSession session, int tr_num) {
		
		LikeService ls = new LikeService(); 
		String id = ls.searchLike((String)session.getAttribute("mid"));
		 
		LikeVO lVO = new LikeVO(tr_num, (String)session.getAttribute("mid"));
		
		JSONObject json = new JSONObject();
		
		if (id == null) {
			ls.addLike(lVO); 
			//System.out.println("추가!");
			json.put("like", "yes");
		} else {
			ls.removeLike(lVO);
			//System.out.println("삭제!");
			json.put("like", "no");
		}
		
		return json.toJSONString();
	}
	
}
