package kr.co.sist.controller;

import java.security.NoSuchAlgorithmException;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.ui.Model;

import kr.co.sist.service.FindService;
import kr.co.sist.util.cipher.DataEncrypt;
import kr.co.sist.vo.FindIdVO;
import kr.co.sist.vo.FindPassVO;
import kr.co.sist.vo.NewPassVO;
import kr.co.sist.vo.telVO;

@Controller
public class FindController {
	
	@RequestMapping(value = "/user/id_find.do" )
	public String findIdForm() {
		
		return "user/id_find";
	}//findIdForm
	
	@RequestMapping(value = "/user/id_find_success.do", method = RequestMethod.POST)
	public String findIdProcess(FindIdVO fiVO,telVO tVO,Model model)  { //@ModelAttribute
		FindService fs=FindService.getInstance();
		fiVO.setM_telnum(tVO.getInputTel1()+"-"+tVO.getInputTel2()+"-"+tVO.getInputTel3());
		model.addAttribute("id",fs.findId(fiVO));
		return "user/id_find_success";
	}//findIdProcess
	
	@RequestMapping(value = "/user/pass_find.do")
	public String findPassForm() {
		
		return "user/pass_find";
	}//findPassForm
	
	@RequestMapping(value = "/user/pass_find_success.do", method =RequestMethod.POST)
	public String findPassProcess (FindPassVO fpVO,telVO tVO,Model model) {
		FindService fs=FindService.getInstance();
		fpVO.setM_telnum(tVO.getInputTel1()+"-"+tVO.getInputTel2()+"-"+tVO.getInputTel3());
		//�˻��� id�� ������
		String idKey=fs.findPass(fpVO);
		//���� ��й�ȣ ����
		String newPass=fs.createPass();
		//���� �߱��� id�� pass����
		try {//��й�ȣ ��ȣȭ
			NewPassVO npVO=new NewPassVO(idKey,DataEncrypt.messageDigest("MD5", newPass));
		//��й�ȣ ����	
			fs.modPass(npVO);
		} catch (NoSuchAlgorithmException e) {
			e.printStackTrace();
		}//end catch
		
		model.addAttribute("np",newPass);

		return "user/pass_find_success";
	}//findPassForm
	
	
	
	
	
	
	
}
