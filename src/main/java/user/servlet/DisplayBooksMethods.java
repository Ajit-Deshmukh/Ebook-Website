package user.servlet;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;


public class DisplayBooksMethods {
	
	public List<Books> displayLatestBooks() {
		   Connection con = null;
	       List<Books> list = new ArrayList();
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:orcl","Ebook_App","java");
			String sql = "SELECT * FROM ADD_BOOKS";
		    PreparedStatement pst = con.prepareStatement(sql);
		    ResultSet rs = pst.executeQuery();
			int i = 1; 
			while(rs.next() && i <=5){
				Books b = new Books();
				b.setBook_id(rs.getInt("book_id"));
				b.setBook_name(rs.getString("book_name"));
				b.setAuther_name(rs.getString("auther_name"));
				b.setPrice(rs.getInt("price"));
				b.setPhoto(rs.getString("photo"));
				list.add(b);
				i++;
			}
	}catch(Exception e) {
		e.printStackTrace();
	}	
		return list;
	}
	
	
	public List<Books> displayDocuBooks() {
		   Connection con = null;
	       List<Books> list2 = new ArrayList<Books>();
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:orcl","Ebook_App","java");
			String sql = "SELECT * FROM ADD_BOOKS WHERE categories = ?";
		    PreparedStatement pst = con.prepareStatement(sql);
		    pst.setString(1,"Documentary");
		    ResultSet rs = pst.executeQuery();
			int i = 1; 
			while(rs.next() && i <=5){
				Books docub = new Books();
				docub.setBook_id(rs.getInt("book_id"));
				docub.setBook_name(rs.getString("book_name"));
				docub.setAuther_name(rs.getString("auther_name"));
				docub.setPrice(rs.getInt("price"));
				docub.setPhoto(rs.getString("photo"));
				list2.add(docub);
				i++;
			}
	}catch(Exception e) {
		e.printStackTrace();
	}	
		return list2;
	}
	
	public List<Books> displayAllBooks() {
		   Connection con = null;
	       List<Books> list3 = new ArrayList();
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:orcl","Ebook_App","java");
			String sql = "SELECT * FROM ADD_BOOKS";
		    PreparedStatement pst = con.prepareStatement(sql);
		    ResultSet rs = pst.executeQuery();
			while(rs.next()){
				Books allb = new Books();
				allb.setBook_id(rs.getInt("book_id"));
				allb.setBook_name(rs.getString("book_name"));
				allb.setAuther_name(rs.getString("auther_name"));
				allb.setPrice(rs.getInt("price"));
				allb.setPhoto(rs.getString("photo"));
				list3.add(allb);
			}
	}catch(Exception e) {
		e.printStackTrace();
	}	
		return list3;
	}
	

}
