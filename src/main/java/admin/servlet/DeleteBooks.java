package admin.servlet;

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
@WebServlet("/delete")
public class DeleteBooks extends HttpServlet {
	private static final long serialVersionUID = 1L;
  
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int id = Integer.parseInt(request.getParameter("id"));
		try {
			Connection con = null;
			Class.forName("oracle.jdbc.driver.OracleDriver");
			con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:orcl","Ebook_App","java");
			String sql = "DELETE FROM ADD_BOOKS WHERE BOOK_ID=?";
			PreparedStatement pst = con.prepareStatement(sql);
			pst.setInt(1, id);
			int res = pst.executeUpdate();	
			HttpSession session = request.getSession();
			if(res==1) {
		    	session.setAttribute("delmsg", "Book Remove Successfully");
		    	response.sendRedirect("All_books.jsp");
			}
			  else {
			    	session.setAttribute("failedmsg", "Something went wrong");
			    	response.sendRedirect("All_books.jsp");
			    }
		}
		catch(Exception e) {
			e.printStackTrace();
		}
	}

}