package kr.co.bk.service;

import kr.co.bk.model.vo.Account;

public interface AccountService {

	public void AccountSign(Account ac);
	public String AccountAsk(int m_no , char a_type);
}
