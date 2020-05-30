package kr.co.bk.service;

import java.util.List;

import kr.co.bk.model.vo.Account;
import kr.co.bk.model.vo.Member;

public interface AccountService {

	public void AccountSign(Account ac);
	public String AccountAsk(int m_no , char a_type);
	public List<Account> AccountInfo(int m_no);
}
