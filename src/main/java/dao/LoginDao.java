package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import bean.User;
import utility.DbConnection;

public class LoginDao {

	public User ckeck_User_Exist_Or_Not_And_Return_User(String uEmail, String uPass) {
		User user = new User();
		try {
			Connection con=DbConnection.getConnection();
			String query="SELECT uId,uName,uImg,roleId,status,count(*) FROM careplus.user where uEmail=? and uPass=? group by uid;";
			PreparedStatement ps=con.prepareStatement(query);
			ps.setString(1, uEmail);
			ps.setString(2, uPass);
			ResultSet rs=ps.executeQuery();
			while (rs.next()) {
				user.setUId(rs.getInt(1));
				user.setUName(rs.getString(2));
				user.setUImg(rs.getString(3));
				user.setRoleId(rs.getInt(4));
				user.setStatus(rs.getString(5));
				user.setCount(rs.getInt(6));
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return user;
		
	}

}
