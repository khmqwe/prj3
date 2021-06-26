package kr.co.sist.controller;

import static org.springframework.web.bind.annotation.RequestMethod.GET;
import static org.springframework.web.bind.annotation.RequestMethod.POST;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;

import kr.co.sist.service.MemberService;
import kr.co.sist.vo.LoginVO;
import kr.co.sist.vo.MemberVO;
import kr.co.sist.vo.MyInfoVO;

@Controller
@SessionAttributes({"MID"})
public class MemberController {
	
	@RequestMapping(value = "/user/loginForm.do")
	public String loginForm() {
		return "user/login";
	}

	@RequestMapping(value = "/user/loginProcess.do", method = POST )
	public String loginProcess(LoginVO lVO, Model model) {
		MemberService ms = new MemberService();
		String result =ms.loginCheck(lVO);
		if(result != null) {
			model.addAttribute("MID",result);//예약을 클릭하는 jsp페이지
			return "forward:../index.do";
		}else {
			return "redirect:http://localhost/prj3/user/loginForm.do";
		}	
	}
	
	@RequestMapping(value="/user/logOutProcess.do", method= GET )
	public String logOutProcess(SessionStatus ss) {	
		//세션 사용이 완료되었다면(로그아웃 된 상황)
		ss.setComplete();
		return "redirect:http://localhost/prj3/index.html";
	}//useSession


	@RequestMapping(value = "/user/joinForm.do")
	public String joinForm() {
		return "user/signUp";
	}

	@RequestMapping(value = "/user/idDupForm.do")
	public String idDupForm() {
		return "user/signUp_idcheck";
	}
	
	
	 @RequestMapping(value = "/user/modifyPassForm.do", method = { POST, GET  } )
	  public String modify_pass(MemberVO mVO, Model mode) { 
		 
		 return "user/mypage_modify_pass"; 
	  }
	 

	@RequestMapping(value = "/user/idDupProcess.do", method = { POST, GET  } )
	public String idDupProcess(MemberVO mVO, Model model) {
		MemberService ms = new MemberService();
		String var = ms.checkIdDup(mVO);
		String result;
		model.addAttribute("ID", (mVO.getMID()));
		if (var == null) {
			result = "사용가능한 아이디 입니다.";
		} else {
			result = "사용할수 없는 아이디 입니다.";
		}
		model.addAttribute("result", result);
		return "user/signUp_idcheck";
	}

	
	@RequestMapping(value = "/user/joinProcess.do", method = POST)
	public String joinProcess(MemberVO mVO) {
		MemberService ms = new MemberService();
		String result = ms.checkIdDup(mVO);
		if (result != null) {
			return "user/signUp";
		}
		ms.addMember(mVO);
		return "user/signUp_success";
	}

	@RequestMapping(value = "/user/checkPassForm.do")
	public String checkPassForm() {
		return "user/mypage_passCheck";
	}
	
	@RequestMapping(value = "/user/checkPassProcess.do", method = POST)
	public String checkPassProcess(HttpSession session,LoginVO lVO) {
		MemberService ms = new MemberService();
		
		lVO.setMID((String) session.getAttribute("MID"));
		String result= ms.passCheck(lVO);
		if(result.equals("null")) {
			return "user/mypage_passCheck";
		}else{
			return "user/myPage_modify_info";
		}
	}
	
	@RequestMapping(value ="/user/modMyInfoForm.do")
	public String modMyInfoForm(HttpSession session,String value) {
		System.out.println("MID="+session.getAttribute("MID"));
		MemberService ms = new MemberService();
		MyInfoVO miVO = new MyInfoVO();
		int result=ms.modMyInfo(miVO);
		if(result==0) {
			return "user/login";
		}else{
			return "user/myPage_modify_info";
		}
	}
}
