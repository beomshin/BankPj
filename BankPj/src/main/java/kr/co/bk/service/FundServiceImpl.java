package kr.co.bk.service;

import java.util.List;
import java.util.Map;

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

	@Override
	public List<Fund> getfund(int cPage,int numperPage) {
		// TODO Auto-generated method stub
		return dao.getfund(cPage,numperPage);
	}

	@Override
	public int getfundAll() {
		// TODO Auto-generated method stub
		return dao.getfundAll();
	}

	@Override
	public int fundapply(Map<String, Integer> map) {
		// TODO Auto-generated method stub
		return dao.fundapply(map);
	}

	@Override
	public List<Fund> getmyfund(int no) {
		// TODO Auto-generated method stub
		return dao.getmyfund(no);
	}

	@Override
	public int deletefund(Map<String, Integer> map) {
		// TODO Auto-generated method stub
		return dao.deletefund(map);
	}
	
	
	
	
	
	
}
