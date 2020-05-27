package kr.co.bk.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kr.co.bk.model.vo.Account;

@Controller
@RequestMapping("task")
public class TaskController {

	
	@RequestMapping("/accountPage.do")
	public String getAccountPage() throws Exception {
		
		return "task/accountPage";
	}
	
	@RequestMapping(value="myAccount.do", method = RequestMethod.POST)
	public String getMyaccount(Account ac) throws Exception {
		
		return "task/myAccount";
	}
}
