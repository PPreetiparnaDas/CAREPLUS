package bean;

import lombok.Data;

@Data
public class User {
	private int  uId;
	private String  uName;
	private String  uEmail;
	private String  uPass;
	private String  uPhone;
	private String  uAdd;
	private String  uImg;
	private String  createdDate;
	private String  updatedDate;
	private String  status;
	private int  roleId;
	private String  roleName;
	private int  count;
}
 