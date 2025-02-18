package controller;

import java.io.IOException;
import java.io.PrintWriter;

import bean.User;
import dao.CartDao;
import dao.LoginDao;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;


@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		String secret=request.getParameter("secret");
		
		if(secret.equals("loginOperation")) {
			String uEmail=request.getParameter("uEmail");
			String uPass=request.getParameter("uPass");
			
			LoginDao ld=new LoginDao();
			User user=ld.ckeck_User_Exist_Or_Not_And_Return_User(uEmail,uPass);
			
			HttpSession session=request.getSession(false);  
			
			if (user.getCount()>0) {
				if (user.getRoleId()==1 && user.getStatus().equals("active")) {
					session.setAttribute("uId", user.getUId());
					session.setAttribute("uName", user.getUName());
					session.setAttribute("roleId", user.getRoleId());
					session.setAttribute("uImg", user.getUImg());
					out.print("admin");
				} else if(user.getRoleId()==2 && user.getStatus().equals("active")) {
					session.setAttribute("uId", user.getUId());
					session.setAttribute("uName", user.getUName());
					session.setAttribute("roleId", user.getRoleId());
					session.setAttribute("uImg", user.getUImg());
					
					CartDao cd= new CartDao();
					int cartCount=cd.getCartCount(user.getUId());
					session.setAttribute("cartCount", cartCount);
					
					out.print("customer");
				}else {
					out.print("UserNotActive");
				}
			} else {
				out.print("UserNotExist");
			}
		}
	}


	

}
