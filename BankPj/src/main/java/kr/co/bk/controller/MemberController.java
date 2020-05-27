package kr.co.bk.controller;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import kr.co.bk.model.vo.Member;
import kr.co.bk.service.MemberServiceImpl;

@Controller
public class MemberController {

	@Inject
	private MemberServiceImpl service;
	
	@Inject
	private BCryptPasswordEncoder encoder;
	
	@RequestMapping("member/loginview.do")
	public String loginView() {
		return "member/login";
	}
	
	@RequestMapping("member/enrollmember.do")
	public String enrollview() {
		return "member/enrollview";
	}
	
	@RequestMapping("member/enrollmemberEnd.do")
	public ModelAndView enorllMember(ModelAndView mv,Member m) {
		
		m.setM_pw(encoder.encode(m.getM_pw()));
		int result= service.enrollMember(m);
		
		if(result==0) {
			mv.addObject("msg","회원가입 실패");
			mv.addObject("loc","member/loginview.do");
			mv.setViewName("common/msg");
			
		}else {
			mv.addObject("msg","회원가입 성공");
			mv.addObject("loc","member/loginview.do");
			mv.setViewName("common/msg");
		}
		
		
		return mv;
	}
	
	@RequestMapping("member/login.do")
	public String login(String userid,String userpw,Model m,HttpSession session) {
		Member login = service.login(userid);
		
		if(login!=null&&encoder.matches(userpw, login.getM_pw())) {
			m.addAttribute("msg","로그인성공");
			session.setAttribute("loginMember", login);
		}else {
			//로그인실패
			m.addAttribute("msg","로그인실패");
		}
		m.addAttribute("loc","/");
		return "common/msg";
	}
	
	
}
