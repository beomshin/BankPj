package kr.co.bk.model.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class Fund {
	private int f_no;
	private String f_name;
	private double f_per;
	private int f_fee;
	private double f_money;
	private char f_status;
}
