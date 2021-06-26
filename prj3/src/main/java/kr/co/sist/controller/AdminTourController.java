package kr.co.sist.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import kr.co.sist.domain.AdminInfoTourDomain;
import kr.co.sist.domain.PageDomain;
import kr.co.sist.service.AdminTourService;
import kr.co.sist.service.PaginationService;
import kr.co.sist.vo.AdminTourPageVO;
import kr.co.sist.vo.InfoTourModifyVO;
import kr.co.sist.vo.InfoTourVO;
import kr.co.sist.vo.PageVO;

import static org.springframework.web.bind.annotation.RequestMethod.GET;
import static org.springframework.web.bind.annotation.RequestMethod.POST;

import java.io.IOException;
import java.io.UnsupportedEncodingException;

import javax.servlet.http.HttpServletRequest;

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
	public String modifyTourForm(int to_num, int tr_num, Model model) {
		
		AdminTourService ats = new AdminTourService();
		model.addAttribute("aitd", ats.searchTourDetail(to_num));
		System.out.println(to_num + " / " + tr_num);
		return "admin/08_tourRevise";
	}
	
	@RequestMapping(value="/admin/08_tourRevise_modify.do", method = {GET, POST})
	public String modifyTourProcess(HttpServletRequest request, Model model) {
		
		int maxSize=1024*1024*5;
		MultipartRequest mr = null;
		String path = "C:/Users/user/git/prj3/prj3/src/main/webapp/images/tour/";
		
		String[] stArr = {"to_name", "to_take_time", "plan_explain",
				"to_meeting_time", "to_meeting_loc", "to_start_date", "to_end_date"};
		String[] stArrResult = new String[stArr.length];
		
		try {
			mr = new MultipartRequest(request, path, maxSize, new DefaultFileRenamePolicy());
			for (int i = 0; i < stArr.length; i++) {
				stArrResult[i] = new String(mr.getParameter(stArr[i]).getBytes("8859_1"), "UTF-8");
			}
		} catch (UnsupportedEncodingException uee) {
			uee.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
		int to_num = Integer.parseInt(mr.getParameter("to_num"));
		String thumb_img = mr.getFilesystemName("thumb_img");
		int la_num = Integer.parseInt(mr.getParameter("la_num"));
		int tr_num= Integer.parseInt(mr.getParameter("tr_num"));
		int to_price = Integer.parseInt(mr.getParameter("to_price"));
		System.out.println("thumb_img : " + thumb_img);
		InfoTourModifyVO itmVO = new InfoTourModifyVO(to_num, stArrResult[0], stArrResult[1], la_num, thumb_img, stArrResult[2],
				stArrResult[3], stArrResult[4], stArrResult[5], stArrResult[6], tr_num, to_price);
		
		AdminTourService ats = new AdminTourService();
		model.addAttribute("aitd", ats.modifyTourInfo(itmVO));
		
		return "forward:07_tourManage.do?tr_num=" + tr_num;
	}
	
	@RequestMapping(value="/admin/09_newTour.do", method = {GET, POST})
	public String addTourForm(int tr_num, Model model) {
		
		return "admin/09_newTour";
	}
	
	@RequestMapping(value="/admin/addTourProcess.do", method = {GET, POST})
	public String addTourProcess(HttpServletRequest request, Model model) {
		
		int maxSize=1024*1024*5;
		MultipartRequest mr = null;
		String path = "C:/Users/user/git/prj3/prj3/src/main/webapp/images/tour/";
		
		String[] stArr = {"to_name", "to_take_time", "plan_explain",
				"to_meeting_time", "to_meeting_loc", "to_start_date", "to_end_date"};
		String[] stArrResult = new String[stArr.length];
		
		try {
			mr = new MultipartRequest(request, path, maxSize, new DefaultFileRenamePolicy());
			for (int i = 0; i < stArr.length; i++) {
				stArrResult[i] = new String(mr.getParameter(stArr[i]).getBytes("8859_1"), "UTF-8");
			}
		} catch (UnsupportedEncodingException uee) {
			uee.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
		String thumb_img = mr.getFilesystemName("thumb_img");
		int la_num = Integer.parseInt(mr.getParameter("la_num"));
		int tr_num= Integer.parseInt(mr.getParameter("tr_num"));
		int to_price = Integer.parseInt(mr.getParameter("to_price"));
		InfoTourVO itVO = new InfoTourVO(stArrResult[0], stArrResult[1], la_num, thumb_img, stArrResult[2],
				stArrResult[3], stArrResult[4], stArrResult[5], stArrResult[6], tr_num, to_price);
		
		AdminTourService ats = new AdminTourService();
		ats.addTourInfo(itVO);
		
		return "forward:07_tourManage.do?tr_num="+tr_num;
	}
}
