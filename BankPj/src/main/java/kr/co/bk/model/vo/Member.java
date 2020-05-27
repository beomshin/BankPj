package kr.co.bk.model.vo;

import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class Member {
	
	private int m_no;
	private String m_id;
	private String m_pw;
	private String m_addr;
	private int m_age;
	private char m_gender;
	private String m_name;
	private String m_phone;
	private Date m_enrolldate;
}
