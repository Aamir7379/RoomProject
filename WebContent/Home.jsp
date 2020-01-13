
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
       <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
  <head>
    <title>Room</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <link href="https://fonts.googleapis.com/css?family=Roboto:300,400,900|Oswald:300,400,700" rel="stylesheet">
    <link rel="stylesheet" href="fonts/icomoon/style.css">

    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/jquery-ui.css">
    <link rel="stylesheet" href="css/owl.carousel.min.css">
    <link rel="stylesheet" href="css/owl.theme.default.min.css">
    <link rel="stylesheet" href="css/owl.theme.default.min.css">

    <link rel="stylesheet" href="css/jquery.fancybox.min.css">

    <link rel="stylesheet" href="css/bootstrap-datepicker.css">

    <link rel="stylesheet" href="fonts/flaticon/font/flaticon.css">

    <link rel="stylesheet" href="css/aos.css">

    <link rel="stylesheet" href="css/style.css">
    
  </head>
  
  <body data-spy="scroll" data-target=".site-navbar-target" data-offset="300">
  
  <div class="site-wrap">

    <div class="site-mobile-menu site-navbar-target">
      <div class="site-mobile-menu-header">
        <div class="site-mobile-menu-close mt-3">
          <span class="icon-close2 js-menu-toggle"></span>
        </div>
      </div>
      <div class="site-mobile-menu-body"></div>
    </div>
   
    
    <header class="site-navbar py-4 js-sticky-header site-navbar-target" role="banner">

      <div class="container">
        <div class="row align-items-center">
          
          <div class="col-6 col-xl-2">
            <h1 class="mb-0 site-logo m-0 p-0"><a href="index.html" class="mb-0">Guest_Room</a></h1>
          </div>

          <div class="col-12 col-md-10 d-none d-xl-block">
            <nav class="site-navigation position-relative text-right" role="navigation">

              <ul class="site-menu main-menu js-clone-nav mr-auto d-none d-lg-block">
                <li><a href="#home-section" class="nav-link">Home<c:out value="${sessionScope.User.username}"/> </a></li>
                <li><a href="#properties-section" class="nav-link">Room</a></li>
                <li><a href="#agents-section" class="nav-link">Room_Booked</a></li>
                <li><a href="#about-section" class="nav-link">About</a></li>
                <li><a href="#news-section" class="nav-link">News</a></li>
                <c:choose>
                 <c:when test="${sessionScope.User!=null}">
                <li><a href="Login.jsp" class="nav-link">Logout</a></li>
    		</c:when>    
    		<c:otherwise>
                <li><a href="Login.jsp" class="nav-link">Login</a></li>        
                  	</c:otherwise>
                   </c:choose>
              </ul>
            </nav>
          </div>


          <div class="col-6 d-inline-block d-xl-none ml-md-0 py-3"><a href="#" class="site-menu-toggle js-menu-toggle text-white float-right"><span class="icon-menu h3"></span></a></div>

        </div>
      </div>
      
    </header>

    
    <div class="site-block-wrap">
    <div class="owl-carousel with-dots">
      <div class="site-blocks-cover overlay overlay-2" style="background-image: url(images/hero_1.jpg);" data-aos="fade" id="home-section">


        <div class="container">
          <div class="row align-items-center justify-content-center">
            <div class="col-md-6 mt-lg-5 text-center">
              <h1 class="text-shadow">Buy &amp; Room here</h1>
              <p class="mb-5 text-shadow">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Provident vitae, aut inventore repellendus. Iusto, assumenda! </p>
              <p><a href="#" target="_blank" class="btn btn-primary px-5 py-3">Get Started</a></p>
              
            </div>
          </div>
        </div>
  
        
      </div>  
  
      <div class="site-blocks-cover overlay overlay-2" style="background-image: url(images/hero_2.jpg);" data-aos="fade" id="home-section">
  
  
        <div class="container">
          <div class="row align-items-center justify-content-center">
            <div class="col-md-6 mt-lg-5 text-center">
              <h1 class="text-shadow">Find Your Perfect Room For Your Home</h1>
              <p class="mb-5 text-shadow">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Eaque quam doloribus reprehenderit dolore adipisci rerum?</p>
              <p><a href="#" target="_blank" class="btn btn-primary px-5 py-3">Get Started</a></p>
              
            </div>
          </div>
        </div>
  
        
      </div>  
    </div>   
    
  </div>      


  <div class="site-section" id="properties-section">
      <div class="container">
        <div class="row large-gutters">
        <!--   <div class="col-md-6 col-lg-4 mb-5 mb-lg-5 ">
             <div class="ftco-media-1">
              <div class="ftco-media-1-inner">
  <a href="http://localhost:8080/Room/GetSigleRoomDetails?Roomid=?"class="d-inline-block mb-4"><img src="images/property_1.jpg" alt="FImageo" class="img-fluid"></a>
            
                <div class="ftco-media-details">
                  <h3>Single_Room</h3>
                  <p>Sakinaka - Mumbai</p>
                  <strong>Rs.20000</strong>
                </div>
  
              </div> 
            </div>
          </div>
          <div class="col-md-6 col-lg-4 mb-5 mb-lg-5 ">
              <div class="ftco-media-1">
                  <div class="ftco-media-1-inner">
                    <a href="property-single.html" class="d-inline-block mb-4"><img src="images/property_2.jpg" alt="Image" class="img-fluid"></a>
                    <div class="ftco-media-details">
                      <h3>Double_Room</h3>
                      <p>kurla - Mumbai</p>
                      <strong>21000</strong>
                    </div>
      
                  </div> 
                </div>
          </div>
          <div class="col-md-6 col-lg-4 mb-5 mb-lg-5 ">
              <div class="ftco-media-1">
                  <div class="ftco-media-1-inner">
                    <a href="property-single.html" class="d-inline-block mb-4"><img src="images/property_3.jpg" alt="Image" class="img-fluid"></a>
                    <div class="ftco-media-details">
                      <h3>Triple_Room</h3>
                      <p>Bandra - Mumbai</p>
                      <strong>22000</strong>
                    </div>
      
                  </div> 
                </div>
          </div>

          <div class="col-md-6 col-lg-4 mb-5 mb-lg-5 ">
              <div class="ftco-media-1">
                <div class="ftco-media-1-inner">
                  <a href="property-single.html" class="d-inline-block mb-4"><img src="images/property_1.jpg" alt="Image" class="img-fluid"></a>
                  <div class="ftco-media-details">
                    <h3>Quad_Room</h3>
                    <p>Lucknow- UP</p>
                    <strong>15000</strong>
                  </div>
    
                </div> 
              </div>
            </div>
            <div class="col-md-6 col-lg-4 mb-5 mb-lg-5 ">
                <div class="ftco-media-1">
                    <div class="ftco-media-1-inner">
                      <a href="property-single.html" class="d-inline-block mb-4"><img src="images/property_2.jpg" alt="Image" class="img-fluid"></a>
                      <div class="ftco-media-details">
                        <h3>Queen_Room</h3>
                        <p>New York - USA</p>
                        <strong>$20,000,000</strong>
                      </div>
        
                    </div> 
                  </div>
            </div>
            <div class="col-md-6 col-lg-4 mb-5 mb-lg-5 ">
                <div class="ftco-media-1">
                    <div class="ftco-media-1-inner">
                      <a href="property-single.html" class="d-inline-block mb-4"><img src="images/property_3.jpg" alt="Image" class="img-fluid"></a>
                      <div class="ftco-media-details">
                        <h3>King_Room</h3>
                        <p>Dubai - Dubai</p>
                        <strong>$20,00,00</strong>
                      </div>
        
                    </div> 
                  </div>
            </div>-->

