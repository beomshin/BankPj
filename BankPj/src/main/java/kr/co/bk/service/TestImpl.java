package kr.co.bk.service;

import javax.inject.Inject;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.co.bk.model.dao.TestDaoImpl;

@Service
public class TestImpl implements Test {

	
	@Inject
	SqlSessionTemplate session; 
	
	@Inject
	TestDaoImpl dao;

	@Override
	public int test() {
		// TODO Auto-generated method stub
		return dao.test(session);
	}	
	

	
	
	
}
