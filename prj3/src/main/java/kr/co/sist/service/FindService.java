package kr.co.sist.service;

import java.security.SecureRandom;

import kr.co.sist.dao.FindDAO;
import kr.co.sist.vo.FindIdVO;
import kr.co.sist.vo.FindPassVO;
import kr.co.sist.vo.NewPassVO;

public class FindService {
	
	static FindService fs;

	private FindService() {
		
	}
	public static FindService getInstance() {
		if(fs==null) {
			fs=new FindService();
		}//endif
		return fs;
	}//getInstance
	
	
	public String findId(FindIdVO fiVO) {
		FindDAO fd=FindDAO.getInstance();
		return fd.SelectId(fiVO);
	}//findId
		
	public String findPass(FindPassVO fpVO) {
		FindDAO fd=FindDAO.getInstance();
		return fd.selectPass(fpVO);
	}//findPass
	
	
	
	
	
	
	public String createPass() {
		String newPass=null;

	char[] charSet = new char[]{'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H',
			'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z', 'a', 'b', 'c', 'd',
			'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z',
			'!', '@', '#', '$', '%', '^', '&'};
	
		StringBuffer sb = new StringBuffer();
		SecureRandom sr = new SecureRandom();
	
		int idx = 0, len = charSet.length;
		for (int i = 0; i < 8; i++) {
			idx = (int) (len * Math.random());
			idx = sr.nextInt(len); 
			sb.append(charSet[idx]);
		}
		newPass = sb.toString();
		return newPass;
	}//createPass
	
	public int modPass(NewPassVO npVO) {
		int rowCnt=0;
		FindDAO fd=FindDAO.getInstance();
		rowCnt=fd.updatePass(npVO);
		return rowCnt;
	}//modPass
	
}


