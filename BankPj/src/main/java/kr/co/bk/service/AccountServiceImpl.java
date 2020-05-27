package kr.co.bk.service;

import javax.inject.Inject;
import org.mybatis.spring.SqlSessionTemplate;
import kr.co.bk.model.dao.AccountDaoImpl;

public class AccountServiceImpl implements AccountService {
	

	@Inject
	AccountDaoImpl dao;
	
	@Inject
	SqlSessionTemplate session;

}
