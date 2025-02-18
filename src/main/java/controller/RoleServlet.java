package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;

import bean.Role;
import dao.RoleDao;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/RoleServlet")
public class RoleServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		String secret=request.getParameter("secret");
		
		if(secret.equals("SaveServlet")) {
			String roleName=request.getParameter("roleName");
			RoleDao cd=new RoleDao();
		    int status=cd.saveRole(roleName);
		    if (status>0) {
				out.print("done");
			} else {
				out.print("failed");
			}
		}else if(secret.equals("viewServlet")) {
			RoleDao cd=new RoleDao();
			List<Role> catList=cd.viewRole();
			
			GsonBuilder gsonBuilder = new GsonBuilder();
			Gson  gson = gsonBuilder.create();
			String JSONObject = gson.toJson(catList);			    
			out.print(JSONObject);				
		}else if(secret.equals("deleteRole")) {
			int roleId=Integer.parseInt(request.getParameter("roleId"));
			RoleDao cd=new RoleDao();
			int status=cd.deleteRole(roleId);
			if (status>0) {
				out.print("done");
			} else {
				out.print("Failed");
			}
		}else if(secret.equals("getRoleById")) {
			int roleId=Integer.parseInt(request.getParameter("roleId"));
			RoleDao cd=new RoleDao();
			Role cat=cd.getRoleById(roleId);
			
			GsonBuilder gsonBuilder = new GsonBuilder();
			Gson  gson = gsonBuilder.create();
			String JSONObject = gson.toJson(cat);			    
			out.print(JSONObject);
		}else if(secret.equals("updateRole")) {
			int roleId=Integer.parseInt(request.getParameter("roleId"));
			String roleName=request.getParameter("roleName");
			RoleDao cd=new RoleDao();
		    int status=cd.updateRole(roleName,roleId);
		    if (status>0) {
				out.print("done");
			} else {
				out.print("failed");
			}
		}
	}

}
