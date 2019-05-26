
<!DOCTYPE html>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html lang="en">
<head>
<title>Home</title>
<link rel="stylesheet" href="css/bootstrap.min.css">
<!-- bootstrap-CSS -->
<link rel="stylesheet" href="css/bootstrap-select.css">
<!-- bootstrap-select-CSS -->
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<!-- style.css -->
<link rel="stylesheet" href="css/flexslider.css" type="text/css"
	media="screen" />
<!-- flexslider-CSS -->
<link rel="stylesheet" href="css/font-awesome.min.css" />
<!-- fontawesome-CSS -->
<link rel="stylesheet" href="css/menu_sideslide.css" type="text/css"
	media="all">
<!-- Navigation-CSS -->
<!-- meta tags -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords"
	content="Resale Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, Sony Ericsson, Motorola web design" />
<script type="application/x-javascript">
	
	
	
	
	
	
	
	
	
	
	 addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } 










</script>
<!-- //meta tags -->
<!--fonts-->
<link href='//fonts.googleapis.com/css?family=Ubuntu+Condensed'
	rel='stylesheet' type='text/css'>
<link
	href='//fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600,600italic,700,700italic,800,800italic'
	rel='stylesheet' type='text/css'>
<!--//fonts-->

<script type="text/javascript">
	function onIndexLoad() {

		var x = '${requestScope.msg}';

		if (x) {

			alert(x);
		}

	}
