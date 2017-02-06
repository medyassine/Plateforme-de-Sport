<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="en">
<head>

	<meta charset="utf-8">

	<!-- Template site title
   ================================================== -->
	<title>Meeting Sport</title>

	<meta http-equiv="X-UA-Compatible" content="IE=Edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="keywords" content="">
	<meta name="description" content="">
	
	<!-- <script>
  window.fbAsyncInit = function() {
    FB.init({
      appId      : '1720148504920323',
      xfbml      : true,
      version    : 'v2.6'
    });
  };

  (function(d, s, id){
     var js, fjs = d.getElementsByTagName(s)[0];
     if (d.getElementById(id)) {return;}
     js = d.createElement(s); js.id = id;
     js.src = "//connect.facebook.net/en_US/sdk.js";
     fjs.parentNode.insertBefore(js, fjs);
   }(document, 'script', 'facebook-jssdk'));
</script> -->
	
<!--

Template 2078 Adventure

http://www.tooplate.com/view/2078-adventure

-->
	<!-- Bootstrap CSS
   ================================================== -->
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css" />

	<!-- Animate CSS
   ================================================== -->
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/animate.min.css" />

	<!-- Font Icons
   ================================================== -->
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/font-awesome.min.css" />
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/et-line-font.css" />

	<!-- Nivo Lightbox CSS
   ================================================== -->
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/nivo-lightbox.css" />
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/nivo_themes/default/default.css"/>

	<!-- Owl Carousel CSS
   ================================================== -->
   	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/owl.theme.css" />
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/owl.carousel.css" />

	<!-- BxSlider CSS
   ================================================== -->
   	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bxslider.css"  />

	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/count.css"/>
		
   	<!-- Main CSS
   	================================================== -->
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/style.css" />

	<!-- Google web font
   ================================================== -->
	<link href='https://fonts.googleapis.com/css?family=Raleway:700' rel='stylesheet' type='text/css'>
	
</head>

<body data-spy="scroll" data-target=".navbar-collapse" data-offset="50">


<!-- Preloader section
================================================== -->
<section  class="preloader">

	<div class="sk-rotating-plane"></div>

</section>


<!-- Navigation section
================================================== -->
<section class="navbar navbar-fixed-top custom-navbar" role="navigation" style="background:black;">
	<div class="container">

		<div class="navbar-header">
			<button class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
				<span class="icon icon-bar"></span>
				<span class="icon icon-bar"></span>
				<span class="icon icon-bar"></span>
			</button>
			<a href="#home" class="smoothScroll navbar-brand">MEETING SPORT</a>
		</div>
		<div class="collapse navbar-collapse">
			<ul class="nav navbar-nav navbar-right">
            
				<!-- <li><a href="#home" class="smoothScroll">HOME</a></li> -->
                
				<li><a href="#home" class="smoothScroll">Evènement sportif</a></li>
				<li><a href="#portfolio" class="smoothScroll">Annonces sportif</a></li>
				<li><a href="#form_log" class="smoothScroll">Se connecter / Inscrire</a></li>
				<li><a href="#team" class="smoothScroll">A propos de nous</a></li>

			</ul>
		</div>

	</div>
</section>


