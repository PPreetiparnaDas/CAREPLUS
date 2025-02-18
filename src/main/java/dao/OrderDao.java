package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import bean.Order;
import bean.Product;
import utility.DbConnection;

public class OrderDao {

	public int saveOrder(Order o) {
		int status=0;
		try {
			Connection con=DbConnection.getConnection();
			String query="insert into orders (qty,basePrice,totalAmount,state,pincode,email,phone,oDate,uId,payId,pid) values(?,?,?,?,?,?,?,now(),?,?,?)";
			PreparedStatement ps=con.prepareStatement(query);
			ps.setInt(1, o.getQty());
			ps.setDouble(2, o.getBasePrice());
			ps.setDouble(3, o.getTotalAmount());
			ps.setString(4, o.getState());
			ps.setString(5, o.getPincode());
			ps.setString(6, o.getEmail());
			ps.setString(7, o.getPhone());
			ps.setInt(8, o.getUId());
			ps.setInt(9, o.getPayId());
			ps.setInt(10, o.getPid());
			status=ps.executeUpdate();
			ps.close();
			con.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return status;
	}

	public List<Order> getAllOrders() {
		 ArrayList<Order> list=new ArrayList<>();
	   	 try {
				Connection con=DbConnection.getConnection();
				String query="SELECT A.oid,A.qty,A.basePrice,A.totalAmount,A.state,A.pincode,A.phone,A.oDate,A.status,B.uName,C.pname,C.imgName,D.cardNum,D.expDate,D.cvv FROM careplus.orders as A inner join careplus.user As B  on A.uId=B.uId Inner join  careplus.Products As C on A.pid=C.pid inner join careplus.payment As D on A.payId=D.payId;";
				PreparedStatement ps=con.prepareStatement(query);
				ResultSet rs= ps.executeQuery();
				while (rs.next()) {
					Order o=new Order();
					o.setOid(rs.getInt(1));
					o.setQty(rs.getInt(2));
					o.setBasePrice(rs.getDouble(3));
					o.setTotalAmount(rs.getDouble(4));
					o.setState(rs.getString(5));
					o.setPincode(rs.getString(6));
					o.setPhone(rs.getString(7));
					o.setODate(rs.getString(8));
					o.setStatus(rs.getString(9));
					o.setUName(rs.getString(10));
					o.setPname(rs.getString(11));
					o.setImgName(rs.getString(12));
					o.setCardNum(rs.getString(13));
					o.setExpDate(rs.getString(14));
					o.setCvv(rs.getString(15));
					list.add(o);
				}
			} catch (Exception e) {
				e.printStackTrace();
			}
	   	 return list;
	}

	public List<Order> getAllOrdersByUserId(int uId) {
		ArrayList<Order> list=new ArrayList<>();
	   	 try {
				Connection con=DbConnection.getConnection();
				String query="SELECT A.oid,A.qty,A.basePrice,A.totalAmount,A.state,A.pincode,A.phone,A.oDate,A.status,B.uName,C.pname,C.imgName,D.cardNum,D.expDate,D.cvv FROM careplus.orders as A inner join careplus.user As B  on A.uId=B.uId Inner join  careplus.Products As C on A.pid=C.pid inner join careplus.payment As D on A.payId=D.payId where A.uId=?;";
				PreparedStatement ps=con.prepareStatement(query);
				ps.setInt(1, uId);
				ResultSet rs= ps.executeQuery();
				while (rs.next()) {
					Order o=new Order();
					o.setOid(rs.getInt(1));
					o.setQty(rs.getInt(2));
					o.setBasePrice(rs.getDouble(3));
					o.setTotalAmount(rs.getDouble(4));
					o.setState(rs.getString(5));
					o.setPincode(rs.getString(6));
					o.setPhone(rs.getString(7));
					o.setODate(rs.getString(8));
					o.setStatus(rs.getString(9));
					o.setUName(rs.getString(10));
					o.setPname(rs.getString(11));
					o.setImgName(rs.getString(12));
					o.setCardNum(rs.getString(13));
					o.setExpDate(rs.getString(14));
					o.setCvv(rs.getString(15));
					list.add(o);
				}
			} catch (Exception e) {
				e.printStackTrace();
			}
	   	 return list;
	}

	public Order getSpecificOrderDetailsByOid(int oid, int uId) {
		Order o=new Order();
		 try {
				Connection con=DbConnection.getConnection();
				String query="SELECT A.oid,A.qty,A.basePrice,A.totalAmount,A.email,A.phone,A.state,A.pincode,A.phone,A.oDate,A.status,B.uName,C.pname,C.imgName,D.cardNum,D.expDate,D.cvv FROM careplus.orders as A inner join careplus.user As B  on A.uId=B.uId Inner join  careplus.Products As C on A.pid=C.pid inner join careplus.payment As D on A.payId=D.payId where A.uId=? and A.oid=?;";
				PreparedStatement ps=con.prepareStatement(query);
				ps.setInt(1, uId);
				ps.setInt(2, oid);
				ResultSet rs= ps.executeQuery();
				while (rs.next()) {
					o.setOid(rs.getInt(1));
					o.setQty(rs.getInt(2));
					o.setBasePrice(rs.getDouble(3));
					o.setTotalAmount(rs.getDouble(4));
					o.setEmail(rs.getString(5));
					o.setPhone(rs.getString(6));
					o.setState(rs.getString(7));
					o.setPincode(rs.getString(8));
					o.setPhone(rs.getString(9));
					o.setODate(rs.getString(10));
					o.setStatus(rs.getString(11));
					o.setUName(rs.getString(12));
					o.setPname(rs.getString(13));
					o.setImgName(rs.getString(14));
					o.setCardNum(rs.getString(15));
					o.setExpDate(rs.getString(16));
					o.setCvv(rs.getString(17));
				}
			} catch (Exception e) {
				e.printStackTrace();
			}
		return o;
	}

}