</script>
</head>
<body onload="onIndexLoad()">

	<jsp:include page="header.jsp" />

	<!-- content-starts-here -->
	<div class="main-content">

		<div class="container">

			<table class="table table-bordered table-striped">

				<tr>
					<th>Category</th>
					<th>Title</th>
					<th>Description</th>
					<th>Image1</th>
					<th>Image2</th>
					<th>Image3</th>
					<th>Image4</th>
					<th>Image5</th>
					<th>Price</th>
					<th>Offer</th>
					<th>Edit</th>
					<th>Delete</th>

				</tr>
				<c:forEach var="product" items="${userProducts}">
					<tr>
						<td>${product.category }</td>
						<td>${product.title }</td>
						<td>${product.description }</td>
						<td><img src="/Resale2/uploads/${product.image1 }"
							height="100" width="100" alt="${product.image1 }" /></td>
						<td><img src="/Resale2/uploads/${product.image2 }"
							height="100" width="100" alt="${product.image2 }" /></td>
						<td><img src="/Resale2/uploads/${product.image3 }"
							height="100" width="100" alt="${product.image3 }" /></td>
						<td><img src="/Resale2/uploads/${product.image4 }"
							height="100" width="100" alt="${product.image4 }" /></td>
						<td><img src="/Resale2/uploads/${product.image5 }"
							height="100" width="100" alt="${product.image5 }" /></td>

						<td>${product.price }</td>
						<td>${product.offer }</td>

						<td><a class="btn btn-warning"
							href="/Resale2/product?method=Edit_Ad&id=${product.id }">Edit</a></td>
						<td><a class="btn btn-danger" href="">Delete</a></td>
					</tr>

				</c:forEach>
			</table>


			<div class="clearfix"></div>
		</div>

		<!-- most-popular-ads -->
		<div class="w3l-popular-ads">
			<h3>Most Popular Ads</h3>
			<div class="w3l-popular-ads-info">
				<div class="col-md-4 w3ls-portfolio-left">
					<div class="portfolio-img event-img">
						<img src="images/ad1.jpg" class="img-responsive" alt="" />
						<div class="over-image"></div>
					</div>
					<div class="portfolio-description">
						<h4>
							<a href="cars.html">Latest Cars</a>
						</h4>
						<p>Suspendisse placerat mattis arcu nec por</p>
						<a href="cars.html"> <span>Explore</span>
						</a>
					</div>
					<div class="clearfix"></div>
				</div>
				<div class="col-md-4 w3ls-portfolio-left">
					<div class="portfolio-img event-img">
						<img src="images/ad2.jpg" class="img-responsive" alt="" />
						<div class="over-image"></div>
					</div>
					<div class="portfolio-description">
						<h4>
							<a href="real-estate.html">Apartments for Sale</a>
						</h4>
						<p>Suspendisse placerat mattis arcu nec por</p>
						<a href="real-estate.html"> <span>Explore</span>
						</a>
					</div>
					<div class="clearfix"></div>
				</div>
				<div class="col-md-4 w3ls-portfolio-left">
					<div class="portfolio-img event-img">
						<img src="images/ad3.jpg" class="img-responsive" alt="" />
						<div class="over-image"></div>
					</div>
					<div class="portfolio-description">
						<h4>
							<a href="jobs.html">BPO jobs</a>
						</h4>
						<p>Suspendisse placerat mattis arcu nec por</p>
						<a href="jobs.html"> <span>Explore</span>
						</a>
					</div>
					<div class="clearfix"></div>
				</div>
				<div class="col-md-4 w3ls-portfolio-left">
					<div class="portfolio-img event-img">
						<img src="images/ad4.jpg" class="img-responsive" alt="" />
						<div class="over-image"></div>
					</div>
					<div class="portfolio-description">
						<h4>
							<a href="electronics-appliances.html">Accessories</a>
						</h4>
						<p>Suspendisse placerat mattis arcu nec por</p>
						<a href="electronics-appliances.html"> <span>Explore</span>
						</a>
					</div>
					<div class="clearfix"></div>
				</div>
				<div class="col-md-4 w3ls-portfolio-left">
					<div class="portfolio-img event-img">
						<img src="images/ad5.jpg" class="img-responsive" alt="" />
						<div class="over-image"></div>
					</div>
					<div class="portfolio-description">
						<h4>
							<a href="furnitures.html">Home Appliances</a>
						</h4>
						<p>Suspendisse placerat mattis arcu nec por</p>
						<a href="furnitures.html"> <span>Explore</span>
						</a>
					</div>
					<div class="clearfix"></div>
				</div>
				<div class="col-md-4 w3ls-portfolio-left">
					<div class="portfolio-img event-img">
						<img src="images/ad6.jpg" class="img-responsive" alt="" />
						<div class="over-image"></div>
					</div>
					<div class="portfolio-description">
						<h4>
							<a href="fashion.html">Clothing</a>
						</h4>
						<p>Suspendisse placerat mattis arcu nec por</p>
						<a href="fashion.html"> <span>Explore</span>
						</a>
					</div>
					<div class="clearfix"></div>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
		<!-- most-popular-ads -->
		<div class="trending-ads">
			<div class="container">
				<!-- slider -->
				<div class="agile-trend-ads">
					<h2>Trending Ads</h2>
					<ul id="flexiselDemo3">
						<li>
							<div class="col-md-3 biseller-column">
								<a href="single.html"> <img src="images/p1.jpg" alt="" /> <span
									class="price">&#36; 450</span>
								</a>
								<div class="w3-ad-info">
									<h5>There are many variations of passages</h5>
									<span>1 hour ago</span>
								</div>
							</div>
							<div class="col-md-3 biseller-column">
								<a href="single.html"> <img src="images/p2.jpg" alt="" /> <span
									class="price">&#36; 399</span>
								</a>
								<div class="w3-ad-info">
									<h5>Lorem Ipsum is simply dummy</h5>
									<span>3 hour ago</span>
								</div>
							</div>
							<div class="col-md-3 biseller-column">
								<a href="single.html"> <img src="images/p3.jpg" alt="" /> <span
									class="price">&#36; 199</span>
								</a>
								<div class="w3-ad-info">
									<h5>It is a long established fact that a reader</h5>
									<span>8 hour ago</span>
								</div>
							</div>
							<div class="col-md-3 biseller-column">
								<a href="single.html"> <img src="images/p4.jpg" alt="" /> <span
									class="price">&#36; 159</span>
								</a>
								<div class="w3-ad-info">
									<h5>passage of Lorem Ipsum you need to be</h5>
									<span>19 hour ago</span>
								</div>
							</div>
						</li>
						<li>
							<div class="col-md-3 biseller-column">
								<a href="single.html"> <img src="images/p5.jpg" alt="" /> <span
									class="price">&#36; 1599</span>
								</a>
								<div class="w3-ad-info">
									<h5>There are many variations of passages</h5>
									<span>1 hour ago</span>
								</div>
							</div>
							<div class="col-md-3 biseller-column">
								<a href="single.html"> <img src="images/p6.jpg" alt="" /> <span
									class="price">&#36; 1099</span>
								</a>
								<div class="w3-ad-info">
									<h5>passage of Lorem Ipsum you need to be</h5>
									<span>1 day ago</span>
								</div>
							</div>
							<div class="col-md-3 biseller-column">
								<a href="single.html"> <img src="images/p7.jpg" alt="" /> <span
									class="price">&#36; 109</span>
								</a>
								<div class="w3-ad-info">
									<h5>It is a long established fact that a reader</h5>
									<span>9 hour ago</span>
								</div>
							</div>
							<div class="col-md-3 biseller-column">
								<a href="single.html"> <img src="images/p8.jpg" alt="" /> <span
									class="price">&#36; 189</span>
								</a>
								<div class="w3-ad-info">
									<h5>Lorem Ipsum is simply dummy</h5>
									<span>3 hour ago</span>
								</div>
							</div>
						</li>
						<li>
							<div class="col-md-3 biseller-column">
								<a href="single.html"> <img src="images/p9.jpg" alt="" /> <span
									class="price">&#36; 2599</span>
								</a>
								<div class="w3-ad-info">
									<h5>Lorem Ipsum is simply dummy</h5>
									<span>3 hour ago</span>
								</div>
							</div>
							<div class="col-md-3 biseller-column">
								<a href="single.html"> <img src="images/p10.jpg" alt="" />
									<span class="price">&#36; 3999</span>
								</a>
								<div class="w3-ad-info">
									<h5>It is a long established fact that a reader</h5>
									<span>9 hour ago</span>
								</div>
							</div>
							<div class="col-md-3 biseller-column">
								<a href="single.html"> <img src="images/p11.jpg" alt="" />
									<span class="price">&#36; 2699</span>
								</a>
								<div class="w3-ad-info">
									<h5>passage of Lorem Ipsum you need to be</h5>
									<span>1 day ago</span>
								</div>
							</div>
							<div class="col-md-3 biseller-column">
								<a href="single.html"> <img src="images/p12.jpg" alt="" />
									<span class="price">&#36; 899</span>
								</a>
								<div class="w3-ad-info">
									<h5>There are many variations of passages</h5>
									<span>1 hour ago</span>
								</div>
							</div>
						</li>
					</ul>
				</div>
			</div>
			<!-- //slider -->
		</div>
		<!--partners-->
		<div class="w3layouts-partners">
			<h3>Our Partners</h3>
			<div class="container">
				<ul>
					<li><a href="#"><img class="img-responsive"
							src="images/p-1.png" alt=""></a></li>
					<li><a href="#"><img class="img-responsive"
							src="images/p-2.png" alt=""></a></li>
					<li><a href="#"><img class="img-responsive"
							src="images/p-3.png" alt=""></a></li>
					<li><a href="#"><img class="img-responsive"
							src="images/p-4.png" alt=""></a></li>
					<li><a href="#"><img class="img-responsive"
							src="images/p-5.png" alt=""></a></li>
					<li><a href="#"><img class="img-responsive"
							src="images/p-6.png" alt=""></a></li>
					<li><a href="#"><img class="img-responsive"
							src="images/p-7.png" alt=""></a></li>
					<li><a href="#"><img class="img-responsive"
							src="images/p-8.png" alt=""></a></li>
					<li><a href="#"><img class="img-responsive"
							src="images/p-9.png" alt=""></a></li>
					<li><a href="#"><img class="img-responsive"
							src="images/p-10.png" alt=""></a></li>
				</ul>
			</div>
		</div>
		<!--//partners-->
		<!-- mobile app -->
		<div class="agile-info-mobile-app">
			<div class="container">
				<div class="col-md-5 w3-app-left">
					<a href="mobileapp.html"><img src="images/app.png" alt=""></a>
				</div>
				<div class="col-md-7 w3-app-right">
					<h3>
						Resale App is the <span>Easiest</span> way for Selling and buying
						second-hand goods
					</h3>
					<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.
						Aliquam auctor Sed bibendum varius euismod. Integer eget turpis
						sit amet lorem rutrum ullamcorper sed sed dui. vestibulum odio at
						elementum. Suspendisse et condimentum nibh.</p>
					<div class="agileits-dwld-app">
						<h6>
							Download The App : <a href="#"><i class="fa fa-apple"></i></a> <a
								href="#"><i class="fa fa-windows"></i></a> <a href="#"><i
								class="fa fa-android"></i></a>
						</h6>
					</div>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
		<!-- //mobile app -->
	</div>
	<!--footer section start-->

	<jsp:include page="footer.jsp" />


	<!--footer section end-->
	<!-- Navigation-Js-->
	<script type="text/javascript" src="js/main.js"></script>
	<script type="text/javascript" src="js/classie.js"></script>
	<!-- //Navigation-Js-->
	<!-- js -->
	<script type="text/javascript" src="js/jquery.min.js"></script>
	<!-- js -->
	<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
	<script src="js/bootstrap.js"></script>
	<script src="js/bootstrap-select.js"></script>
	<script>
		$(document).ready(function() {
			var mySelect = $('#first-disabled2');

			$('#special').on('click', function() {
				mySelect.find('option:selected').prop('disabled', true);
				mySelect.selectpicker('refresh');
			});

			$('#special2').on('click', function() {
				mySelect.find('option:disabled').prop('disabled', false);
				mySelect.selectpicker('refresh');
			});

			$('#basic2').selectpicker({
				liveSearch : true,
				maxOptions : 1
			});
		});
	</script>
	<!-- language-select -->
	<script type="text/javascript" src="js/jquery.leanModal.min.js"></script>
	<link href="css/jquery.uls.css" rel="stylesheet" />
	<link href="css/jquery.uls.grid.css" rel="stylesheet" />
	<link href="css/jquery.uls.lcd.css" rel="stylesheet" />
	<!-- Source -->
	<script src="js/jquery.uls.data.js"></script>
	<script src="js/jquery.uls.data.utils.js"></script>
	<script src="js/jquery.uls.lcd.js"></script>
	<script src="js/jquery.uls.languagefilter.js"></script>
	<script src="js/jquery.uls.regionfilter.js"></script>
	<script src="js/jquery.uls.core.js"></script>
	<script>
		$(document).ready(function() {
			$('.uls-trigger').uls({
				onSelect : function(language) {
					var languageName = $.uls.data.getAutonym(language);
					$('.uls-trigger').text(languageName);
				},
				quickList : [ 'en', 'hi', 'he', 'ml', 'ta', 'fr' ]
			//FIXME
			});
		});
	</script>
	<!-- //language-select -->
	<script type="text/javascript" src="js/jquery.flexisel.js"></script>
	<!-- flexisel-js -->
	<script type="text/javascript">
		$(window).load(function() {
			$("#flexiselDemo3").flexisel({
				visibleItems : 1,
				animationSpeed : 1000,
				autoPlay : true,
				autoPlaySpeed : 5000,
				pauseOnHover : true,
				enableResponsiveBreakpoints : true,
				responsiveBreakpoints : {
					portrait : {
						changePoint : 480,
						visibleItems : 1
					},
					landscape : {
						changePoint : 640,
						visibleItems : 1
					},
					tablet : {
						changePoint : 768,
						visibleItems : 1
					}
				}
			});

		});
	</script>
	<!-- Slider-JavaScript -->
	<script src="js/responsiveslides.min.js"></script>
	<script>
		$(function() {
			$("#slider").responsiveSlides({
				auto : true,
				pager : false,
				nav : true,
				speed : 500,
				maxwidth : 800,
				namespace : "large-btns"
			});

		});
	</script>
	<!-- //Slider-JavaScript -->
	<!-- here stars scrolling icon -->
	<script type="text/javascript">
		$(document).ready(function() {
			/*
				var defaults = {
				containerID: 'toTop', // fading element id
				containerHoverID: 'toTopHover', // fading element hover id
				scrollSpeed: 1200,
				easingType: 'linear' 
				};
			 */

			$().UItoTop({
				easingType : 'easeOutQuart'
			});

		});
	</script>
	<!-- start-smoth-scrolling -->
	<script type="text/javascript" src="js/move-top.js"></script>
	<script type="text/javascript" src="js/easing.js"></script>
	<script type="text/javascript">
		jQuery(document).ready(function($) {
			$(".scroll").click(function(event) {
				event.preventDefault();
				$('html,body').animate({
					scrollTop : $(this.hash).offset().top
				}, 1000);
			});
		});
	</script>
	<!-- start-smoth-scrolling -->
	<!-- //here ends scrolling icon -->
</body>
</html>