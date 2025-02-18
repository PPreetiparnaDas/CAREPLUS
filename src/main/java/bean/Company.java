package bean;

import lombok.Data;

@Data
public class Company {
	private int comId;
	private String comName;
	private String comEmail;
	private String comPass;
	private String comPhone;
	private String comAdd;
	private String createdDate;
	private String updatedDate;
	private String status;			
}
