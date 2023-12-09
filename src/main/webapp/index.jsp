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
    	con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:orcl","sys as sysdba","java");
    	String sql = "SELECT * FROM ADD_BOOKS";
    	PreparedStatement pst = con.prepareStatement(sql);
        rs = pst.executeQuery();
        
    }catch(Exception e) {
    	e.printStackTrace();	}
    %>
         <div class="container-fluied">
      <div id="carouselExampleAutoplaying" class="carousel slide" data-bs-ride="carousel">
  <div class="carousel-inner"role="listbox" style=" width:100%; height: 500px !important;">
    <div class="carousel-item active">
      <img src="images/carousalmain.jpg" class="d-block w-100" alt="...">
    </div>
    <div class="carousel-item">
      <img src="images/car1.jpg" class="d-block w-100" alt="...">
    </div>
    <div class="carousel-item">
      <img src="images/book2.jpg" class="d-block w-100" alt="...">
    </div>
  </div>
  <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleAutoplaying" data-bs-slide="prev">
<!--     <span class="carousel-control-prev-icon" aria-hidden="true"></span>
 --><!--     <span class="visually-hidden">Previous</span>
 -->  </button>
  <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleAutoplaying" data-bs-slide="next">
<!--     <span class="carousel-control-next-icon" aria-hidden="true"></span>
 --><!--     <span class="visually-hidden">Next</span>
 -->  </button>
