package kr.co.bk.model.dao;

import java.util.List;

import javax.inject.Inject;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import kr.co.bk.model.vo.Fund;

@Repository
public class FundDaoImpl implements FundDao {


	@Inject
	private SqlSessionTemplate session;
	
	private static String namespace ="fund";

	@Override
	public List<Fund> fundCount() {
		// TODO Auto-generated method stub
		return session.selectList(namespace+".fundCount");
	}

	@Override
	public int fundOpen(List<Fund> funds) {
		// TODO Auto-generated method stub
		int result=0;

		for(Fund f : funds) {
			double pre =(double)(Math.random()*10);
			pre =  Math.round(pre*100)/100.0-5;
			f.setF_per(pre);
		}
		
		for(Fund f :funds) {
			result=session.update(namespace+".fundOpen",f);
		}
		
		return result;
	}
	
	
	
	
}
