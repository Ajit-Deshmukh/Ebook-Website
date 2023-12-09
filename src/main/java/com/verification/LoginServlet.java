package com.verification;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

@WebServlet("/login")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		Connection con = null;
		
		
		String em = request.getParameter("email");
		String pa = request.getParameter("pass");
		
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:orcl","Ebook_App","java");
			if(con != null) {
				System.out.println("connection established");
			}
			else {
				System.out.println("no connection established");
			}
			HttpSession session = request.getSession();

		
		if("admin@gmail.com".equals(em) && "admin123".equals(pa)) {
			
			response.sendRedirect("adminhome.jsp");
			
		}else {
			
			PreparedStatement ps = con.prepareStatement("select * from userdetails where email = ? and password = ? ");
			ps.setString(1, em);
			ps.setString(2, pa);
//			System.out.println(em);
//			System.out.println(pa);

			ResultSet rs = ps.executeQuery();
			
			if(rs.next()) {
				
				session.setAttribute("Email", rs.getString("email"));
				session.setAttribute("Password", rs.getString("password"));
				response.sendRedirect("index.jsp");
			}else {
				session.setAttribute("status", "Invalid Credentials");
				response.sendRedirect("login.jsp");
			}
			
//			if(!=null) {
//			
//				session.setAttribute("userobj", us);
//				response.sendRedirect("userhome.jsp");
//			}else {
//				session.setAttribute("failedmsg", "Invalid Email or Password");
//				response.sendRedirect("login.jsp");
//			}
			
		//	response.sendRedirect("userhome.jsp");
		}
		}catch(Exception e) {
			e.printStackTrace();
		}
	}

}
