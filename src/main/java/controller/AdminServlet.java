package controller;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;
import java.util.List;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;

import bean.User;
import dao.AdminDao;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.Part;
import utility.DbConnection;


@WebServlet("/AdminServlet")
@MultipartConfig(maxFileSize = 1024*1024*2)
public class AdminServlet extends HttpServlet {
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
			String appPath =path+"/adminImg";
			String imagePath = appPath + "";
			File fileDir = new File(imagePath);
		        if (!fileDir.exists()) 
		                 fileDir.mkdirs();
		    String orifileName = p.getSubmittedFileName();
		    String fileExt1 = orifileName.substring(orifileName.length()-3);
		    String imgname1=new Date().getTime() +"1"+"."+fileExt1;
		    String finalImgPath="adminImg" + "/"+ imgname1;
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
		    
		    AdminDao ud=new AdminDao();
		    int msg=ud.saveAdmin(u);
		    if (msg>0) {
				out.print("done");
			} else {
				out.print("fail");
			}
		  
		}else if(secret.equals("viewAllAdmins")) {
			AdminDao ud=new AdminDao();
			List<User> list=ud.getAllAdmin();
			GsonBuilder gsonBuilder = new GsonBuilder();
			Gson  gson = gsonBuilder.create();
			String JSONObject = gson.toJson(list);			    
			out.print(JSONObject);	
		}else if(secret.equals("inactiveAdmin")) {
			int uId=Integer.parseInt(request.getParameter("uId"));
			AdminDao ud=new AdminDao();
			int msg=ud.inactiveStatusById(uId);
			if (msg>0) {
				out.print("done");
			} else {
				out.print("fail");
			}
		}else if(secret.equals("getAdminById")) {
			int uId=Integer.parseInt(request.getParameter("uId"));
			AdminDao ud=new AdminDao();
			User user =ud.getAdminById(uId);
			
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
			String appPath =path+"/adminImg";
			String imagePath = appPath + "";
			File fileDir = new File(imagePath);
		        if (!fileDir.exists()) 
		                 fileDir.mkdirs();
		    String orifileName = p.getSubmittedFileName();
		    String fileExt1 = orifileName.substring(orifileName.length()-3);
		    String imgname1=new Date().getTime() +"1"+"."+fileExt1;
		    String finalImgPath="adminImg" + "/"+ imgname1;
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
		    
		    AdminDao ud=new AdminDao();
		    int msg=ud.UpdateAdmin(u);
		    if (msg>0) {
				out.print("done");
			} else {
				out.print("fail");
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
