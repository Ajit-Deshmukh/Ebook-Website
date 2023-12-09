<!doctype html>
<html lang="en">
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import="java.sql.*" %>

<head>
      <!-- basic -->
      <meta charset="utf-8">
      <meta http-equiv="X-UA-Compatible" content="IE=edge">
      <meta name="viewport" content="width=device-width, initial-scale=1">
      <!-- mobile metas -->
      <meta name="viewport" content="width=device-width, initial-scale=1">
      <meta name="viewport" content="initial-scale=1, maximum-scale=1">
      <!-- site metas -->
      <title>DBI</title>
      <meta name="keywords" content="">
      <meta name="description" content="">
      <meta name="author" content="">
      <!-- bootstrap css -->
      <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
      <!-- style css -->
      <link rel="stylesheet" type="text/css" href="css/style.css">
      <!-- Responsive-->
      <link rel="stylesheet" href="css/responsive.css">
      <!-- fevicon -->
      <link rel="icon" href="images/fevicon.png" type="image/gif" />
      <!-- Scrollbar Custom CSS -->
      <link rel="stylesheet" href="css/jquery.mCustomScrollbar.min.css">
      <!-- Tweaks for older IEs-->
      <link rel="stylesheet" href="https://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css">
      <!-- owl stylesheets --> 
      <link rel="stylesheet" href="css/owl.carousel.min.css">
      <link rel="stylesheet" href="css/owl.theme.default.min.css">
      <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/fancybox/2.1.5/jquery.fancybox.min.css" media="screen">
      <link href="https://unpkg.com/gijgo@1.9.13/css/gijgo.min.css" rel="stylesheet" type="text/css" />
        <style>
            a {
                text-decoration: none;
            }
    
            body {
                background-color: #f7f7f7;
            }
    
            .form {
                margin-top: 70px;
            }
        </style>
</head>

<body>
  <!-- header section start -->
     <%@include file="navbar.jsp" %>
      <!-- header section end -->
 <%! ResultSet rs; %>
    <%
                            
    try {
    	Connection con = null;
    	Class.forName("oracle.jdbc.driver.OracleDriver");
    	con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:orcl","Ebook_App","java");
    	String sql = "SELECT * FROM ADD_BOOKS ORDER BY BOOK_ID";
    	PreparedStatement pst = con.prepareStatement(sql);
        rs = pst.executeQuery();
        
    }catch(Exception e) {
    	e.printStackTrace();	}
    %>
    <div class="container form">
        <div class="row ">
            <div class="col-2"></div>
            <div class="col">
                <div class="card">
                    <div class="card-body">
                        <h5 class="text-center text-primary p-2">All Book's</h5>
                        <c:if test="${not empty delmsg }">
                        <p class="text-center text-success">${delmsg}</p>
                        <c:remove var="delmsg" scope="session"/>
                        </c:if>
                         <c:if test="${not empty failedmsg }">
                        <p class="text-center text-success">${failedmsg}</p>
                        <c:remove var="delmsg" scope="session"/>
                        </c:if>
                        <table class="table">
                            <thead>
                                <tr>
                                    <th scope="col">ID</th>
                                    <th scope="col">Book Name</th>
                                    <th scope="col">Author</th>
                                    <th scope="col">Price</th>
                                    <th scope="col">Categories</th>
                                    <th scope="col">Status</th>
                                    <th scope="col">Action</th>
                                </tr>
                            </thead>
                            <tbody>
                                <% while (rs.next()) { %>
                                    <tr>
                                        <td><%= rs.getInt("book_id") %></td>
                                        <td><%= rs.getString("book_name") %></td>
                                        <td><%= rs.getString("auther_name") %></td>
                                        <td><%= rs.getInt("price") %></td>
                                        <td><%= rs.getString("categories") %></td>
                                        <td>Gpay</td>
                                        <td>
                                            <a href="delete?id=<%=rs.getInt("book_id")%>" class="btn btn-danger btn-sm">Delete</a>
                                        </td>
                                    </tr>
                                <% } %>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
            <div class="col-2"></div>
        </div>
    </div>

          <!-- footer  section start -->
          <footer style="margin-top:100px">
     <%@include file="footer.jsp" %>
     </footer>
      <!-- footer  section end -->

      <!-- Javascript files-->
      <script src="js/jquery.min.js"></script>
      <script src="js/popper.min.js"></script>
      <script src="js/bootstrap.bundle.min.js"></script>
      <script src="js/jquery-3.0.0.min.js"></script>
      <!-- sidebar -->
      <script src="js/jquery.mCustomScrollbar.concat.min.js"></script>
      <script src="js/custom.js"></script>
      <!-- javascript --> 
      <script src="js/owl.carousel.js"></script>
      <script src="https:cdnjs.cloudflare.com/ajax/libs/fancybox/2.1.5/jquery.fancybox.min.js"></script>
      <script src="https://unpkg.com/gijgo@1.9.13/js/gijgo.min.js" type="text/javascript"></script>
      <script>
         $('#datepicker').datepicker({
             uiLibrary: 'bootstrap4'
         });
      </script>
          <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
      
   </body>
</html>