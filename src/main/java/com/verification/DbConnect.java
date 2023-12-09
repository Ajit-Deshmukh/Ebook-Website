package com.verification;

import java.sql.Connection;
import java.sql.DriverManager;

public class DbConnect {
	
	
	 
	   
	public static  Connection getCon() {
		Connection con=null;
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:orcl","Ebook_App","java");
			if(con != null) {
				System.out.println("connection established");
			}
			else {
				System.out.println("no connection established");
			}
			
			
		}catch(Exception e) {
			e.printStackTrace();	
			
		}

		return con;
	}
	
}
