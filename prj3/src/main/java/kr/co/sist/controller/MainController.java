package kr.co.sist.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.oreilly.servlet.MultipartRequest;

import kr.co.sist.domain.PageDomain;
import kr.co.sist.domain.SearchTravelDomain;
import kr.co.sist.domain.TravelCommentDomain;
import kr.co.sist.service.LikeService;
import kr.co.sist.service.MainService;
import kr.co.sist.service.PaginationService;
import kr.co.sist.vo.SelectProcessVO;

@Controller
public class MainController {
	
	@RequestMapping(value="/index.do", method= {RequestMethod.GET, RequestMethod.POST})
	public String main(Model model) {
		
		MainService ms = new MainService();
		
		model.addAttribute("ttdList1", ms.searchTravelThumbDomain(1));
		model.addAttribute("ttdList2", ms.searchTravelThumbDomain(2));
		
		return "user/main";
	}
	
	@RequestMapping(value="/user/travel_info.do", method={RequestMethod.GET, RequestMethod.POST})
	public String travelInfoForm(HttpSession session, int tr_num, @RequestParam(defaultValue = "1")int curPage, Model model) {
		
		MainService ms = new MainService();
		
		List<TravelCommentDomain> tcList = ms.searchTravelComment(tr_num);
		
		model.addAttribute("travelInfo", ms.searchTravelInfo(tr_num));
		model.addAttribute("travelTour", ms.searchTravelTour(tr_num));
		model.addAttribute("travelComment", ms.searchTravelComment(tr_num));
		
		PaginationService ps = new PaginationService(curPage, tcList.size());
		PageDomain pd = new PageDomain(curPage, ps.getCntInPage(), ps.getStartInpage(),
				ps.getEndInpage(), ps.getStartPageNum(), ps.getEndPageNum(), ps.isPrevBtn(), ps.isNextBtn());
		
		List<TravelCommentDomain> tcList2 = new ArrayList<TravelCommentDomain>();
		
		for (int i = ps.getStartInpage() - 1; i < ps.getEndInpage(); i++) {
			tcList2.add(tcList.get(i));
		}
		
		model.addAttribute("pages", pd);
		model.addAttribute("comments", tcList2);
		
		if (session.getAttribute("mid") != null) {
			LikeService ls = new LikeService();
			
			String id = ls.searchLike((String)session.getAttribute("mid"));
			if (id == null) {
				model.addAttribute("heart", false);
			} else {
				model.addAttribute("heart", true);
			}
		}
		
		return "user/travel_info";
	}
	
	@RequestMapping(value="/user/travel_list.do", method=RequestMethod.GET)
	public String searchProcess(SelectProcessVO spVO, Model model) {
		
		MainService ms = new MainService();
		String select = spVO.getSelect();
		
		List<SearchTravelDomain> stdList = null;
		
		if (select.equals("none")) {
			stdList = ms.searchSearchedPlace(1, spVO.getName());
		} else if (select.equals("travel_area")) {
			stdList = ms.searchSearchedPlace(2, spVO.getName());
		} else if (select.equals("travel_name")) {
			stdList = ms.searchSearchedPlace(3, spVO.getName());
		} else if (select.equals("areaNumber")) {
			stdList = ms.searchSearchedPlace(4, spVO.getName());
			//model.addAttribute("searchList", stdList);
		}
		
		PaginationService ps = new PaginationService(spVO.getCurPage(), stdList.size());
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
	
	@RequestMapping(value="/user/travel_info_comment.do", method=RequestMethod.GET)
	public String travelInfoCommentProcess(int tr_num, @RequestParam(defaultValue = "1")int curPage, Model model) {
		
		MainService ms = new MainService();
		
		List<TravelCommentDomain> tcList = ms.searchTravelComment(tr_num);
		
		model.addAttribute("travelInfo", ms.searchTravelInfo(tr_num));
		model.addAttribute("travelTour", ms.searchTravelTour(tr_num));
		model.addAttribute("travelComment", ms.searchTravelComment(tr_num));
		
		PaginationService ps = new PaginationService(curPage, tcList.size());
		PageDomain pd = new PageDomain(curPage, ps.getCntInPage(), ps.getStartInpage(),
				ps.getEndInpage(), ps.getStartPageNum(), ps.getEndPageNum(), ps.isPrevBtn(), ps.isNextBtn());
		
		List<TravelCommentDomain> tcList2 = new ArrayList<TravelCommentDomain>();
		
		for (int i = ps.getStartInpage() - 1; i < ps.getEndInpage(); i++) {
			tcList2.add(tcList.get(i));
		}
		
		model.addAttribute("pages", pd);
		model.addAttribute("comments", tcList2);
		
		return "user/travel_info";
	}
	
//	@RequestMapping(value="/user/travel_info_comment.do", method=RequestMethod.GET)
//	public String travelInfoCommentProcess(HttpServletRequest req, Model model) {
//		MultipartRequest mr=new MultipartRequest(req, null, 0, null);
//		mr.getFilesystemName(null)
//		
//	}
	
}
