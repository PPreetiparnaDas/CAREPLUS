package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;

import bean.Category;
import dao.CategoryDao;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;


@WebServlet("/CategoryServlet")
public class CategoryServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		String secret=request.getParameter("secret");
		
		if(secret.equals("SaveServlet")) {
			String catName=request.getParameter("catName");
			CategoryDao cd=new CategoryDao();
		    int status=cd.saveCategory(catName);
		    if (status>0) {
				out.print("done");
			} else {
				out.print("failed");
			}
		}else if(secret.equals("viewServlet")) {
			CategoryDao cd=new CategoryDao();
			List<Category> catList=cd.viewCategory();
			
			GsonBuilder gsonBuilder = new GsonBuilder();
			Gson  gson = gsonBuilder.create();
			String JSONObject = gson.toJson(catList);			    
			out.print(JSONObject);				
		}else if(secret.equals("deleteCategory")) {
			int catId=Integer.parseInt(request.getParameter("catId"));
			CategoryDao cd=new CategoryDao();
			int status=cd.deleteCategory(catId);
			if (status>0) {
				out.print("done");
			} else {
				out.print("Failed");
			}
		}else if(secret.equals("getCategoryById")) {
			int catId=Integer.parseInt(request.getParameter("catId"));
			CategoryDao cd=new CategoryDao();
			Category cat=cd.getCategoryById(catId);
			
			GsonBuilder gsonBuilder = new GsonBuilder();
			Gson  gson = gsonBuilder.create();
			String JSONObject = gson.toJson(cat);			    
			out.print(JSONObject);
		}else if(secret.equals("updateCategory")) {
			int catId=Integer.parseInt(request.getParameter("catId"));
			String catName=request.getParameter("catName");
			CategoryDao cd=new CategoryDao();
		    int status=cd.updateCategory(catName,catId);
		    if (status>0) {
				out.print("done");
			} else {
				out.print("failed");
			}
		}
	}

}