<!-- Homepage section
================================================== -->
<div id="home">
	<div class="site-slider">
        <ul class="bxslider">
			<li>
                <img src="${pageContext.request.contextPath}/resources/images/slider/slide1.jpg" alt="slider image 1">
                <div class="container">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="slider-caption">
                                <h2>Olympiad Caddi aayad du BasketBall</h2>
								<p>Pour s'inscrire à  cet évenement, <a href="">cliquer ici</a>. Il vous reste :</p>
								<div class="count">
									<ul>
										  <li class="chart" data-percent="75"><span>26</span>Jours</li>
										  <li class="chart" data-percent="15"><span>15</span>Heures</li>
										  <li class="chart" data-percent="83"><span>59</span>Minutes</li>
									</ul>
									
								</div>
								
								
                            </div>
                        </div>
                    </div>
                </div>
            </li>
            <li>
                <img src="${pageContext.request.contextPath}/resources/images/slider/slide2.jpg" alt="slider image 2">
                <div class="container caption-wrapper">
                    <div class="slider-caption">
								<h2>Olympiad INPT du FootBall</h2>
								<p>Pour s'inscrire à cet évenement, <a href="">cliquer ici</a>. Il vous reste :</p>

								<div class="count">
									<ul>
										  <li class="chart" data-percent="75"><span>26</span>Jours</li>
										  <li class="chart" data-percent="15"><span>15</span>Heures</li>
										  <li class="chart" data-percent="83"><span>59</span>Minutes</li>
									</ul>
								</div>
								
                    </div>
                </div>
            </li>
            
			<li>
                <img src="${pageContext.request.contextPath}/resources/images/slider/slide1.jpg" alt="slider image 1">
                <div class="container">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="slider-caption">
                                <h2>Olympiad INPT du BasketBall</h2>
								<p>L'inscription est terminée, vous pouvez suivre l'avancement de l'évenement en <a href="">cliquant ici</a>.</p>
                            </div>
                        </div>
                    </div>
                </div>
            </li>
			
        </ul> <!-- /.bxslider -->
        <div class="bx-thumbnail-wrapper">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <div id="bx-pager">
                            <a data-slide-index="0" href=""><img src="${pageContext.request.contextPath}/resources/images/slider/thumb1.jpg" alt="thumbnail 1" /></a>
                            <a data-slide-index="1" href=""><img src="${pageContext.request.contextPath}/resources/images/slider/thumb2.jpg" alt="thumbnail 2" /></a>
							<a data-slide-index="2" href=""><img src="${pageContext.request.contextPath}/resources/images/slider/thumb3.jpg" alt="thumbnail 1" /></a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div> <!-- /.site-slider -->
</div>


<!-- Portfolio section
================================================== -->
<section id="form_log" class="parallax-section">
	<div class="container">
		<div class="row">

			<!-- Section title
			================================================== -->
			<div class="col-md-offset-2 col-md-8 col-sm-offset-2 col-sm-8">
				<div class="section-title">
					<h1 class="heading">Meeting Sport</h1>
					<hr>
					<p>Meeting Sport est un plateforme sportif ...</p>
				</div>
			</div>
		</div>

	<div class="form">
		  
		  <ul class="tab-group">
			<li class="tab "><a href="#signup">Sign Up</a></li>
			<li class="tab active"><a href="#login">Log In</a></li>
		  </ul>
		  
		  	<div class="tab-content">
				
				
			<div id="login">   
				  <h1>Se connecter</h1>
				  <form:form action="connexion"  commandName="utilisateur">
			
		
				<div class="field-wrap">
							<p class="error" >${errorss} </p>
				
				<label>
				  User Name <span class="req"><form:errors path="login" cssClass="error"/></span>
				</label>
				<form:input path="login" />
			  </div>
			  
			  <div class="field-wrap">
				<label>
				  Password <span class="req"><form:errors path="password" cssClass="error"/></span>
				</label>
				<form:password path="password" />
			  </div>
			  <p class="forgot"><a href="#">Forgot Password?</a></p>
			  
			  <button class="button button-block"/>Se connecter</button>
			  
			  </form:form>


			</div>
			
			<div id="signup">   
				  <h1>S'inscrire gratuitement</h1>
				  
				  <img class="fb_signup" src="${pageContext.request.contextPath}/resources/images/fb-logo-signup.png" /><br/>
				  
				  <div class="or">
				  <p>-OR-</p>
				  </div>
				  
			  <form:form action="inscription"  commandName="utilisateur">
				  
					<div class="field-wrap">
				  <label>
					Nom<span class="req"><form:errors path="nom" /></span>
				  </label>
				  <form:input path="nom" />
				</div>
			
				<div class="field-wrap">
				  <label>
					Prenom<span class="req"><form:errors path="prenom" /></span>
				  </label>
					<form:input path="prenom" />		
				</div>
				
		
				<div class="field-wrap">
				<label>
				  Email<span class="req"><form:errors path="email" /></span>
				</label>
					<form:input path="email" />	
			  </div>
				<div class="field-wrap">				
				<label>
				  User Name <span class="req"><form:errors path="login" cssClass="error"/></span>
				</label>
				<form:input path="login" />
			  </div>
			  
			  <div class="field-wrap">
				<label>
				  Password <span class="req"><form:errors path="password" cssClass="error"/></span>
				</label>
				<form:password path="password" />
			  </div>
			  <div class="field-wrap">
				<label>
				  Tel<span class="req"><form:errors path="tel" /></span>
				</label>
					<form:input path="tel" />	
			  </div>
			  
			   <div class="field-wrap">
				<label>
				  Age<span class="req"><form:errors path="age" /></span>
				</label>
					<form:input path="age" />	
			   </div>
			  
				  <button type="submit" class="button button-block"/>S'inscrire</button>
				  
				  </form:form>

			</div>
		</div><!-- /form -->

	</div>
