package kr.co.bk.model.dao;

import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import kr.co.bk.model.vo.Fund;


public interface FundDao {

	public List<Fund> fundCount();
	public int fundOpen(List<Fund> funds);
	List<Fund> getfund(int cPage,int numperPage);
	int getfundAll();
	int fundapply(Map<String, Integer> map);
	List<Fund> getmyfund(int no);
	int deletefund(Map<String, Integer> map);
}
