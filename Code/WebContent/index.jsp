<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>

<head>
  <title>Harbor &mdash; Website Template by Colorlib</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">


    <link href="https://fonts.googleapis.com/css?family=Playfair+Display:400,700i,900|Roboto&display=swap" rel="stylesheet">

    <link rel="stylesheet" href="fonts/icomoon/style.css">

    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/animate.min.css">
    <link rel="stylesheet" href="css/jquery.fancybox.min.css">
    <link rel="stylesheet" href="css/owl.carousel.min.css">
    <link rel="stylesheet" href="css/owl.theme.default.min.css">
    <link rel="stylesheet" href="fonts/flaticon/font/flaticon.css">
    <link rel="stylesheet" href="css/aos.css">
    <link rel="stylesheet" href="css/mainBtn.css">

    <!-- MAIN CSS -->
    <link rel="stylesheet" href="css/style.css">
	<style>
		#logBox {
			width: 95%;
			height: 50px;
			text-align: right;
		}
		#logUl {		
			list-style: none;
			margin-right: 0;
			font-size: 15px;
		}
		li a {
			color: black;
		}
	</style>
  <%@ include file="/main/navCssLink.html" %>
</head>
<body>
<c:choose>
	<c:when test="${not empty sessionScope.id}">
		<%@ include file="/main/navLogOutBody.html" %>
	</c:when>
	<c:otherwise>
		<%@ include file="/main/navBody.html" %>
	</c:otherwise>
