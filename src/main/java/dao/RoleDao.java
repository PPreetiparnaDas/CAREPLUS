package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import bean.Role;
import utility.DbConnection;

public class RoleDao {
	//save Role
	  public int saveRole(String roleName) {
		  int status=0;
		  try {
			Connection con=DbConnection.getConnection();
			String query="insert into Role(roleName) values(?)";
			PreparedStatement ps=con.prepareStatement(query);
			ps.setString(1, roleName);
			status = ps.executeUpdate();
			ps.close();
			con.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		  return status;
	  }
	  
		public List<Role>  viewRole(){
			ArrayList<Role> list=new ArrayList<>();
			try {
				Connection con=DbConnection.getConnection();
				String query="select roleId,roleName from Role";
				PreparedStatement ps=con.prepareStatement(query);
				ResultSet rs= ps.executeQuery();
				while (rs.next()) {
					Role c=new Role();
					c.setRoleId(rs.getInt(1));
					c.setRoleName(rs.getString(2));
					list.add(c);
				}
			} catch (Exception e) {
				e.printStackTrace();
			} 
			
			return list;
		}

		public int deleteRole(int roleId) {
			int status=0;
			try {
				Connection con=DbConnection.getConnection();
				String query="delete from Role where roleId=?";
				PreparedStatement ps=con.prepareStatement(query);
				ps.setInt(1, roleId);
				status=ps.executeUpdate();
				ps.close();
				con.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
			return status;
		}

		public Role getRoleById(int roleId) {
			Role c=new Role();
			try {
				Connection con=DbConnection.getConnection();
				String query="select roleId,roleName from Role where roleId=?";
				PreparedStatement ps=con.prepareStatement(query);
				ps.setInt(1, roleId);
				ResultSet rs= ps.executeQuery();
				while (rs.next()) {
					c.setRoleId(rs.getInt(1));
					c.setRoleName(rs.getString(2));
				}
			} catch (Exception e) {
				e.printStackTrace();
			}  
			return c;
		}

		public int updateRole(String roleName, int roleId) {
			int status=0;
			  try {
				Connection con=DbConnection.getConnection();
				String query="update Role set roleName=? where roleId=?";
				PreparedStatement ps=con.prepareStatement(query);
				ps.setString(1, roleName);
				ps.setInt(2, roleId);
				status = ps.executeUpdate();
				ps.close();
				con.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
			  return status;
		}
	  
}
