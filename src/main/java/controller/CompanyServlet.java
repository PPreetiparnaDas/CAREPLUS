package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;

import bean.Company;
import dao.CompanyDao;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/CompanyServlet")
public class CompanyServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		
		String secret=request.getParameter("secret");
		
		if(secret.equals("SaveServlet")) {
			String  comName= request.getParameter("comName");
			String  comEmail= request.getParameter("comEmail");
			String  comPass= request.getParameter("comPass");
			String  comPhone= request.getParameter("comPhone");
			String  comAdd= request.getParameter("comAdd");
			
			Company c=new Company();
			c.setComAdd(comAdd);
			c.setComEmail(comEmail);
			c.setComName(comName);
			c.setComPass(comPass);
			c.setComPhone(comPhone);
			
			
			CompanyDao cd=new CompanyDao();
			int status=cd.saveCompany(c);
			if (status>0) {
				out.print("done");
			} else {
				out.print("fail");
			}
		}else if(secret.equals("viewCompany")) {
			CompanyDao cd=new CompanyDao();
			List<Company> listComp =cd.getAllCompany();
			
			GsonBuilder gsonBuilder = new GsonBuilder();
			Gson  gson = gsonBuilder.create();
			String JSONObject = gson.toJson(listComp);			    
			out.print(JSONObject);	
		}else if(secret.equals("getCompanyByStatus")) {
			CompanyDao cd=new CompanyDao();
			List<Company> listComp =cd.getAllCompanyByStatus();
			
			GsonBuilder gsonBuilder = new GsonBuilder();
			Gson  gson = gsonBuilder.create();
			String JSONObject = gson.toJson(listComp);			    
			out.print(JSONObject);	
		}
		else if(secret.equals("inactiveCompany")) {
			int comId=Integer.parseInt(request.getParameter("comId"));
			CompanyDao cd=new CompanyDao();
			int msg=cd.inactiveStatusById(comId);
			if (msg>0) {
				out.print("done");
			} else {
				out.print("fail");
			}
		}else if(secret.equals("getCompanyById")) {
			int comId=Integer.parseInt(request.getParameter("comId"));
			CompanyDao cd=new CompanyDao();
			Company Comp =cd.getCompanyById(comId);
			
			GsonBuilder gsonBuilder = new GsonBuilder();
			Gson  gson = gsonBuilder.create();
			String JSONObject = gson.toJson(Comp);			    
			out.print(JSONObject);	
		}else if(secret.equals("updateCompany")) {
			String  comName= request.getParameter("comName");
			String  comEmail= request.getParameter("comEmail");
			String  comPass= request.getParameter("comPass");
			String  comPhone= request.getParameter("comPhone");
			String  comAdd= request.getParameter("comAdd");
			int comId=Integer.parseInt(request.getParameter("comId"));
			String  status= request.getParameter("status");
			
			Company c=new Company();
			c.setComAdd(comAdd);
			c.setComEmail(comEmail);
			c.setComName(comName);
			c.setComPass(comPass);
			c.setComPhone(comPhone);
			c.setComId(comId);
			c.setStatus(status);
			
			CompanyDao cd=new CompanyDao();
			int msg=cd.updateCompany(c);
			if (msg>0) {
				out.print("done");
			} else {
				out.print("fail");
			}
		}
	}

}
