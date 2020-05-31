package kr.co.bk.model.dao;

import java.util.List;

import javax.inject.Inject;

import kr.co.bk.model.vo.Fund;


public interface FundDao {

	public List<Fund> fundCount();
	public int fundOpen(List<Fund> funds);
}
