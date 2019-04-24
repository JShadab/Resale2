<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Home</title>
<link rel="stylesheet" href="../css/bootstrap.min.css">
<!-- bootstrap-CSS -->
<link rel="stylesheet" href="../css/bootstrap-select.css">
<!-- bootstrap-select-CSS -->
<link href="../css/style.css" rel="stylesheet" type="text/css"
	media="all" />
<!-- style.css -->
<link rel="stylesheet" href="../css/flexslider.css" type="text/css"
	media="screen" />
<!-- flexslider-CSS -->
<link rel="stylesheet" href="../css/font-awesome.min.css" />
<!-- fontawesome-CSS -->
<link rel="stylesheet" href="../css/menu_sideslide.css" type="text/css"
	media="all">
<!-- Navigation-CSS -->
<!-- meta tags -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords"
	content="Resale Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, Sony Ericsson, Motorola web design" />
<script type="application/x-javascript">
		 addEventListener("load", function() { 
		 setTimeout(hideURLbar, 0); }, false); 
	 function hideURLbar(){ window.scrollTo(0,1); 
	 } 
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

<style type="text/css">
th {
	background-color: black;
	color: white;
	text-align: center;
}
</style>
</head>
<body onload="onIndexLoad()">

	<jsp:include page="header.jsp" />

	<!-- content-starts-here -->
	<div class="main-content">

		<section>
			<div id="agileits-sign-in-page" class="sign-in-wrapper">
				<div class="agileinfo_signin">
					<h3>Update User Details</h3>
					<form action="/Resale2/user" method="post">
						<input type="hidden" value="update" name="method"> <input
							type="text" name="Name" value="${user.name }" required="">

						<input type="email" name="Email" value="${user.email }"
							readonly="readonly"> <input type="tel"
							value="${user.contact }" name="Mobile" required=""> <input
							type="password" name="Password" value="${user.password}"
							required=""> <input type="text" name="AddressLine1"
							value="${user.addressLine1 }" required=""> <input
							type="text" name="AddressLine2" value="${user.addressLine2 }"
							required=""> <input type="text" name="City"
							value="${user.city }" required=""> <input type="text"
							name="State" value="${user.state}" required=""> <input
							type="text" name="PinCode" value="${user.pincode }" required="">
						<input type="submit" value="Update">
					</form>
				</div>
			</div>
		</section>
	</div>

	<!--footer section start-->

	<jsp:include page="footer.jsp" />


	<!--footer section end-->
	<!-- Navigation-Js-->
	<script type="text/javascript" src="../js/main.js"></script>
	<script type="text/javascript" src="../js/classie.js"></script>
	<!-- //Navigation-Js-->
	<!-- js -->
	<script type="text/javascript" src="../js/jquery.min.js"></script>
	<!-- js -->
	<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
	<script src="../js/bootstrap.js"></script>
	<script src="../js/bootstrap-select.js"></script>
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
	<script type="text/javascript" src="../js/jquery.leanModal.min.js"></script>
	<link href="../css/jquery.uls.css" rel="stylesheet" />
	<link href="../css/jquery.uls.grid.css" rel="stylesheet" />
	<link href="../css/jquery.uls.lcd.css" rel="stylesheet" />
	<!-- Source -->
	<script src="../js/jquery.uls.data.js"></script>
	<script src="../js/jquery.uls.data.utils.js"></script>
	<script src="../js/jquery.uls.lcd.js"></script>
	<script src="../js/jquery.uls.languagefilter.js"></script>
	<script src="../js/jquery.uls.regionfilter.js"></script>
	<script src="../js/jquery.uls.core.js"></script>
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
	<script type="text/javascript" src="../js/jquery.flexisel.js"></script>
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
	<script src="../js/responsiveslides.min.js"></script>
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
	<script type="text/javascript" src="../js/move-top.js"></script>
	<script type="text/javascript" src="../js/easing.js"></script>
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