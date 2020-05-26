package kr.co.bk.model.dao;

import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;

import kr.co.bk.model.vo.Member;

public interface MemberDao {

	
	int enrollMember(SqlSessionTemplate session,Member m);
	Member login(SqlSessionTemplate session,String userid);
}
