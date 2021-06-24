package kr.co.sist.controller;

import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import kr.co.sist.domain.InfoTravelDomain;
import kr.co.sist.domain.MainTravelDomain;
import kr.co.sist.domain.PageDomain;
import kr.co.sist.service.AdminTravelService;
import kr.co.sist.service.PaginationService;
import kr.co.sist.vo.InfoTravel2VO;
import kr.co.sist.vo.InfoTravelVO;
import kr.co.sist.vo.PageVO;

import static org.springframework.web.bind.annotation.RequestMethod.GET;
import static org.springframework.web.bind.annotation.RequestMethod.POST;

@Controller
public class AdminTravelController {
	
	@RequestMapping(value="/admin/03_travelManage.do", method= {GET, POST})
	public String adminTravelList(@RequestParam(defaultValue="1")int curPage, Model model) {
		
		AdminTravelService ats = new AdminTravelService();
		int totalCnt = ats.searchTotalCnt();
		
		PaginationService ps = new PaginationService(curPage, totalCnt);
		PageDomain pd = new PageDomain(curPage, ps.getCntInPage(), ps.getStartInpage(),
				ps.getEndInpage(), ps.getStartPageNum(), ps.getEndPageNum(), ps.isPrevBtn(), ps.isNextBtn());
		
		PageVO pVO = new PageVO();
		pVO.setStartNum(ps.getStartInpage());
		pVO.setEndNum(ps.getEndInpage());
		
		List<MainTravelDomain> mtdList = ats.searchTravelPage(pVO);
		
		model.addAttribute("pages", pd);
		model.addAttribute("mtdList", mtdList);
		
		return "admin/03_travelManage";
	}
	
	@RequestMapping(value="/admin/05_newWrite.do", method=GET)
	public String addTravelForm(Model model) {
		
		return "admin/05_newWrite";
	}
	
	@RequestMapping(value="/admin/03_travelManage_add.do", method=POST)
	public String addTravelProcess(@RequestParam(defaultValue="1")int curPage, HttpServletRequest request, Model model) {
		
		int maxSize=1024*1024*5;
		MultipartRequest mr = null;
		String path = "C:/Users/user/git/prj3/prj3/src/main/webapp/images/travel/";
		String[] stArr = {"tr_name","tr_simple_explain",
				"tr_explain","tr_addr","tr_time","tr_telnum"};
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
		
		int a_num = Integer.parseInt(mr.getParameter("a_num"));
		double tr_latitude = Double.parseDouble(mr.getParameter("tr_latitude"));
		double tr_longitude = Double.parseDouble(mr.getParameter("tr_longitude"));
		
		String thumb_img = mr.getFilesystemName("thumb_img");
		String img1 = mr.getFilesystemName("img1");
		String img2 = mr.getFilesystemName("img2");
		String img3 = mr.getFilesystemName("img3");
		
		InfoTravelVO itVO = new InfoTravelVO(stArrResult[0], a_num, thumb_img, img1, img2, 
				img3, stArrResult[1], stArrResult[2], tr_latitude, tr_longitude, stArrResult[3], stArrResult[4], stArrResult[5]);
		
		AdminTravelService ats = new AdminTravelService();
		ats.addTravel(itVO);
		
		return "forward:03_travelManage.do";
	}
	
	@RequestMapping(value="/admin/04_contentsRevise.do", method=GET)
	public String modifyTravelForm(int tr_num, Model model) {
		
		AdminTravelService ats = new AdminTravelService();
		
		InfoTravelDomain itd = ats.searchTravel(tr_num);
		
		model.addAttribute("itd", itd);
		
		return "admin/04_contentsRevise";
	}
	
	@RequestMapping(value="/admin/04_contentsRevise_mod.do", method= {GET, POST})
	public String modifyTravelProcess(HttpServletRequest request, Model model) {
		
		int maxSize=1024*1024*5;
		MultipartRequest mr = null;
		String path = "C:/Users/user/git/prj3/prj3/src/main/webapp/images/travel/";
		String[] stArr = {"tr_name","tr_simple_explain",
				"tr_explain","tr_addr","tr_time","tr_telnum"};
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
		
		int tr_num = Integer.parseInt(mr.getParameter("tr_num"));
		int a_num = Integer.parseInt(mr.getParameter("a_num"));
		double tr_latitude = Double.parseDouble(mr.getParameter("tr_latitude"));
		double tr_longitude = Double.parseDouble(mr.getParameter("tr_longitude"));
		
		String thumb_img = mr.getFilesystemName("thumb_img");
		String img1 = mr.getFilesystemName("img1");
		String img2 = mr.getFilesystemName("img2");
		String img3 = mr.getFilesystemName("img3");
		
		InfoTravel2VO it2VO = new InfoTravel2VO(stArrResult[0],tr_num, a_num, thumb_img, img1, img2, 
				img3, stArrResult[1], stArrResult[2], tr_latitude, tr_longitude, stArrResult[3], stArrResult[4], stArrResult[5]);
		
		AdminTravelService ats = new AdminTravelService();
		
		ats.modifyTravel(it2VO);
		
		return "forward:03_travelManage.do";
	}
	
}
