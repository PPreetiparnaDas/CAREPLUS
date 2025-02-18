package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import bean.Cart;
import bean.Company;
import utility.DbConnection;

public class CartDao {

	public int addToCart(Cart cart) {
		int status=0;
		try {
			Connection con=DbConnection.getConnection();
			String query="insert into cart (pid,uId,qty,basePrice,totalPrice) values(?,?,?,?,?)";
			PreparedStatement ps=con.prepareStatement(query);
			ps.setInt(1, cart.getPid());
			ps.setInt(2, cart.getUId() );
			ps.setInt(3, cart.getQty());
			ps.setDouble(4, cart.getBasePrice());
			ps.setDouble(5, cart.getTotalPrice());
			status=ps.executeUpdate();
			ps.close();
			con.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return status;
	}

	public List<Cart> getAllCartByUid(int uId) {
		ArrayList<Cart> list=new ArrayList<>();
		try {
			Connection con=DbConnection.getConnection();
			String query="SELECT MIN(C.cartId) AS cartId,C.pid, SUM(C.qty) AS total_qty, C.basePrice,  SUM(C.totalPrice) AS total_price,  P.pName, P.imgName  FROM Cart AS C  INNER JOIN products AS P ON C.pid = P.pid  WHERE C.uId = ?  GROUP BY C.pid, C.basePrice, P.pName, P.imgName;";
			PreparedStatement ps=con.prepareStatement(query);
			ps.setInt(1, uId);
			ResultSet rs=ps.executeQuery();
			while (rs.next()) {
				Cart cart=new Cart();
				cart.setCartId(rs.getInt(1));
				cart.setPid(rs.getInt(2));
				cart.setQty(rs.getInt(3));
				cart.setBasePrice(rs.getDouble(4));
				cart.setTotalPrice(rs.getDouble(5));
				cart.setPname(rs.getString(6));
				cart.setImgName(rs.getString(7));
				list.add(cart);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}

	public int removeFromCart(int uId, int pid) {
		int status=0;
		try {
			Connection con=DbConnection.getConnection();
			String query="delete from Cart where pid=? and uId=?";
			PreparedStatement ps=con.prepareStatement(query);
			ps.setInt(1, pid);
			ps.setInt(2, uId);
			status=ps.executeUpdate();
			ps.close();
			con.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return status;
	}

	public int getCartCount(int uId) {
		int status=0;
		try {
			Connection con=DbConnection.getConnection();
			String query="SELECT count(distinct pid) FROM careplus.cart where uid=?";
			PreparedStatement ps=con.prepareStatement(query);
			ps.setInt(1, uId);
			ResultSet rs=ps.executeQuery();
			while (rs.next()) {
				status=rs.getInt(1);
			}
			rs.close();
			ps.close();
			con.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return status;
	}

	public void removeCartByUID(int uId) {
		try {
			Connection con=DbConnection.getConnection();
			String query="delete from cart where uid=?";
			PreparedStatement ps=con.prepareStatement(query);
			ps.setInt(1, uId);
			ps.executeUpdate();
			ps.close();
			con.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}

}
