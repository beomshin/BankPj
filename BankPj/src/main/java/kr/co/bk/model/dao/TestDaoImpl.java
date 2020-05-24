package kr.co.bk.model.dao;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

@Repository
public class TestDaoImpl implements TestDao {

	@Override
	public int test(SqlSessionTemplate session) {
		// TODO Auto-generated method stub
		return session.selectOne("test.test"); 
	}

	
	
}
