package kr.co.sist.controller;


import java.security.NoSuchAlgorithmException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.catalina.User;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kr.co.sist.dao.AdminLoginDAO;
import kr.co.sist.service.AdminLoginService;
import kr.co.sist.service.DashBoardService;
import kr.co.sist.util.cipher.DataEncrypt;
import kr.co.sist.vo.adminLoginVO;

import org.springframework.ui.Model;


@Controller
public class AdminLoginController {
	
	@RequestMapping(value = "/admin/admin_login.do" )
	public String adminLoginForm() {
		
		return "admin/01_adminLogin";
	}//adminLoginForm
	

	/**
	 * 로그인
	 */
	@RequestMapping(value = "/admin/adminMain.do", method = {RequestMethod.POST,RequestMethod.GET})
	public String adminLoginProcess(adminLoginVO alVO,Model model,HttpSession session)  { 
		
		AdminLoginService als=AdminLoginService.getInstance();
		DashBoardService ds=DashBoardService.getInstance();
		
		String pass = "";
		try {
			pass = DataEncrypt.messageDigest("MD5", alVO.getAd_pass());
			alVO.setAd_pass(pass);
			
			session.setMaxInactiveInterval(600);
			session.setAttribute("name",als.adminLogin(alVO));//관리자 이름 
			session.setAttribute("id",alVO.getAd_id()); //관리자 아이디 
		} catch (NoSuchAlgorithmException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		if(session.getAttribute("name")==null) {
			return "admin/01_adminLogin";	
		}
		
		model.addAttribute("admin", als.adminLogin(alVO)); //관리자이름
		model.addAttribute("member",ds.searchTotalMember()); //총 회원 수
		model.addAttribute("comment",ds.searchMonthComment());//이번달 리뷰 수
		model.addAttribute("booking",ds.searchMonthBookingTour());//이번달 예약 수
		model.addAttribute("Price",ds.searchMonthPrice()); //총 수입 
		model.addAttribute("like",ds.searchPopularLike()); // 좋아요 3TOP
		model.addAttribute("review",ds.searchPopularReview());//리뷰 3TOP
		
		return"admin/02_adminMain";
	}//adminLoginProcess
	
	/**
	 * 로그아웃
	 */
	@RequestMapping(value = "/admin/logout.do", method = RequestMethod.GET)
	public String adminLogoutForm(HttpSession session) {
		
		session.invalidate();
		
		return "admin/01_adminLogin";
	}//adminLogoutForm
	
}
