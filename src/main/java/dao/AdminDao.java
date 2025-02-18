package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import bean.User;
import utility.DbConnection;

public class AdminDao {

	public int saveAdmin(User u) {
		int status=0;
		try {
		   Connection con=DbConnection.getConnection();
		   String query="insert into user (uName,uEmail,uPass,uAdd,uPhone,uImg,createdDate,roleId)values(?,?,?,?,?,?,now(),?)";
		   PreparedStatement  ps=con.prepareStatement(query);
		   ps.setString(1, u.getUName());
		   ps.setString(2, u.getUEmail());
		   ps.setString(3, u.getUPass());
		   ps.setString(4, u.getUAdd());
		   ps.setString(5, u.getUPhone());
		   ps.setString(6, u.getUImg());
		   ps.setInt(7, 1);
		   status=ps.executeUpdate();
		   ps.close();
		   con.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return status;
	}

	public List<User> getAllAdmin() {
		ArrayList<User> list=new ArrayList<>();
		try {
			 Connection con=DbConnection.getConnection();
			 String query="select uId,uName,uEmail,uPass,uAdd,uPhone,uImg,createdDate,updatedDate,status from user where roleId=1";
			 PreparedStatement  ps=con.prepareStatement(query);
			 ResultSet rs=ps.executeQuery();
			 while (rs.next()) {
				User u=new User();
				u.setUId(rs.getInt("uId"));
				u.setUName(rs.getString("uName"));
			    u.setUEmail(rs.getString("uEmail"));
			    u.setUPass(rs.getString("uPass"));
			    u.setUAdd(rs.getString("uAdd"));
			    u.setUPhone(rs.getString("uPhone"));
			    u.setUImg(rs.getString("uImg"));
			    u.setCreatedDate(rs.getString("createdDate"));
			    u.setUpdatedDate(rs.getString("updatedDate"));
			    u.setStatus(rs.getString("status"));
			    list.add(u);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}

	public int inactiveStatusById(int uId) {
		int status=0;
 		try {
 			Connection con=DbConnection.getConnection();
 			String query="update user set status='inactive' , updatedDate=now() where uid=?";
 			PreparedStatement ps=con.prepareStatement(query);
 			ps.setInt(1, uId);
 			status=ps.executeUpdate();
 			ps.close();
 			con.close();
 		} catch (Exception e) {
 			e.printStackTrace();
 		}
 		return status;
	}

	public User getAdminById(int uId) {
		User u=new User();
		try {
			 Connection con=DbConnection.getConnection();
			 String query="select uId,uName,uEmail,uPass,uAdd,uPhone,uImg,createdDate,updatedDate,status from user where roleId=1 and uId=?";
			 PreparedStatement  ps=con.prepareStatement(query);
			 ps.setInt(1, uId);
			 ResultSet rs=ps.executeQuery();
			 while (rs.next()) {
				u.setUId(rs.getInt("uId"));
				u.setUName(rs.getString("uName"));
			    u.setUEmail(rs.getString("uEmail"));
			    u.setUPass(rs.getString("uPass"));
			    u.setUAdd(rs.getString("uAdd"));
			    u.setUPhone(rs.getString("uPhone"));
			    u.setUImg(rs.getString("uImg"));
			    u.setCreatedDate(rs.getString("createdDate"));
			    u.setUpdatedDate(rs.getString("updatedDate"));
			    u.setStatus(rs.getString("status"));
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return u;
	}

	public int UpdateAdmin(User u) {
		int status=0;
		try {
		   Connection con=DbConnection.getConnection();
		   String query="update user set uName=?,uEmail=?,uPass=?,uAdd=?,uPhone=?,uImg=?,updatedDate=now(),status=? where roleId=1 and uId=?";
		   PreparedStatement  ps=con.prepareStatement(query);
		   ps.setString(1, u.getUName());
		   ps.setString(2, u.getUEmail());
		   ps.setString(3, u.getUPass());
		   ps.setString(4, u.getUAdd());
		   ps.setString(5, u.getUPhone());
		   ps.setString(6, u.getUImg());
		   ps.setString(7, u.getStatus());
		   ps.setInt(8, u.getUId());
		   status=ps.executeUpdate();
		   ps.close();
		   con.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return status;
	}

}