</section>		


<!-- Portfolio section
================================================== -->
<section id="portfolio" class="parallax-section">
	<div class="container">
		<div class="row">

			<!-- Section title
			================================================== -->
			<div class="col-md-offset-2 col-md-8 col-sm-offset-2 col-sm-8">
				<div class="section-title">
					<h1 class="heading">Publication des annonces</h1>
					<hr>
					<p>Notre plateforme vous donne la possibilité de publier des annonces ...</p>
				</div>
			</div>

            <div class="col-md-offset-2 col-md-8 col-sm-12">
            	<div class="portfolio-bottom">
            		<h2>Les derniers annonces publiées</h2>
            	</div>
            </div>  
			
            <div class="col-md-4 col-sm-6">
				<div class="grid">
              		<figure class="effect-zoe">
						<img src="${pageContext.request.contextPath}/resources/images/annonce-1.jpg" alt="portfolio img"/>
							<figcaption>
								<h2>Safi (Meftah Elkhir)</h2>
								<h3>21/05/2016</h3>
								<p class="icon-links">
									<a href="${pageContext.request.contextPath}/resources/images/annonce-1.jpg" data-lightbox-gallery="portfolio-gallery"><span class="icon icon-attachment"></span></a>
								</p>
							</figcaption>			
					</figure>
				</div>
            </div>   

            <div class="col-md-4 col-sm-6">
				<div class="grid">
              		<figure class="effect-zoe">
						<img src="${pageContext.request.contextPath}/resources/images/annonce-2.jpg" alt="portfolio img"/>
							<figcaption>
								<h2>Trip Planning</h2>
								<p class="icon-links">
									<a href="${pageContext.request.contextPath}/resources/images/annonce-2.jpg" data-lightbox-gallery="portfolio-gallery"><span class="icon icon-attachment"></span></a>
								</p>
							</figcaption>			
					</figure>
				</div>
            </div> 

            <div class="col-md-4 col-sm-6">
				<div class="grid">
              		<figure class="effect-zoe">
						<img src="${pageContext.request.contextPath}/resources/images/annonce-3.jpg" alt="portfolio img"/>
							<figcaption>
								<h2>Scheduling</h2>
								<p class="icon-links">
									<a href="${pageContext.request.contextPath}/resources/images/annonce-3.jpg" data-lightbox-gallery="portfolio-gallery"><span class="icon icon-attachment"></span></a>
								</p>
							</figcaption>			
					</figure>
				</div>
            </div> 
          	
          	<div class="col-md-4 col-sm-6">
				<div class="grid">
              		<figure class="effect-zoe">
						<img src="${pageContext.request.contextPath}/resources/images/annonce-4.jpg" alt="portfolio img"/>
							<figcaption>
								<h2>Arranging</h2>
								<p class="icon-links">
									<a href="${pageContext.request.contextPath}/resources/images/annonce-4.jpg" data-lightbox-gallery="portfolio-gallery"><span class="icon icon-attachment"></span></a>
								</p>
							</figcaption>			
					</figure>
				</div>
            </div> 

          

            

		</div>
	</div>
</section>		


