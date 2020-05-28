package kr.co.bk.model.dao;

import java.util.HashMap;
import java.util.Map;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import kr.co.bk.model.vo.Account;

@Repository
public class AccountDaoImpl implements AccountDao {
	
	@Inject
	private SqlSession sql;

	private static String namespace = "account";


	@Override
	public void AccountSign(Account ac) {
		sql.insert(namespace + ".accountSign", ac);
	}


	@Override
	public String AccountAsk(int m_no, char a_type) {
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("m_no", m_no); 
		map.put("a_type", a_type);
		
		return sql.selectOne(namespace + ".accountAsk", map);
	}


}