<c:forEach items="${room}" var="element">
<div class="col-md-6 col-lg-4 mb-5 mb-lg-5 ">
                <div class="ftco-media-1">
                    <div class="ftco-media-1-inner">
                      <a href="http://localhost:8080/Room/GetSigleRoomDetails?Roomid=${element.roomid}" class="d-inline-block mb-4"><img src="${element.roomimage}" alt="Image" class="img-fluid"></a>
                      <div class="ftco-media-details">
                        <h3>${element.roomname}</h3>
                        <p>${element.state}-${element.city}</p>
                        <strong>${element.price}</strong>
                        console.log(element.roomname);
                        console.log(element.price);
                      </div>
        
                    </div> 
                  </div>
            </div>
            
</c:forEach>
        </div>
        
      </div>
    </div>

    
    <footer class="site-footer">
      <div class="container">
        <div class="row">
          <div class="col-md-8">
            <div class="row">
              <div class="col-md-5">
                <h2 class="footer-heading mb-4">About Us</h2>
                <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Neque facere laudantium magnam voluptatum autem. Amet aliquid nesciunt veritatis aliquam.</p>
              </div>
              <div class="col-md-3 mx-auto">
                <h2 class="footer-heading mb-4">Quick Links</h2>
                <ul class="list-unstyled">
                  <li><a href="#">About Us</a></li>
                  <li><a href="#">Services</a></li>
                  <li><a href="#">Testimonials</a></li>
                  <li><a href="#">Contact Us</a></li>
                </ul>
              </div>
              
            </div>
          </div>
          <div class="col-md-4">
            <div class="mb-4">
              <h2 class="footer-heading mb-4">Subscribe Newsletter</h2>
            <form action="#" method="post" class="footer-subscribe">
              <div class="input-group mb-3">
                <input type="text" class="form-control border-secondary text-white bg-transparent" placeholder="Enter Email" aria-label="Enter Email" aria-describedby="button-addon2">
                <div class="input-group-append">
                  <button class="btn btn-primary text-black" type="button" id="button-addon2">Send</button>
                </div>
              </div>
            </form>  
            </div>
            
            <div class="">
              <h2 class="footer-heading mb-4">Follow Us</h2>
                <a href="#" class="pl-0 pr-3"><span class="icon-facebook"></span></a>
                <a href="#" class="pl-3 pr-3"><span class="icon-twitter"></span></a>
                <a href="#" class="pl-3 pr-3"><span class="icon-instagram"></span></a>
                <a href="#" class="pl-3 pr-3"><span class="icon-linkedin"></span></a>
            </div>


          </div>
        </div>
        <div class="row pt-5 mt-5 text-center">
          <div class="col-md-12">
            <div class="border-top pt-5">
            <p class="copyright">
            <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
            Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="icon-heart text-danger" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank" >Colorlib</a>
            <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
            </p>
            </div>
          </div>
          
        </div>
      </div>
    </footer>

  </div> <!-- .site-wrap -->

  <a href="#top" class="gototop"><span class="icon-angle-double-up"></span></a> 

  <script src="js/jquery-3.3.1.min.js"></script>
  <script src="js/jquery-ui.js"></script>
  <script src="js/popper.min.js"></script>
  <script src="js/bootstrap.min.js"></script>
  <script src="js/owl.carousel.min.js"></script>
  <script src="js/jquery.countdown.min.js"></script>
  <script src="js/bootstrap-datepicker.min.js"></script>
  <script src="js/jquery.easing.1.3.js"></script>
  <script src="js/aos.js"></script>
  <script src="js/jquery.fancybox.min.js"></script>
  <script src="js/jquery.sticky.js"></script>

  
  <script src="js/main.js"></script>
    
  </body>
</html>