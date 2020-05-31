package kr.co.bk.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import kr.co.bk.model.dao.FundDaoImpl;
import kr.co.bk.model.vo.Fund;

@Service
public class FundServiceImpl implements FundService {

	@Inject
	private FundDaoImpl dao;

	@Override
	public int fundOpen() {
		// TODO Auto-generated method stub
		int result=0;
		List<Fund> funds=dao.fundCount();
		if(!funds.isEmpty()) {
			 result = dao.fundOpen(funds);
		}
		return result;
	}
	
	
	
}
