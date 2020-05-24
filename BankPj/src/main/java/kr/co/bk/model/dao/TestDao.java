package kr.co.bk.model.dao;

import org.mybatis.spring.SqlSessionTemplate;

public interface TestDao {

	int test(SqlSessionTemplate session);
}
