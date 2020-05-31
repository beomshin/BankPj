package kr.co.bk.controller;

import javax.inject.Inject;

import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


import kr.co.bk.service.FundServiceImpl;

@Controller
@Component
public class FundController {

	
	@Inject
	private FundServiceImpl serivce;
	
	
	@RequestMapping("fund/enrollfund.do")
	public String enrollFund() {
		
		
		return "fund/fundenroll";
	}
	
//	초 | 분 | 시 | 일 | 월 | 요일 | 연도
		
//	@Scheduled(cron="20 44 16 ? * MON-FRI")
	@RequestMapping("fund/test.do")
	public void fundOpen() {
			serivce.fundOpen();
	}
	

	
}
