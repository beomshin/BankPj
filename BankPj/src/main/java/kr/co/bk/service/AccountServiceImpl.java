package kr.co.bk.service;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import kr.co.bk.model.dao.AccountDao;
import kr.co.bk.model.vo.Account;

@Service
public class AccountServiceImpl implements AccountService {
	
	@Inject
	AccountDao dao;
	
	@Override
	public void AccountSign(Account ac) {
		
		dao.AccountSign(ac);
	}

	@Override
	public String AccountAsk(int m_no, char a_type) {
		// TODO Auto-generated method stub
		return dao.AccountAsk(m_no, a_type);
	}

	

}
