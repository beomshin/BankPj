package kr.co.bk.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import static kr.co.bk.common.PagingFactory.getPage;

import kr.co.bk.model.vo.Fund;
import kr.co.bk.model.vo.Member;
import kr.co.bk.service.FundServiceImpl;

@Controller
@Component
public class FundController {

	
	@Inject
	private FundServiceImpl service;
	
	
	@RequestMapping("fund/enrollfund.do")
	public ModelAndView enrollFund(ModelAndView mv,HttpSession session) {
		Member m = (Member) session.getAttribute("loginMember");
		if(m==null) {
			mv.addObject("msg","로그인이 필요합니다");
			mv.addObject("loc","/");
			mv.setViewName("common/msg");
			return mv;
		}
		
		List<Fund> f = service.getmyfund(m.getM_no());
		mv.addObject("fund",f);
		mv.setViewName("fund/fundenroll");
		return mv;
	}
	
//	초 | 분 | 시 | 일 | 월 | 요일 | 연도
		
	@Scheduled(cron="00 00 9 ? * MON-FRI")
	@RequestMapping("fund/test.do")
	public void fundOpen() {
		service.fundOpen();
	}
	
	@RequestMapping("fund/fundview.do")
	public ModelAndView fundview(ModelAndView mv,@RequestParam(required = false,defaultValue = "1")int cPage,@RequestParam(required = false,defaultValue = "2")int numperPage) {
		
		List<Fund> f=service.getfund(cPage,numperPage);
		int totalData = service.getfundAll();
		String pagebar = getPage(totalData, cPage, numperPage, "/bk/fund/fundview.do");
		mv.addObject("fund",f);
		mv.addObject("pagebar",pagebar);
		mv.setViewName("fund/fundview");
		return mv;
	}
	
	@RequestMapping("fund/fundapply")
	public ModelAndView fundapply(ModelAndView mv,int fno,int price,HttpSession session) {
		Member m = (Member) session.getAttribute("loginMember");
		if(m==null) {
			mv.addObject("msg","로그인이 필요합니다");
			mv.addObject("loc","/");
			mv.setViewName("common/msg");
			return mv;
		}
		
		Map<String, Integer> map = new HashMap<String, Integer>();
		map.put("fno", fno);
		map.put("price", price);
		map.put("mno",m.getM_no());
		service.fundapply(map);
		
		mv.addObject("msg","펀드 등록에 성공했습니다.");
		mv.addObject("loc","/");
		mv.setViewName("common/msg");
		return mv;
	}
	
	@RequestMapping("fund/deletefund")
	public ModelAndView deletefund(ModelAndView mv,HttpSession session,int fno) {
		Member m = (Member) session.getAttribute("loginMember");
		Map<String, Integer> map = new HashMap<String, Integer>();
		map.put("fno", fno);
		map.put("mno",m.getM_no());
		int result=service.deletefund(map);
		if(result>0) {
		mv.addObject("msg","펀드 삭제에 성공했습니다.");
		mv.addObject("loc","fund/enrollfund.do");
		mv.setViewName("common/msg");
		}else {
			mv.addObject("msg","펀드 삭제에 실패했습니다.");
			mv.addObject("loc","fund/enrollfund.do");
			mv.setViewName("common/msg");
		}
		return mv;
	}
	

	
}
