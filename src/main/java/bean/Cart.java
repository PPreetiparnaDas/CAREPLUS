package bean;

import lombok.Data;

@Data
public class Cart {
	private int  cartId;
	private int  uId;
	private int  pid;
	private String  pname;
	private String  pdesc;
	private String  imgName;
	private int  qty;
	private double  basePrice;
	private double  totalPrice;
	
}