</c:choose>
    <div class="owl-carousel-wrapper">
      <div class="box-92819 shadow-lg">
          <%@ include file="/main/mainBtn.html" %>
      </div>
      <div class="owl-carousel owl-1 ">
        <div class="ftco-cover-1" style="background-image: url('images/hero_1.jpg');"></div>
        <div class="ftco-cover-1" style="background-image: url('images/hero_2.jpg');"></div>
        <div class="ftco-cover-1" style="background-image: url('images/hero_3.jpg');"></div>
        
      </div>
    </div>  

    <div class="site-section">
      <div class="container">
        <div class="row mb-5 align-items-center">
          <div class="col-md-7">
            <h2 class="heading-39291 mb-0">Our Work</h2>
          </div>
          <div class="col-md-5 text-right">
            <p class="mb-0"><a href="#" class="more-39291">View All Works</a></p>
          </div>
        </div>

        <div class="row">
          <div class="col-lg-6">
            <div class="media-02819">
              <a href="#" class="img-link"><img src="images/img_1.jpg" alt="Image" class="img-fluid"></a>
              <h3><a href="#">Creative Modern House</a></h3>
              <span>New York City, USA</span>
            </div>
          </div>
          <div class="col-lg-6">
            <div class="media-02819">
              <a href="#" class="img-link"><img src="images/img_2.jpg" alt="Image" class="img-fluid"></a>
              <h3><a href="#">Creative Modern House</a></h3>
              <span>New York City, USA</span>
            </div>
          </div>

          <div class="col-lg-6">
            <div class="media-02819">
              <a href="#" class="img-link"><img src="images/img_3.jpg" alt="Image" class="img-fluid"></a>
              <h3><a href="#">Creative Modern House</a></h3>
              <span>New York City, USA</span>
            </div>
          </div>
          <div class="col-lg-6">
            <div class="media-02819">
              <a href="#" class="img-link"><img src="images/img_4.jpg" alt="Image" class="img-fluid"></a>
              <h3><a href="#">Creative Modern House</a></h3>
              <span>New York City, USA</span>
            </div>
          </div>

        </div>
      </div>
    </div>


    <div class="site-section bg-primary">
      <div class="container">
        <div class="row mb-5 align-items-center">
          <div class="col-md-7">
            <h2 class="heading-39291 text-white mb-3">What We Do</h2>
            <p class="text-white">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Reiciendis velit iure possimus repellendus, esse minus illum nobis deleniti?</p>
          </div>
        </div>
        <div class="row">
          
          <div class="col-md-6 mb-4 col-lg-4" data-aos="fade-up" data-aos-delay="100">
            <div class="service-29193 text-center">
              <span class="img-wrap mb-5">
                <img src="fonts/flaticon/svg/002-kitchen.svg" alt="Image" class="img-fluid">
              </span>
              <h3 class="mb-4"><a href="#">Reiciendis Velit</a></h3>
              <p>Lorem ipsum dolor sit ame adipisicing elit. Perspiciatis incidunt distinctio voluptate .</p>
            </div>
          </div>
          <div class="col-md-6 mb-4 col-lg-4" data-aos="fade-up" data-aos-delay="200">
            <div class="service-29193 text-center">
              <span class="img-wrap mb-5">
                <img src="fonts/flaticon/svg/003-lamp.svg" alt="Image" class="img-fluid">
              </span>
              <h3 class="mb-4"><a href="#">Incidunt Distinctio</a></h3>
              <p>Lorem ipsum dolor sit ame adipisicing elit. Perspiciatis incidunt distinctio voluptate .</p>
            </div>
          </div>

          <div class="col-md-6 mb-4 col-lg-4" data-aos="fade-up" data-aos-delay="">
            <div class="service-29193 text-center">
              <span class="img-wrap mb-5">
                <img src="fonts/flaticon/svg/001-stairs.svg" alt="Image" class="img-fluid">
              </span>
              <h3 class="mb-4"><a href="#">Reiciendis Velit Iure</a></h3>
              <p>Lorem ipsum dolor sit ame adipisicing elit. Perspiciatis incidunt distinctio voluptate .</p>
            </div>
          </div>

          <div class="col-md-6 mb-4 col-lg-4" data-aos="fade-up" data-aos-delay="">
            <div class="service-29193 text-center">
              <span class="img-wrap mb-5">
                <img src="fonts/flaticon/svg/004-blueprint.svg" alt="Image" class="img-fluid">
              </span>
              <h3 class="mb-4"><a href="#">Boluptate Ipsum</a></h3>
              <p>Lorem ipsum dolor sit ame adipisicing elit. Perspiciatis incidunt distinctio voluptate .</p>
            </div>
          </div>
          <div class="col-md-6 mb-4 col-lg-4" data-aos="fade-up" data-aos-delay="200">
            <div class="service-29193 text-center">
              <span class="img-wrap mb-5">
                <img src="fonts/flaticon/svg/006-pantone.svg" alt="Image" class="img-fluid">
              </span>
              <h3 class="mb-4"><a href="#">Modern Elit</a></h3>
              <p>Lorem ipsum dolor sit ame adipisicing elit. Perspiciatis incidunt distinctio voluptate .</p>
            </div>
          </div>
          <div class="col-md-6 mb-4 col-lg-4" data-aos="fade-up" data-aos-delay="100">
            <div class="service-29193 text-center">
              <span class="img-wrap mb-5">
                <img src="fonts/flaticon/svg/005-dinning-table.svg" alt="Image" class="img-fluid">
              </span>
              <h3 class="mb-4"><a href="#">Dolor Sitame</a></h3>
              <p>Lorem ipsum dolor sit ame adipisicing elit. Perspiciatis incidunt distinctio voluptate .</p>
            </div>
          </div>
          
        </div>
      </div>
    </div>

    
    <div class="site-section section-4">
      <div class="container">

        <div class="row justify-content-center text-center">
          <div class="col-md-7">
            <div class="slide-one-item owl-carousel">
              <blockquote class="testimonial-1">
                <span class="quote quote-icon-wrap"><span class="icon-format_quote"></span></span>
                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ducimus totam sit delectus earum facere ex ea sunt, eos?</p>
                <cite><span class="text-black">Mike Dorney</span> &mdash; <span class="text-muted">CEO and Co-Founder</span></cite>
              </blockquote>

              <blockquote class="testimonial-1">
                <span class="quote quote-icon-wrap"><span class="icon-format_quote"></span></span>
                <p>Eligendi earum ad perferendis dolores, dolor quas. Ullam in, eaque mollitia suscipit id aspernatur rerum! Sit quibusdam ullam tempora quis, in voluptatum maiores veritatis recusandae!</p>
                <cite><span class="text-black">James Smith</span> &mdash; <span class="text-muted">CEO and Co-Founder</span></cite>
              </blockquote>

              <blockquote class="testimonial-1">
                <span class="quote quote-icon-wrap"><span class="icon-format_quote"></span></span>
                <p> Officia, eius omnis rem non quis eos excepturi cumque sequi pariatur eaque quasi nihil dicta tempore voluptate culpa, veritatis incidunt voluptatibus qui?</p>
                <cite><span class="text-black">Mike Dorney</span> &mdash; <span class="text-muted">CEO and Co-Founder</span></cite>
              </blockquote>
            </div>
          </div>
        </div>
      </div>
    </div>
    

    
    
    <footer class="site-footer bg-light">
      <div class="container">
        <div class="row">
          <div class="col-md-6">
            <div class="row">
              <div class="col-md-7">
                <h2 class="footer-heading mb-4">About Us</h2>
                <p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. </p>

              </div>
              <div class="col-md-4 ml-auto">
                <h2 class="footer-heading mb-4">Features</h2>
                <ul class="list-unstyled">
                  <li><a href="#">About Us</a></li>
                  <li><a href="#">Testimonials</a></li>
                  <li><a href="#">Terms of Service</a></li>
                  <li><a href="#">Privacy</a></li>
                  <li><a href="#">Contact Us</a></li>
                </ul>
              </div>

            </div>
          </div>
          <div class="col-md-4 ml-auto">

            <div class="mb-5">
              <h2 class="footer-heading mb-4">Subscribe to Newsletter</h2>
              <form action="#" method="post" class="footer-suscribe-form">
                <div class="input-group mb-3">
                  <input type="text" class="form-control rounded-0 border-secondary text-white bg-transparent" placeholder="Enter Email" aria-label="Enter Email" aria-describedby="button-addon2">
                  <div class="input-group-append">
                    <button class="btn btn-primary text-white" type="button" id="button-addon2">Subscribe</button>
                  </div>
                </div>
            </div>


            <h2 class="footer-heading mb-4">Follow Us</h2>
            <a href="#about-section" class="smoothscroll pl-0 pr-3"><span class="icon-facebook"></span></a>
            <a href="#" class="pl-3 pr-3"><span class="icon-twitter"></span></a>
            <a href="#" class="pl-3 pr-3"><span class="icon-instagram"></span></a>
            <a href="#" class="pl-3 pr-3"><span class="icon-linkedin"></span></a>
            </form>
          </div>
        </div>
        <div class="row pt-5 mt-5 text-center">
          <div class="col-md-12">
            <div class="pt-5">
              <p>
            <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
            Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="icon-heart text-danger" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank" >Colorlib</a>
            <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
            </p>
            </div>
          </div>

        </div>
      </div>
    </footer>

    </div>

    <script src="js/jquery-3.3.1.min.js"></script>
    <script src="js/popper.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/owl.carousel.min.js"></script>
    <script src="js/jquery.sticky.js"></script>
    <script src="js/jquery.waypoints.min.js"></script>
    <script src="js/jquery.animateNumber.min.js"></script>
    <script src="js/jquery.fancybox.min.js"></script>
    <script src="js/jquery.easing.1.3.js"></script>
    <script src="js/aos.js"></script>

    <script src="js/main.js"></script>
	<script src="main/navJsLink.js"></script>
     

  </body>

</html>
