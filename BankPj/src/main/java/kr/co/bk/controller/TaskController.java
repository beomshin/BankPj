package kr.co.bk.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("task")
public class TaskController {

	
	@RequestMapping("/accountPage")
	public String getAccountPage() throws Exception {
		
		return "task/accountPage";
	}
}
