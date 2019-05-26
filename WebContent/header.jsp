<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- Navigation -->
<div class="agiletopbar">
	<div class="wthreenavigation">
		<div class="menu-wrap">
			<nav class="menu">
				<div class="icon-list">

					<c:forEach var="category" items="${applicationScope.categories }">
						<a href="products.jsp?categoryName=${category}"><i
							class="${category.iconClass}"></i><span>${category}</span></a>
					</c:forEach>

				</div>
			</nav>
			<button class="close-button" id="close-button">Close Menu</button>
		</div>
		<button class="menu-button" id="open-button"></button>
	</div>
	<div class="clearfix"></div>
</div>
<!-- //Navigation -->
<!-- header -->
<header>
	<div class="w3ls-header">
		<!--header-one-->
		<div class="w3ls-header-left">
			<p>
				<span style="color: white;"> ${sessionScope.User.name }</span>
				&nbsp; &nbsp; <a href="mobileapp.jsp"><i class="fa fa-download"
					aria-hidden="true"></i>Download Mobile App </a>
			</p>
		</div>
		<div class="w3ls-header-right">
			<ul>

				<c:if test="${ not empty  sessionScope.User}">
					<li class="dropdown head-dpdn"><a href="showMyAds.jsp"
						aria-expanded="false"><i class="fa fa-user" aria-hidden="true"></i>
							Show My Ads</a></li>
				</c:if>

				<li class="dropdown head-dpdn"><a href="signin.jsp"
					aria-expanded="false"><i class="fa fa-user" aria-hidden="true"></i>
						Sign In</a></li>
				<li class="dropdown head-dpdn"><a href="/Resale2/logout"><i
						class="fa fa-sign-out" aria-hidden="true"></i>Logout</a></li>

				<li class="dropdown head-dpdn">
					<div class="header-right">
						<!-- Large modal -->

					</div>
				</li>
			</ul>
		</div>

		<div class="clearfix"></div>
	</div>
	<div class="container">
		<div class="agile-its-header">
			<div class="logo">
				<h1>
					<a href="index.jsp"><span>Re</span>sale</a>
				</h1>
			</div>
			<div class="agileits_search">
				<form action="/Resale2/products.jsp" method="get">
					<select id="agileinfo_search" name="category" clas="form-control" required="">
						<option value="">All Categories</option>
						<c:forEach var="category" items="${applicationScope.categories }">
							<option value="${category}">${category}</option>
						</c:forEach>
					</select>
					<button type="submit" class="btn btn-default"
						aria-label="Left Align">
						<i class="fa fa-search" aria-hidden="true"> </i>
					</button>
				</form>

				<c:if test="${ not empty  sessionScope.User}">
					<a class="post-w3layouts-ad" href="post-ad.jsp">Post Free Ad</a>
				</c:if>

			</div>
			<div class="clearfix"></div>
		</div>
	</div>
</header>
<!-- //header -->
<!-- Slider -->
<div class="slider">
	<ul class="rslides" id="slider">
		<li>
			<div class="w3ls-slide-text">
				<h3>Sell or Advertise anything online</h3>
				<a href="categories.jsp" class="w3layouts-explore-all">Browse
					all Categories</a>
			</div>
		</li>
		<li>
			<div class="w3ls-slide-text">
				<h3>Find the Best Deals Here</h3>
				<a href="categories.jsp" class="w3layouts-explore">Explore</a>
			</div>
		</li>
		<li>
			<div class="w3ls-slide-text">
				<h3>Lets build the home of your dreams</h3>
				<a href="real-estate.jsp" class="w3layouts-explore">Explore</a>
			</div>
		</li>
		<li>
			<div class="w3ls-slide-text">
				<h3>Find your dream ride</h3>
				<a href="bikes.jsp" class="w3layouts-explore">Explore</a>
			</div>
		</li>
		<li>
			<div class="w3ls-slide-text">
				<h3>The Easiest Way to get a Job</h3>
				<a href="jobs.jsp" class="w3layouts-explore">Find a Job</a>
			</div>
		</li>
	</ul>
</div>
<!-- //Slider -->


