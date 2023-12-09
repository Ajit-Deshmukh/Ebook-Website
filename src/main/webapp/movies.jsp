<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<%@ page import="java.sql.*" %>
<%@ page import="user.servlet.*" %>
<%@ page import="java.util.*" %>
   <head>
      <!-- basic -->
      <meta charset="utf-8">
      <meta http-equiv="X-UA-Compatible" content="IE=edge">
      <meta name="viewport" content="width=device-width, initial-scale=1">
      <!-- mobile metas -->
      <meta name="viewport" content="width=device-width, initial-scale=1">
      <meta name="viewport" content="initial-scale=1, maximum-scale=1">
      <!-- site metas -->
      <title>Movies</title>
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
   </head>
   <body>
      <!-- header section start -->
     <%@ include file="navbar.jsp" %>
      <!-- header section end -->
      <!-- movies section start -->
      <div class="movies_section layout_padding">
         <div class="container">
            <div class="movies_menu">
               <ul>
                  <li class="active"><a href="#">Overview</a></li>
                  <li><a href="tv.html">TV</a></li>
                  <li><a href="movies.html">Movies</a></li>
                  <li><a href="#">Show</a></li>
                  <li><a href="celebs.html">Celeb</a></li>
                  <li><a href="#">Sports</a></li>
                  <li><a href="#">News</a></li>
                  <li><a href="#">Cartoon</a></li>
               </ul>
            </div>
         <div class="movies_section_2 layout_padding">
               <h2 class="letest_text">Latest Book's</h2>
               <div class="seemore_bt"><a href="tv.jsp">See More</a></div>
               <div class="movies_main">
                  <div class="iamge_movies_main">
        <% 
        DisplayBooksMethods display = new DisplayBooksMethods();
        List<Books> list = display.displayAllBooks();
        int counter = 0; // Counter for tracking books in the current row

        for (Books b : list) {
            // If it's the first book in the row, start a new row
            if (counter % 5 == 0) { %>
                <div class="row">
            <% } %>

                       <div class="iamge_movies">
                        <div class="image_3">
                           <img src="bookimg/<%=b.getPhoto() %>" class="image" style="width:230px; height:330px;">
                        </div>
                        <p class="fw-bold text-white text-center" style="margin:15px 0px 5px 0px; font-size:22px"><%=b.getAuther_name() %></p>
                        <p class=" there_text"><%=b.getBook_name() %> </p>                        
                        <div class="text-center text-warning"  style="margin-top:10px" >
                        <button type="button" class="btn btn-outline-warning btn-sm">Buy</button>
                         <span style="margin:10px;"><%=b.getPrice() %></span>
                        </div>                  
                     </div>

            <% 
            counter++;
            // If it's the fourth book in the row, close the row
            if (counter % 5 == 0) { %>
                </div>
            <% } %>
        <% } %>

        <% 
        // Close the row if it's not closed after the last book
        if (counter % 5 != 0) { %>
            </div>
        <% } %>
    </div>
</div>
   </div>
            
            <div class="seebt_1"><a href="#">See More</a></div>
         </div>
      <!-- movies section end -->
      <!-- footer  section start -->
      <%@include file="footer.jsp" %>
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
   </body>
</html>