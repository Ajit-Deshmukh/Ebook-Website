package com.verification;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

@WebServlet("/register")
public class RegisterServlet extends HttpServlet{
	
	
	private static final long serialVersionUID = 1L;

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		Connection con = null;
		RequestDispatcher dispatcher = null;
			String name = req.getParameter("nm");
			String email = req.getParameter("email");
			String phnno = req.getParameter("phn");
			String pass = req.getParameter("pass");
			String box = req.getParameter("check");
			
			System.out.println(name+" "+email+" "+phnno+" "+pass+" "+box);
			
			try {
				Class.forName("oracle.jdbc.driver.OracleDriver");
				con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:orcl","Ebook_App","java");
				if(con != null) {
					System.out.println("connection established");
				}
				else {
					System.out.println("no connection established");
				}
			
			String sql = "insert into userdetails(name,email,phoneno,password) values(?,?,?,?)";
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, name);
			ps.setString(2, email);
			ps.setString(3, phnno);
			ps.setString(4, pass);
			
			int i = ps.executeUpdate();
			
			dispatcher = req.getRequestDispatcher("register.jsp");
			
			if(i>0) {
				req.setAttribute("message", "Registeration Successfull");
				req.getRequestDispatcher("register.jsp").forward(req, resp);
				
			}else {
				req.setAttribute("message", "Registeration Failed");
				req.getRequestDispatcher("register.jsp").forward(req, resp);
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		
	}

}


//User us = new User();
//us.setName(name);
//us.setEmail(email);
//us.setPhnno(phnno);
//us.setPassword(pass);
//
//HttpSession session = req.getSession();
//
//if(box!=null) {
//
//UserDaoImplements dao = new UserDaoImplements(DbConnect.getCon());
//boolean f = dao.userRegister(us);
//	
//
//
//
//if(f) {
//	
//	session.setAttribute("successmsg", "Registered Successfully");
//	     resp.sendRedirect("register.jsp");
//	//System.out.println("user registerd success");
//}else {
//	
//	session.setAttribute("failedmsg", "Registeration Failed");
//     resp.sendRedirect("register.jsp");
//	//System.out.println("user registerd failed");
//}
//}else {
//	session.setAttribute("failedmsg", "Please check agree & terms condition");
//     resp.sendRedirect("register.jsp");
//}
