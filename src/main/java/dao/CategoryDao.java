package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import bean.Category;
import utility.DbConnection;

public class CategoryDao {
	//save category
  public int saveCategory(String catName) {
	  int status=0;
	  try {
		Connection con=DbConnection.getConnection();
		String query="insert into category(catName) values(?)";
		PreparedStatement ps=con.prepareStatement(query);
		ps.setString(1, catName);
		status = ps.executeUpdate();
		ps.close();
		con.close();
	} catch (Exception e) {
		e.printStackTrace();
	}
	  return status;
  }
  
	public List<Category>  viewCategory(){
		ArrayList<Category> list=new ArrayList<>();
		try {
			Connection con=DbConnection.getConnection();
			String query="select catId,catName from category";
			PreparedStatement ps=con.prepareStatement(query);
			ResultSet rs= ps.executeQuery();
			while (rs.next()) {
				Category c=new Category();
				c.setCatId(rs.getInt(1));
				c.setCatName(rs.getString(2));
				list.add(c);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} 
		
		return list;
	}

	public int deleteCategory(int catId) {
		int status=0;
		try {
			Connection con=DbConnection.getConnection();
			String query="delete from category where catId=?";
			PreparedStatement ps=con.prepareStatement(query);
			ps.setInt(1, catId);
			status=ps.executeUpdate();
			ps.close();
			con.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return status;
	}

	public Category getCategoryById(int catId) {
		Category c=new Category();
		try {
			Connection con=DbConnection.getConnection();
			String query="select catId,catName from category where catId=?";
			PreparedStatement ps=con.prepareStatement(query);
			ps.setInt(1, catId);
			ResultSet rs= ps.executeQuery();
			while (rs.next()) {
				c.setCatId(rs.getInt(1));
				c.setCatName(rs.getString(2));
			}
		} catch (Exception e) {
			e.printStackTrace();
		}  
		return c;
	}

	public int updateCategory(String catName, int catId) {
		int status=0;
		  try {
			Connection con=DbConnection.getConnection();
			String query="update category set catName=? where catId=?";
			PreparedStatement ps=con.prepareStatement(query);
			ps.setString(1, catName);
			ps.setInt(2, catId);
			status = ps.executeUpdate();
			ps.close();
			con.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		  return status;
	}
  
}
