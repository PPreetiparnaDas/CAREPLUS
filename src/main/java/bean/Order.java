package bean;

import lombok.Data;

@Data
public class Order {
	private int oid;
	private int qty;
	private double basePrice;
	private double totalAmount;
	private String state;
	private String pincode;
	private String email;
	private String phone;
	private String oDate;
	private String status;
	private int uId;
	private String uName;
	private int payId;
	private int pid;
	private String pname;
	private String  pdesc;
	private String  imgName;
	private String cardNum;
	private String expDate;
	private String cvv;
}
