package bean;

import lombok.Data;

@Data
public class Payment {
	private int payId;
	private String cardNum;
	private String expDate;
	private String cvv;
	private String payDate;
	private int uId;
}
