package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import bean.Product;
import utility.DbConnection;

public class ProductDao {

	public int saveProduct(Product product) {
		int status=0;
		try {
			Connection con=DbConnection.getConnection();
			String query="insert into products(pname,pdesc,imgName,availability,price,manufDate,expDate,createdDate,catId,comId) values(?,?,?,?,?,?,?,now(),?,?)";
			PreparedStatement ps=con.prepareStatement(query);
			ps.setString(1, product.getPname() );
			ps.setString(2, product.getPdesc() );
			ps.setString(3, product.getImgName() );
			ps.setInt(4, product.getAvailability() );
			ps.setDouble(5, product.getPrice() );
			ps.setString(6, product.getManufDate() );
			ps.setString(7, product.getExpDate() );
			ps.setInt(8, product.getCatId() );
			ps.setInt(9, product.getComId() );
			
			status=ps.executeUpdate();
			ps.close();
			con.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return status;
	}
	
	//view Product

     public List<Product> getAllProduct(){
    	 ArrayList<Product> list=new ArrayList<>();
    	 try {
			Connection con=DbConnection.getConnection();
			String query="SELECT P.pid,P.pname,P.pdesc,P.price,P.availability,P.imgName,P.createdDate,P.expDate,P.status,P.updatedDate,P.manufDate,C.catId,C.catName,Com.comId,Com.comName FROM careplus.products as P inner join careplus.category as C on P.catId=C.catId inner join careplus.companies as Com on P.comId=Com.comId;";
			PreparedStatement ps=con.prepareStatement(query);
			ResultSet rs= ps.executeQuery();
			while (rs.next()) {
				Product p=new Product();
				p.setPid(rs.getInt(1));
				p.setPname(rs.getString(2));
				p.setPdesc(rs.getString(3));
				p.setPrice(rs.getDouble(4));
				p.setAvailability(rs.getInt(5));
				p.setImgName(rs.getString(6));
				p.setCreatedDate(rs.getString(7));
				p.setExpDate(rs.getString(8));
				p.setStatus(rs.getString(9));
				p.setUpdatedDate(rs.getString(10));
				p.setManufDate(rs.getString(11));
				p.setCatId(rs.getInt(12));
				p.setCatName(rs.getString(13));
				p.setComId(rs.getInt(14));
				p.setComName(rs.getString(15));
				list.add(p);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
    	 return list;
     }
     
     public int inactiveStatusById(int pid) {
 		int status=0;
 		try {
 			Connection con=DbConnection.getConnection();
 			String query="update products set status='inactive' , updatedDate=now() where pid=?";
 			PreparedStatement ps=con.prepareStatement(query);
 			ps.setInt(1, pid);
 			status=ps.executeUpdate();
 			ps.close();
 			con.close();
 		} catch (Exception e) {
 			e.printStackTrace();
 		}
 		return status;
 	}

	public Product getProductById(int pid) {
		Product p=new Product();
		 try {
				Connection con=DbConnection.getConnection();
				String query="SELECT P.pid,P.pname,P.pdesc,P.price,P.availability,P.imgName,P.createdDate,P.expDate,P.status,P.updatedDate,P.manufDate,C.catId,C.catName,Com.comId,Com.comName FROM careplus.products as P inner join careplus.category as C on P.catId=C.catId inner join careplus.companies as Com on P.comId=Com.comId where P.pid=?";
				PreparedStatement ps=con.prepareStatement(query);
				ps.setInt(1, pid);
				ResultSet rs= ps.executeQuery();
				while (rs.next()) {
					p.setPid(rs.getInt(1));
					p.setPname(rs.getString(2));
					p.setPdesc(rs.getString(3));
					p.setPrice(rs.getDouble(4));
					p.setAvailability(rs.getInt(5));
					p.setImgName(rs.getString(6));
					p.setCreatedDate(rs.getString(7));
					p.setExpDate(rs.getString(8));
					p.setStatus(rs.getString(9));
					p.setUpdatedDate(rs.getString(10));
					p.setManufDate(rs.getString(11));
					p.setCatId(rs.getInt(12));
					p.setCatName(rs.getString(13));
					p.setComId(rs.getInt(14));
					p.setComName(rs.getString(15));
				}
			} catch (Exception e) {
				e.printStackTrace();
			}
		return p;
	}

	public int updateProduct(Product product) {
		int status=0;
		try {
			Connection con=DbConnection.getConnection();
			String query="update products set pname=?,pdesc=?,imgName=?,availability=?,price=?,manufDate=?,expDate=?,updatedDate=now(),catId=?,comId=?,status=? where pid=?";
			PreparedStatement ps=con.prepareStatement(query);
			ps.setString(1, product.getPname() );
			ps.setString(2, product.getPdesc() );
			ps.setString(3, product.getImgName() );
			ps.setInt(4, product.getAvailability() );
			ps.setDouble(5, product.getPrice() );
			ps.setString(6, product.getManufDate() );
			ps.setString(7, product.getExpDate() );
			ps.setInt(8, product.getCatId() );
			ps.setInt(9, product.getComId() );
			ps.setString(10,product.getStatus());
			ps.setInt(11, product.getPid() );
			status=ps.executeUpdate();
			ps.close();
			con.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return status;
	}

	public List<Product> getAllProductByCatId(int catId) {
		 ArrayList<Product> list=new ArrayList<>();
    	 try {
			Connection con=DbConnection.getConnection();
			String query="SELECT P.pid,P.pname,P.pdesc,P.price,P.availability,P.imgName,P.createdDate,P.expDate,P.status,P.updatedDate,P.manufDate,C.catId,C.catName,Com.comId,Com.comName FROM careplus.products as P inner join careplus.category as C on P.catId=C.catId inner join careplus.companies as Com on P.comId=Com.comId  where P.catId=?;";
			PreparedStatement ps=con.prepareStatement(query);
			ps.setInt(1, catId);;
			ResultSet rs= ps.executeQuery();
			while (rs.next()) {
				Product p=new Product();
				p.setPid(rs.getInt(1));
				p.setPname(rs.getString(2));
				p.setPdesc(rs.getString(3));
				p.setPrice(rs.getDouble(4));
				p.setAvailability(rs.getInt(5));
				p.setImgName(rs.getString(6));
				p.setCreatedDate(rs.getString(7));
				p.setExpDate(rs.getString(8));
				p.setStatus(rs.getString(9));
				p.setUpdatedDate(rs.getString(10));
				p.setManufDate(rs.getString(11));
				p.setCatId(rs.getInt(12));
				p.setCatName(rs.getString(13));
				p.setComId(rs.getInt(14));
				p.setComName(rs.getString(15));
				list.add(p);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
    	 return list;
	}
	public List<Product> getAllProductByComId(int comId) {
		 ArrayList<Product> list=new ArrayList<>();
   	 try {
			Connection con=DbConnection.getConnection();
			String query="SELECT P.pid,P.pname,P.pdesc,P.price,P.availability,P.imgName,P.createdDate,P.expDate,P.status,P.updatedDate,P.manufDate,C.catId,C.catName,Com.comId,Com.comName FROM careplus.products as P inner join careplus.category as C on P.catId=C.catId inner join careplus.companies as Com on P.comId=Com.comId  where P.comId=?;";
			PreparedStatement ps=con.prepareStatement(query);
			ps.setInt(1, comId);
			ResultSet rs= ps.executeQuery();
			while (rs.next()) {
				Product p=new Product();
				p.setPid(rs.getInt(1));
				p.setPname(rs.getString(2));
				p.setPdesc(rs.getString(3));
				p.setPrice(rs.getDouble(4));
				p.setAvailability(rs.getInt(5));
				p.setImgName(rs.getString(6));
				p.setCreatedDate(rs.getString(7));
				p.setExpDate(rs.getString(8));
				p.setStatus(rs.getString(9));
				p.setUpdatedDate(rs.getString(10));
				p.setManufDate(rs.getString(11));
				p.setCatId(rs.getInt(12));
				p.setCatName(rs.getString(13));
				p.setComId(rs.getInt(14));
				p.setComName(rs.getString(15));
				list.add(p);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
   	 return list;
	}

	public List<Product> viewRecentProducts() {
		 ArrayList<Product> list=new ArrayList<>();
	   	 try {
				Connection con=DbConnection.getConnection();
				String query="SELECT P.pid,P.pname,P.pdesc,P.price,P.availability,P.imgName,P.createdDate,P.expDate,P.status,P.updatedDate,P.manufDate,C.catId,C.catName,Com.comId,Com.comName FROM careplus.products as P inner join careplus.category as C on P.catId=C.catId inner join careplus.companies as Com on P.comId=Com.comId  ORDER BY RAND() LIMIT 3;";
				PreparedStatement ps=con.prepareStatement(query);
				ResultSet rs= ps.executeQuery();
				while (rs.next()) {
					Product p=new Product();
					p.setPid(rs.getInt(1));
					p.setPname(rs.getString(2));
					p.setPdesc(rs.getString(3));
					p.setPrice(rs.getDouble(4));
					p.setAvailability(rs.getInt(5));
					p.setImgName(rs.getString(6));
					p.setCreatedDate(rs.getString(7));
					p.setExpDate(rs.getString(8));
					p.setStatus(rs.getString(9));
					p.setUpdatedDate(rs.getString(10));
					p.setManufDate(rs.getString(11));
					p.setCatId(rs.getInt(12));
					p.setCatName(rs.getString(13));
					p.setComId(rs.getInt(14));
					p.setComName(rs.getString(15));
					list.add(p);
				}
			} catch (Exception e) {
				e.printStackTrace();
			}
	   	 return list;
	}

	public void updateStock(int qty, int pid) {
		Product p=getProductById(pid);
		int finalQty=p.getAvailability()-qty;
		try {
			Connection con=DbConnection.getConnection();
			String query="update products set availability=? where pid=?";
			PreparedStatement ps=con.prepareStatement(query);
			ps.setInt(1, finalQty);
			ps.setInt(2, pid);
			ps.executeUpdate();
			ps.close();
			con.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	public List<Product> SearchProduct(String search) {
	       ArrayList<Product> list=new ArrayList<>();
	         try {
	        Connection con=DbConnection.getConnection();
	        String query="select * from (SELECT P.pid,P.pname,P.pdesc,P.price,P.availability,P.imgName,P.createdDate,P.expDate,P.status,P.updatedDate,P.manufDate,C.catId,C.catName,Com.comId,Com.comName FROM careplus.products as P inner join careplus.category as C on P.catId=C.catId inner join careplus.companies as Com on P.comId=Com.comId) as T where T.pname like '"+search+"%'";
	        System.out.println(query);
	        Statement ps=con.createStatement();
	        ResultSet rs= ps.executeQuery(query);
	        while (rs.next()) {
	          Product p=new Product();
	          p.setPid(rs.getInt(1));
	          p.setPname(rs.getString(2));
	          p.setPdesc(rs.getString(3));
	          p.setPrice(rs.getDouble(4));
	          p.setAvailability(rs.getInt(5));
	          p.setImgName(rs.getString(6));
	          p.setCreatedDate(rs.getString(7));
	          p.setExpDate(rs.getString(8));
	          p.setStatus(rs.getString(9));
	          p.setUpdatedDate(rs.getString(10));
	          p.setManufDate(rs.getString(11));
	          p.setCatId(rs.getInt(12));
	          p.setCatName(rs.getString(13));
	          p.setComId(rs.getInt(14));
	          p.setComName(rs.getString(15));
	          list.add(p);
	        }
	      } catch (Exception e) {
	        e.printStackTrace();
	      }
	         return list;
	    }
}
