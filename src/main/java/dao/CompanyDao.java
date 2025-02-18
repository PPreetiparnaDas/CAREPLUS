package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import bean.Company;
import utility.DbConnection;

public class CompanyDao {

	public int saveCompany(Company c) {
		int status=0;
		try {
			Connection con=DbConnection.getConnection();
			String query="insert into companies(comName,comEmail,comPass,comPhone,comAdd,createdDate) values(?,?,?,?,?,now())";
			PreparedStatement ps=con.prepareStatement(query);
			ps.setString(1, c.getComName());
			ps.setString(2, c.getComEmail());
			ps.setString(3, c.getComPass());
			ps.setString(4, c.getComPhone());
			ps.setString(5, c.getComAdd());
			status=ps.executeUpdate();
			ps.close();
			con.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return status;
	}

	public List<Company> getAllCompany() {
		ArrayList<Company> list=new ArrayList<>();
		try {
			Connection con=DbConnection.getConnection();
			String query="select comId ,comName ,comEmail ,comPass ,comPhone,comAdd ,createdDate ,updatedDate ,status from companies";
			PreparedStatement ps=con.prepareStatement(query);
			ResultSet rs=ps.executeQuery();
			while (rs.next()) {
				Company c=new Company();
				c.setComId(rs.getInt(1));
				c.setComName(rs.getString(2));
				c.setComEmail(rs.getString(3));
				c.setComPass(rs.getString(4));
				c.setComPhone(rs.getString(5));
				c.setComAdd(rs.getString(6));
				c.setCreatedDate(rs.getString(7));
				c.setUpdatedDate(rs.getString(8));
				c.setStatus(rs.getString(9));
				list.add(c);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}
	public List<Company> getAllCompanyByStatus() {
		ArrayList<Company> list=new ArrayList<>();
		try {
			Connection con=DbConnection.getConnection();
			String query="select comId ,comName ,comEmail ,comPass ,comPhone,comAdd ,createdDate ,updatedDate ,status from companies where status='active'";
			PreparedStatement ps=con.prepareStatement(query);
			ResultSet rs=ps.executeQuery();
			while (rs.next()) {
				Company c=new Company();
				c.setComId(rs.getInt(1));
				c.setComName(rs.getString(2));
				c.setComEmail(rs.getString(3));
				c.setComPass(rs.getString(4));
				c.setComPhone(rs.getString(5));
				c.setComAdd(rs.getString(6));
				c.setCreatedDate(rs.getString(7));
				c.setUpdatedDate(rs.getString(8));
				c.setStatus(rs.getString(9));
				list.add(c);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}

	public int inactiveStatusById(int comId) {
		int status=0;
		try {
			Connection con=DbConnection.getConnection();
			String query="update companies set status='inactive' , updatedDate=now() where comId=?";
			PreparedStatement ps=con.prepareStatement(query);
			ps.setInt(1, comId);
			status=ps.executeUpdate();
			ps.close();
			con.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return status;
	}

	public Company getCompanyById(int comId) {
		Company c=new Company();
		try {
			Connection con=DbConnection.getConnection();
			String query="select comId ,comName ,comEmail ,comPass ,comPhone,comAdd ,createdDate ,updatedDate ,status from companies where comId=?";
			PreparedStatement ps=con.prepareStatement(query);
			ps.setInt(1, comId);
			ResultSet rs=ps.executeQuery();
			while (rs.next()) {
				c.setComId(rs.getInt(1));
				c.setComName(rs.getString(2));
				c.setComEmail(rs.getString(3));
				c.setComPass(rs.getString(4));
				c.setComPhone(rs.getString(5));
				c.setComAdd(rs.getString(6));
				c.setCreatedDate(rs.getString(7));
				c.setUpdatedDate(rs.getString(8));
				c.setStatus(rs.getString(9));
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return c;
	}

	public int updateCompany(Company c) {
		int status=0;
		try {
			Connection con=DbConnection.getConnection();
			String query="update companies set comName=?,comEmail=?,comPass=?,comPhone=?,comAdd=?,updatedDate=now(),status=? where comId=?";
			PreparedStatement ps=con.prepareStatement(query);
			ps.setString(1, c.getComName());
			ps.setString(2, c.getComEmail());
			ps.setString(3, c.getComPass());
			ps.setString(4, c.getComPhone());
			ps.setString(5, c.getComAdd());
			ps.setString(6, c.getStatus());
			ps.setInt(7, c.getComId());
			
			status=ps.executeUpdate();
			ps.close();
			con.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return status;
	}

}
