<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
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
                  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css" integrity="sha512-Avb2QiuDEEvB4bZJYdft2mNjVShBftLdPG8FJ0V7irTLQ8Uo0qcPxh4Plq7G5tGm0rU+1SPhVotteLpBERwTkw==" crossorigin="anonymous" referrerpolicy="no-referrer" />
      
   </head>
<body>
  <!-- header section start -->
  <%@include file="navbar.jsp" %>
   <!-- header section end -->

          
          <section class="vh-100" style="background-color: #eee;">
        <div class="container py-5 h-100">
          <div class="row d-flex justify-content-center align-items-center h-100">
            <div class="col-12 col-md-8 col-lg-6 col-xl-5">
              <div class="card shadow-2-strong" style="">
                <div class="card-body p-5 text-center">
      
                      <p class="text-center h1 fw-bold mb-5 mx-1 mx-md-4 mt-4">Register</p>
                      
                     <%--  <c:if test="${not empty successmsg}">
                      <p class="text-center text-success">${successmsg}</p>
                      <c:remove var="successmsg" scope="session"/>
                      </c:if>
                      
                       <c:if test="${not empty failedmsg}">
                      <p class="text-center text-danger">${failedmsg}</p>
					  <c:remove var="failedmsg"  scope="session"/>
                      </c:if> --%>
                      
                      
                      <% String message = (String)request.getAttribute("message");
                      	if(message!=null){
                      %>
                    <h5 class="text-center text-success"><%= message %></h5>  
      				  <% session.removeAttribute("message"); 
      				  } %>
                      <form class="mx-1 mx-md-4" action="RegisterServlet" method="post">
      
                        <div class="d-flex flex-row align-items-center mb-4">
                          <i class="fas fa-user fa-lg me-3 fa-fw" id="reg-logo"></i>
                          <div class="form-outline flex-fill mb-0">
                            <input type="text" id="form3Example1c" class="form-control" required name="nm" />
                            <label class="form-label" for="form3Example1c">Your Name</label>
                          </div>
                        </div>
      
                        <div class="d-flex flex-row align-items-center mb-4">
                          <i class="fas fa-envelope fa-lg me-3 fa-fw" id="reg-logo"></i>
                          <div class="form-outline flex-fill mb-0">
                            <input type="email" id="form3Example3c" class="form-control" required name="email"/>
                            <label class="form-label" for="form3Example3c">Your Email</label>
                          </div>
                        </div>
      
                        <div class="d-flex flex-row align-items-center mb-4">
                          <i class="fas fa-phone-volume fa-lg me-3 fa-fw" id="reg-logo"></i>  
                          <div class="form-outline flex-fill mb-0">
                            <input type="password" id="form3Example4c" class="form-control" required name="phn" />
                            <label class="form-label" for="form3Example4c">Phone No</label>
                          </div>
                        </div>
      
                        <div class="d-flex flex-row align-items-center mb-4">
                          <i class="fas fa-key fa-lg me-3 fa-fw" id="reg-logo"></i>
                          <div class="form-outline flex-fill mb-0">
                            <input type="password" id="form3Example4cd" class="form-control" required name="pass" />
                            <label class="form-label" for="form3Example4cd">Password</label>
                          </div>
                        </div>
      
      				
      
                        <div class="form-check d-flex justify-content-center mb-2">
                          <input class="form-check-input me-2" type="checkbox" name="check"  id="form2Example3c"  />
                          <label class="form-check-label" for="form2Example3">
                            I agree all statements in Terms of service
                          </label>
                        </div>
                        <div class="form-check d-flex justify-content-center "><a href="login.jsp">Sign-in</a></div>
                        <div class="d-flex justify-content-center mx-4 mb-3 mb-lg-4">
                          <button type="submit" class="btn btn-primary btn-lg">Register</button>
                        </div>
      
                      </form>
      
                    </div>
                    
                  </div>
                </div>
              </div>
            </div>
          </div>
      </section>
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