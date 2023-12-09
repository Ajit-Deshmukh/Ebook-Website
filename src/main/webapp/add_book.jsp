<!doctype html>
<html lang="en">
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

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
    <div class="container form">

            <div class="row ">
                <div class="col-3"></div>
                <div class="col">
                    <div class="card">
                        <div class="card-body">
                            <h5 class="text-center text-primary p-2">Add Book</h5>
                            <c:if test="${not empty succmsg }">
                            <p class="text-center text-success">${succmsg}</p>
                            <c:remove var="succmsg" scope="session"/>
                            </c:if>
                            
                             <c:if test="${not empty failedmsg }">
                            <p class="text-center text-danger">${failedmsg}</p>
                            <c:remove var="failedmsg" scope="session"/>
                            </c:if>
                                    <form action="AddBooks" method="post" enctype='multipart/form-data'>
                            
                            <div class="col-12 mb-3">
                                <input type="text" class="form-control" placeholder="Book Name" name="bookname"
                                    aria-label="Book name">
                            </div>
                            <div class="col-12 mb-3">
                                <input type="text" class="form-control" placeholder="Auther name" aria-label="Auther name" name="authername">
                            </div>
                            <div class="col-12 mb-3">
                                <input type="text" class="form-control" placeholder="Book Price" name="price">
                            </div>
                            <div class="col-12 mb-3">
                                <select id="inputState" class="form-select" aria-placeholder="Book Category" name="category">
                                    <option selected>Book Category</option>
                                    <option>Fiction</option>
                                    <option>Biography</option>
                                    <option>History</option>
                                    <option>Romance</option>
                                    <option>Documentary</option>
                                    

                                </select>
                            </div>
                            <div class="input-group mb-3">
                                <input type="file" class="form-control" id="inputGroupFile02" name="bimg">
                                <label class="input-group-text" for="inputGroupFile02">Upload Photo</label>
                            </div>
                            <button type="submit" class="btn btn-primary mb-3">Add</button>
                                    </form>
                            
                        </div>
                    </div>
                </div>
                <div class="col-3"></div>
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