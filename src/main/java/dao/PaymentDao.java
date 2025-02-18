package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import bean.Payment;
import utility.DbConnection;

public class PaymentDao {

	public int savePaymentdetailsAndGetPayId(Payment payment) {
	    int payId = -1;
	    try {
	        Connection con = DbConnection.getConnection();
	        String query = "INSERT INTO payment(cardNum, cvv, expDate, payDate, uId) VALUES (?, ?, ?, NOW(), ?)";
	        PreparedStatement ps = con.prepareStatement(query, Statement.RETURN_GENERATED_KEYS);
	        ps.setString(1, payment.getCardNum());
	        ps.setString(2, payment.getCvv());
	        ps.setString(3, payment.getExpDate());
	        ps.setInt(4, payment.getUId());
	        int status = ps.executeUpdate();
	        if (status > 0) {
	            ResultSet rs = ps.getGeneratedKeys();
	            if (rs.next()) {
	                payId = rs.getInt(1); 
	            }
	            rs.close();
	        }
	        ps.close();
	        con.close();
	    } catch (Exception e) {
	        e.printStackTrace();
	    }
	    return payId; 
	}

}
