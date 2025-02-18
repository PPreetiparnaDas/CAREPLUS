package bean;

import lombok.Data;

@Data
public class Product {
	private int  pid;
	private String  pname;
	private String  pdesc;
	private String  imgName;
	private int  availability;
	private double  price;
	private String  manufDate;
	private String  expDate;
	private String  createdDate;
	private String  updatedDate;
	private String  status;
	private int  catId;
	private String  catName;
	private int  comId;
	private String  comName;	
}
 