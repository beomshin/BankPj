package kr.co.bk.model.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Account {

	private String a_account;
	private char a_type;
	private int a_no, a_pw, m_no, a_money;
	
}
