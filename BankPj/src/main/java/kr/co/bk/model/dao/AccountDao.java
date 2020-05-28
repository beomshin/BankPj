package kr.co.bk.model.dao;

import kr.co.bk.model.vo.Account;

public interface AccountDao {

	public void AccountSign(Account ac);
	public String AccountAsk(int m_no , char a_type);
}
