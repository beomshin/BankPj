package kr.co.bk.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import kr.co.bk.model.dao.AccountDao;
import kr.co.bk.model.vo.Account;
import kr.co.bk.model.vo.Member;

@Service
public class AccountServiceImpl implements AccountService {
	
	@Inject
	private AccountDao dao;
	
	@Override
	public void AccountSign(Account ac) {
		
		dao.AccountSign(ac);
	}

	@Override
	public String AccountAsk(int m_no, char a_type) {
		return dao.AccountAsk(m_no, a_type);
	}

	@Override
	public List<Account> AccountInfo(int m_no) {
		
		return dao.AccountInfo(m_no);
	}

	

}
