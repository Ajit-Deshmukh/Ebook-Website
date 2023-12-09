package admin.servlet;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import jakarta.servlet.http.Part;

import java.io.File;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
@WebServlet("/Add_book")
@MultipartConfig
public class AddBooks extends HttpServlet {
	private static final long serialVersionUID = 1L;
	public static int cnt = 0;
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

String bn = request.getParameter("bookname");
String an = request.getParameter("authername");
int pr = Integer.parseInt(request.getParameter("price"));
String category = request.getParameter("category");
Part part=request.getPart("bimg");
String filename = part.getSubmittedFileName();
Connection con = null;
try {
	Class.forName("oracle.jdbc.driver.OracleDriver");
	con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:orcl","Ebook_App","java");
	String sql = "INSERT INTO ADD_BOOKS (book_name,auther_name,price,categories,photo) VALUES (?,?,?,?,?)";
	PreparedStatement pst = con.prepareStatement(sql);
	pst.setString(1,bn);
	pst.setString(2,an);
	pst.setInt(3,pr);
	pst.setString(4,category);
	pst.setString(5, filename);
    int r = pst.executeUpdate();
    HttpSession session = request.getSession();
    
    if(r==1) {
    	String path = getServletContext().getRealPath("")+"bookimg";
    	File file = new File(path);
        part.write(path+File.separator+filename);
    	session.setAttribute("succmsg", "Book Added Successfully");
    	response.sendRedirect("add_book.jsp");
    }
    else {
    	session.setAttribute("failedmsg", "Something went wrong");
    	response.sendRedirect("add_book.jsp");
    }
	}catch(Exception e) {
	e.printStackTrace();	}
	}

}