</div>
         </div>
      <!-- banner section end -->
      <!-- arrival section start -->
      <!-- <div class="arrival_section layout_padding">
         <div class="container">
            <div class="row">
               <div class="col-sm-6 col-lg-4">
                  <div class="image_1">
                     <h2 class="jesusroch_text">J E S U S R O C H</h2>
                     <p class="movie_text">Hollywood Movie</p>
                  </div>
               </div>
               <div class="col-sm-6 col-lg-4">
                  <div class="image_2">
                     <h2 class="jesusroch_text">J E S U S R O C H</h2>
                     <p class="movie_text">Hollywood Movie</p>
                  </div>
               </div>
               <div class="col-sm-8 col-lg-4">
                  <h1 class="arrival_text">A r r i v a l</h1>
                  <div class="movie_main">
                     <div class="mins_text_1">150 mins</div>
                     <div class="mins_text">Actions Movie</div>
                     <div class="mins_text"><img src="images/icon-1.png"><span class="icon_1">Watchlist</span></div>
                  </div>
                  <p class="long_text">It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem</p>
                  <div class="rating_main">
                     <div class="row">
                        <div class="col-sm-6 col-lg-6">
                           <div class="icon_2"><img src="images/icon-2.png"><span class="padding_10">4.6 Revieweed</span></div>
                        </div>
                        <div class="col-sm-6 col-lg-6">
                           <div class="icon_2"><img src="images/icon-2.png"><span class="padding_10">Your Rateing</span></div>
                        </div>
                     </div>
                  </div>
                  <div class="paly_bt"><a href="#">Play Now</a></div>
               </div>
            </div>
         </div>
      </div> -->
      <!-- arrival section end -->
      <!-- movies section start -->
      <div class="movies_section layout_padding">
         <div class="container">
            <div class="movies_menu">
               <ul>
                  <li class="active"><a href="#">Overview</a></li>
                  <li><a href="tv.html">TV</a></li>
                  <li><a href="movies.jsp">Movies</a></li>
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
               List<Books> list = display.displayLatestBooks();
            
               for(Books b : list){%>
            	   <div class="iamge_movies">
                        <div class="image_3">
                           <img src="bookimg/<%=b.getPhoto() %>" class="image" style="width:100%; height:330px">
                        </div>
                        <p class="fw-bold text-white text-center" style="margin:15px 0px 5px 0px; font-size:22px"><%=b.getAuther_name() %></p>
                        <p class=" there_text"><%=b.getBook_name() %> </p>                        
                        <div class="text-center text-warning"  style="margin-top:10px" >
                        <button type="button" class="btn btn-outline-warning btn-sm">Buy</button>
                         <span style="margin:10px;"><%=b.getPrice() %></span>
                        </div>                  
                     </div>
            	<%
               }
            	%>   
              
                 
              
                  </div>
               </div>
            </div>
            
            
            <div class="movies_section_2 layout_padding">
               <h2 class="letest_text">Documentary</h2>
               <div class="seemore_bt"><a href="#">See More</a></div>
               <div class="movies_main">
                  <div class="iamge_movies_main">
                       <%
                  DisplayBooksMethods display1 = new DisplayBooksMethods();
               List<Books> list2 = display.displayDocuBooks();
               for(Books b : list2){%>
            	   <div class="iamge_movies">
                        <div class="image_3">
                           <img src="bookimg/<%=b.getPhoto() %>" class="image" style="width:100%; height:330px">
                        </div>
                       <p class="fw-bold text-white text-center" style="margin:15px 0px 5px 0px; font-size:22px"><%=b.getAuther_name() %></p>
                        <p class=" there_text"><%=b.getBook_name() %> </p>                        
                        <div class="text-center text-warning"  style="margin-top:10px" >
                        <button type="button" class="btn btn-outline-warning btn-sm">Buy</button>
                         <span style="margin:10px;"><%=b.getPrice() %></span>
                        </div>                  
                     </div>
            	<%
               }
            	%>   
            
            
                     
                  </div>
               </div>
            </div>
            <div class="movies_section_2 layout_padding">
               <h2 class="letest_text">Sci-Fi</h2>
               <div class="seemore_bt"><a href="#">See More</a></div>
               <div class="movies_main">
            <div class="movies_main">
                  <div class="iamge_movies_main">
                  
               <%
                  DisplayBooksMethods display3 = new DisplayBooksMethods();
               List<Books> list3 = display.displayLatestBooks();
               for(Books b : list){%>
            	   <div class="iamge_movies">
                        <div class="image_3">
                           <img src="bookimg/<%=b.getPhoto() %>" class="image" style="width:100%; height:330px">
                        </div>
                        <p class="fw-bold text-white text-center" style="margin:15px 0px 5px 0px; font-size:22px"><%=b.getAuther_name() %></p>
                        <p class=" there_text"><%=b.getBook_name() %> </p>                        
                        <div class="text-center text-warning"  style="margin-top:10px" >
                        <button type="button" class="btn btn-outline-warning btn-sm">Buy</button>
                         <span style="margin:10px;"><%=b.getPrice() %></span>
                        </div>                  
                     </div>
            	<%
               }
            	%>   
              
                 
              
                  </div>
               </div>
                  </div>
               </div>
            </div>
            <div class="seebt_1"><a href="#">See More</a></div>
         </div>
      <!-- movies section end -->
      <!-- newsletter section start -->
      <div class="newsletter_section layout_padding">
         <div class="container">
            <h1 class="newsletter_text">Subscribe Our Newsletter</h1>
            <div class="box_main">
               <p class="dummy_text">It is a long established fact that a reader will be distracted by the readable content of a page when looking</p>
               <div class="mail_main">
                  <input type="text" class="email_text" placeholder="Enter Your email" name="Enter Your email">
                  <div class="right_arrow">
                     <a href="#"><img src="images/right-arrow.png"></a>
                  </div>
               </div>
            </div>
         </div>
      </div>
      <!-- newsletter section end -->
      <!-- cooming  section start -->
      <!-- <div class="cooming_section layout_padding">
         <div class="container">
            <div class="row">
               <div class="col-md-6">
                  <div class="image_17">
                     <div class="image_17"><img src="images/img-17.png"></div>
                  </div>
               </div>
               <div class="col-md-6">
                  <h1 class="number_text">01</h1>
                  <h1 class="Cooming_soon_taital">Cooming soon</h1>
                  <p class="long_text_1">It is a long established fact that a reader will be distracted by the readable content of a page when looking</p>
                  <div class="paly_bt"><a href="#">Read Now</a></div>
               </div>
            </div>
         </div>
      </div> -->
      <!-- cooming  section end -->
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
          <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
      
   </body>
</html>