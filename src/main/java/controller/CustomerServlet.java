package controller;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;
import java.util.List;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;

import bean.User;
import dao.CustomerDao;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import jakarta.servlet.http.Part;
import utility.DbConnection;


@WebServlet("/CustomerServlet")
@MultipartConfig(maxFileSize = 1024*1024*2)
public class CustomerServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		
		String secret=request.getParameter("secret");
		
		if(secret.equals("SaveServlet")) {
			String  uName=request.getParameter("uName");
			String  uEmail=request.getParameter("uEmail");
			String  uPass=request.getParameter("uPass");
			String  uPhone=request.getParameter("uPhone");
			String  uAdd=request.getParameter("uAdd");
			
			//image start
			Part p=request.getPart("uImg");
			String path=DbConnection.Path();
			String appPath =path+"/custImg";
			String imagePath = appPath + "";
			File fileDir = new File(imagePath);
		        if (!fileDir.exists()) 
		                 fileDir.mkdirs();
		    String orifileName = p.getSubmittedFileName();
		    String fileExt1 = orifileName.substring(orifileName.length()-3);
		    String imgname1=new Date().getTime() +"1"+"."+fileExt1;
		    String finalImgPath="custImg" + "/"+ imgname1;
		    if (validateImage1(orifileName)) {
		    	 try{
		                p.write(imagePath + "/" + imgname1);
		            }catch (Exception ex) { 
		            	ex.printStackTrace();
		            }
			}
		    
			//image end
		    User u=new User();
		    u.setUName(uName);
		    u.setUEmail(uEmail);
		    u.setUPass(uPass);
		    u.setUPhone(uPhone);
		    u.setUAdd(uAdd);
		    u.setUImg(imgname1);
		    
		    CustomerDao ud=new CustomerDao();
		    int msg=ud.saveCustomer(u);
		    if (msg>0) {
				out.print("done");
			} else {
				out.print("fail");
			}
		  
		}else if(secret.equals("MyAccountUpdate")) {
			String  uName=request.getParameter("uName");
			String  uEmail=request.getParameter("uEmail");
			String  uPhone=request.getParameter("uPhone");
			String  uAdd=request.getParameter("uAdd");
			int uId=Integer.parseInt(request.getParameter("uId"));
			
			User u=new User();
		    u.setUName(uName);
		    u.setUEmail(uEmail);
		    u.setUPhone(uPhone);
		    u.setUAdd(uAdd);
		    u.setUId(uId);
		    CustomerDao ud=new CustomerDao();
		    int msg=ud.UpdateMyAccount(u);
		    HttpSession session=request.getSession(false);  
		    if (msg>0) {
		    	session.setAttribute("uName", uName);
				out.print("done");
			} else {
				out.print("fail");
			}
		}
		else if(secret.equals("viewAllCustomers")) {
			CustomerDao ud=new CustomerDao();
			List<User> list=ud.getAllCustomer();
			GsonBuilder gsonBuilder = new GsonBuilder();
			Gson  gson = gsonBuilder.create();
			String JSONObject = gson.toJson(list);			    
			out.print(JSONObject);	
		}else if(secret.equals("inactiveCustomer")) {
			int uId=Integer.parseInt(request.getParameter("uId"));
			CustomerDao ud=new CustomerDao();
			int msg=ud.inactiveStatusById(uId);
			if (msg>0) {
				out.print("done");
			} else {
				out.print("fail");
			}
		}else if(secret.equals("getCustomerById")) {
			int uId=Integer.parseInt(request.getParameter("uId"));
			CustomerDao ud=new CustomerDao();
			User user =ud.getCustomerById(uId);
			
			GsonBuilder gsonBuilder = new GsonBuilder();
			Gson  gson = gsonBuilder.create();
			String JSONObject = gson.toJson(user);			    
			out.print(JSONObject);	
		}else if(secret.equals("updateServlet")) {
			String  uName=request.getParameter("uName");
			String  uEmail=request.getParameter("uEmail");
			String  uPass=request.getParameter("uPass");
			String  uPhone=request.getParameter("uPhone");
			String  uAdd=request.getParameter("uAdd");
			int uId=Integer.parseInt(request.getParameter("uId"));
			String  status=request.getParameter("status");
			
			//image start
			Part p=request.getPart("uImg");
			String path=DbConnection.Path();
			String appPath =path+"/custImg";
			String imagePath = appPath + "";
			File fileDir = new File(imagePath);
		        if (!fileDir.exists()) 
		                 fileDir.mkdirs();
		    String orifileName = p.getSubmittedFileName();
		    String fileExt1 = orifileName.substring(orifileName.length()-3);
		    String imgname1=new Date().getTime() +"1"+"."+fileExt1;
		    String finalImgPath="custImg" + "/"+ imgname1;
		    if (validateImage1(orifileName)) {
		    	 try{
		                p.write(imagePath + "/" + imgname1);
		            }catch (Exception ex) { 
		            	ex.printStackTrace();
		            }
			}
		    
			//image end
		    User u=new User();
		    u.setUName(uName);
		    u.setUEmail(uEmail);
		    u.setUPass(uPass);
		    u.setUPhone(uPhone);
		    u.setUAdd(uAdd);
		    u.setUImg(imgname1);
		    u.setStatus(status);
		    u.setUId(uId);
		    
		    CustomerDao ud=new CustomerDao();
		    int msg=ud.UpdateCustomer(u);
		    if (msg>0) {
				out.print("done");
			} else {
				out.print("fail");
			}
		  
		}else if(secret.equals("ChangePassword")) {
			String  oldPass=request.getParameter("oldPass");
			String  newPass=request.getParameter("newPass");
			String  confPass=request.getParameter("confPass");
			HttpSession session=request.getSession(false);  
			int uId=(int)session.getAttribute("uId");
			CustomerDao ud=new CustomerDao();
			User user =ud.getCustomerById(uId);
			String originalOldPass=user.getUPass();
			
			if(originalOldPass.equals(oldPass)) {
				if (oldPass!=newPass&&newPass.equals(confPass)) {
					ud.updatePassword(confPass,uId);
					out.print("done");
				} else {
					out.print("oldPassShouldNotMatch");
				}
			}else {
				out.print("invalidOldPass");
			}
			
		}
	}
	
	private boolean validateImage1(String orifileName){
	      String fileExt1 = orifileName.substring(orifileName.length()-3);
	      if("jpg".equals(fileExt1) || "png".equals(fileExt1) || "gif".equals(fileExt1))
	      { 
	    	  return true;
	      }
	      return false;
	    }

}
