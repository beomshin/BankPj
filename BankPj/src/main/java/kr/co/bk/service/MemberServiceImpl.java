package kr.co.bk.service;

import java.util.Map;

import javax.inject.Inject;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Service;

import kr.co.bk.model.dao.MemberDaoImpl;
import kr.co.bk.model.vo.Member;

@Service
public class MemberServiceImpl implements MemberService {

	@Inject
	MemberDaoImpl dao;
	
	@Inject
	SqlSessionTemplate session;

	@Override
	public int enrollMember(Member m) {
		// TODO Auto-generated method stub
		return dao.enrollMember(session,m);
	}

	@Override
	public Member login(String userid) {
		// TODO Auto-generated method stub
		return dao.login(session,userid);
	}
	
	
	
	
}
