package kr.co.bk.service;

import java.util.List;
import java.util.Map;

import kr.co.bk.model.vo.Fund;

public interface FundService {
	
	public int fundOpen();
	List<Fund> getfund(int cPage,int numperPage);
	int getfundAll();
	int fundapply(Map<String, Integer> map);
	List<Fund> getmyfund(int no);
	int deletefund(Map<String, Integer> map);
}
