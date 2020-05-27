package kr.co.bk.model.dao;

import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import kr.co.bk.model.vo.Member;

@Repository
public class MemberDaoImpl implements MemberDao {

	@Override
	public int enrollMember(SqlSessionTemplate session, Member m) {
		// TODO Auto-generated method stub
		return session.insert("member.enrollMember",m);
	}

	@Override
	public Member login(SqlSessionTemplate session, String userid) {
		// TODO Auto-generated method stub
		return session.selectOne("member.login",userid);
	}

	
	
	
}
