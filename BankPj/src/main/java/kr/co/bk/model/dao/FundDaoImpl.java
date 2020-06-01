package kr.co.bk.model.dao;

import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.apache.ibatis.session.RowBounds;
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

	@Override
	public List<Fund> getfund(int cPage,int numperPage) {
		// TODO Auto-generated method stub
		RowBounds row =new  RowBounds((cPage-1)*numperPage, numperPage);
		return session.selectList(namespace+".getfund","",row);
	}

	@Override
	public int getfundAll() {
		// TODO Auto-generated method stub
		return session.selectOne(namespace+".getfundAll");
	}

	@Override
	public int fundapply(Map<String, Integer> map) {
		// TODO Auto-generated method stub
		return session.insert(namespace+".fundapply",map);
	}

	@Override
	public List<Fund> getmyfund(int no) {
		// TODO Auto-generated method stub
		return session.selectList(namespace+".getmyfund",no);
	}

	@Override
	public int deletefund(Map<String, Integer> map) {
		// TODO Auto-generated method stub
		return session.delete(namespace+".deletefund",map);
	}
	
	
	
	
}