<!-- team section
================================================== -->
<section id="team" class="parallax-section">
	<div class="container">
		<div class="row">

			<!-- Section title
			================================================== -->
			<div class="col-md-offset-2 col-md-8 col-sm-offset-2 col-sm-8">
				<div class="section-title">
					<h1 class="heading">Notre équipe</h1>
					<hr>
					<p>Dans le cadre de mini projet ...</p>
				</div>
			</div>

			<div class="col-md-4 col-sm-6 wow fadeInUp" data-wow-delay="0.9s">
				<div class="team-wrapper">
					<img src="${pageContext.request.contextPath}/resources/images/team1.jpg" class="img-responsive" alt="team img">
						<div class="team-des">
							<h4>Walid BADININI</h4>
							<ul class="social-icon">
								<li><a href="#" class="fa fa-facebook wow fadeIn" data-wow-delay="0.3s"></a></li>
								<li><a href="#" class="fa fa-twitter wow fadeIn" data-wow-delay="0.6s"></a></li>
								<li><a href="#" class="fa fa-linkedin wow fadeIn" data-wow-delay="0.6s"></a></li>
							</ul>
						</div>
				</div>
			</div>

			<div class="col-md-4 col-sm-6 wow fadeInUp" data-wow-delay="1.3s">
				<div class="team-wrapper">
					<img src="${pageContext.request.contextPath}/resources/images/team2.jpg" class="img-responsive" alt="team img">
						<div class="team-des">
							<h4>Ibrahim ELHADEG</h4>
							<ul class="social-icon">
								<li><a href="#" class="fa fa-facebook wow fadeIn" data-wow-delay="0.3s"></a></li>
								<li><a href="#" class="fa fa-twitter wow fadeIn" data-wow-delay="0.6s"></a></li>
								<li><a href="#" class="fa fa-linkedin wow fadeIn" data-wow-delay="0.6s"></a></li>
							</ul>
						</div>
				</div>
			</div>

			<div class="col-md-4 col-sm-6 wow fadeInUp" data-wow-delay="1.6s">
				<div class="team-wrapper">
					<img src="${pageContext.request.contextPath}/resources/images/team3.jpg" class="img-responsive" alt="team img">
						<div class="team-des">
							<h4>Mohamed YASSINE</h4>
							<ul class="social-icon">
								<li><a href="#" class="fa fa-facebook wow fadeIn" data-wow-delay="0.3s"></a></li>
								<li><a href="#" class="fa fa-twitter wow fadeIn" data-wow-delay="0.6s"></a></li>
								<li><a href="#" class="fa fa-linkedin wow fadeIn" data-wow-delay="0.6s"></a></li>
							</ul>
						</div>
				</div>
			</div>

		</div>
	</div>
</section>


<!-- Footer section
================================================== -->
<footer>
	<div class="container">
		<div class="row">
			<div class="col-md-12 col-sm-12">

				<h2 class="wow bounceIn">MEETING SPORT</h2>
				<ul class="social-icon">
					<li><a href="#" class="fa fa-facebook wow fadeIn" data-wow-delay="0.3s"></a></li>
					<li><a href="#" class="fa fa-twitter wow fadeIn" data-wow-delay="0.6s"></a></li>
					<li><a href="#" class="fa fa-youtube wow fadeIn" data-wow-delay="0.6s"></a></li>
	
				</ul>
				<p>Copyright &copy; 2016 Meeting Sport 
             

			</div>
		</div>
	</div>
</footer>


<!-- Javascript 
================================================== -->

<script src="${pageContext.request.contextPath}/resources/js/jquery.js" /></script>
<script src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js" /></script>
<script src="${pageContext.request.contextPath}/resources/js/smoothscroll.js" /></script>
<script src="${pageContext.request.contextPath}/resources/js/nivo-lightbox.min.js" /></script>
<script src="${pageContext.request.contextPath}/resources/js/jquery.easing-1.3.js" /></script>
<script src="${pageContext.request.contextPath}/resources/js/plugins.js" /></script>
<script src="${pageContext.request.contextPath}/resources/js/owl.carousel.min.js" /></script>
<script src="${pageContext.request.contextPath}/resources/js/jquery.parallax.js" /></script>
<script src="${pageContext.request.contextPath}/resources/js/wow.min.js" /></script>
<script src="${pageContext.request.contextPath}/resources/js/custom.js" /></script>
<script src="${pageContext.request.contextPath}/resources/js/index.js" /></script>

</body>
</html>