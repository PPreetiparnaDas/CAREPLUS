package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;

import bean.Cart;
import dao.CartDao;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/CartServlet")
public class CartServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;



	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		String secret=request.getParameter("secret");
		if(secret.equals("AddToCart")) {
			int pid=Integer.parseInt(request.getParameter("hpid"));
			double basePrice=Double.parseDouble(request.getParameter("hprice"));
			int qty=Integer.parseInt(request.getParameter("qty"));
			double totalPrice=qty*basePrice;
			HttpSession session=request.getSession(false);  
			int uId=(int)session.getAttribute("uId");

			Cart cart=new Cart();
			cart.setBasePrice(basePrice);
			cart.setPid(pid);
			cart.setQty(qty);
			cart.setTotalPrice(totalPrice);
			cart.setUId(uId);

			CartDao cd=new CartDao();
			int msg=cd.addToCart(cart);
			if (msg>0) {
				int cartCount=cd.getCartCount(uId);
				session.setAttribute("cartCount", cartCount);
				response.sendRedirect("cart.jsp");
			} else {
				response.sendRedirect("error.jsp");
			}
		}else if(secret.equals("getAllCartByUid")){
			HttpSession session=request.getSession(false);  
			int uId=(int)session.getAttribute("uId");
			CartDao cd=new CartDao();
			List<Cart> list =cd.getAllCartByUid(uId);

			GsonBuilder gsonBuilder = new GsonBuilder();
			Gson  gson = gsonBuilder.create();
			String JSONObject = gson.toJson(list);			    
			out.print(JSONObject);	
		}else if(secret.equals("RemoveCart")){
			HttpSession session=request.getSession(false);  
			int uId=(int)session.getAttribute("uId");
			int pid=Integer.parseInt(request.getParameter("pid"));
			CartDao cd=new CartDao();
			int msg =cd.removeFromCart(uId,pid);
			if (msg>0) {
				out.print("done");
			} else {
				response.sendRedirect("error.jsp");
			}

		}
	}

}
