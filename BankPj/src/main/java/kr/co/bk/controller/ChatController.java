package kr.co.bk.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import kr.co.bk.model.vo.Member;

@Controller
@RequestMapping("chat/*")
public class ChatController {

	@RequestMapping("chat.do")
	public ModelAndView Chat(ModelAndView mv,HttpSession session) throws Exception {
		Member m = (Member) session.getAttribute("loginMember");
		if(m==null) {
			mv.addObject("msg","로그인이 필요합니다");
			mv.addObject("loc","/");
			mv.setViewName("common/msg");
			return mv;
		}
		mv.setViewName("chat/chat");
		return mv;

	}
}
