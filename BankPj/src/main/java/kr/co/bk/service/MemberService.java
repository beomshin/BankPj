package kr.co.bk.service;

import java.util.Map;

import kr.co.bk.model.vo.Member;

public interface MemberService {

	int enrollMember(Member m);
	Member login(String userid);
}
