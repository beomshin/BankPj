package kr.co.bk.controller;

import java.io.PrintWriter;
import java.util.List;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import kr.co.bk.model.vo.Account;
import kr.co.bk.model.vo.Member;
import kr.co.bk.service.AccountService;

@Controller
@RequestMapping("task/*")
public class TaskController {

	@Autowired
	private AccountService service;

	// 기본이동
	@RequestMapping(value = "myAccount")
	public String getMyaccount() throws Exception {

		return "task/myAccount";
	}

	@RequestMapping("accountPage.do")
	public String getAccountPage() throws Exception {

		return "task/accountPage";
	}

	@SuppressWarnings("unlikely-arg-type")
	@RequestMapping(value = "myAccount.do", method = RequestMethod.POST)
	public String getMyaccount(Account ac, HttpSession session, Member m, String a_account, Model model,
			HttpServletResponse response, RedirectAttributes rttr) throws Exception {
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();

		try {
			if (service.AccountAsk(m.getM_no(), ac.getA_type()).equals(ac.getA_type()));

			out.println("<script>alert('해당 계좌는 이미 등록되어있습니다.');</script>");
			out.flush();

			return "task/accountPage";
			
		} catch (Exception e) {
			e.printStackTrace();
		}

		if (ac.getA_type() == 'N') {
			a_account = "110-" + m.getM_phone();
		} else {
			a_account = "111-" + m.getM_phone();
		}

		ac.setA_account(a_account);
		service.AccountSign(ac);

		rttr.addFlashAttribute("msg", "계좌 개설완료. 내 계좌에서 확인해주세요");
		
		return "redirect:myAccount";
	}
	
	@RequestMapping(value="accountInfo",method = RequestMethod.POST)
	@ResponseBody
	public List<Account> accountInfo(
				@ModelAttribute("m_no") int m_no,
				Model model) throws Exception{
		
	
			List<Account> data = service.AccountInfo(m_no);
		
			System.out.println(data);
			
			return data;
	}
}
