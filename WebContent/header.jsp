
<!-- Navigation -->
<div class="agiletopbar">
	<div class="wthreenavigation">
		<div class="menu-wrap">
			<nav class="menu">
				<div class="icon-list">
					<a href="mobiles.jsp"><i class="fa fa-fw fa-mobile"></i><span>Mobiles</span></a>
					<a href="electronics-appliances.jsp"><i
						class="fa fa-fw fa-laptop"></i><span>Electronics and
							appliances</span></a> <a href="cars.jsp"><i class="fa fa-fw fa-car"></i><span>Cars</span></a>
					<a href="bikes.jsp"><i class="fa fa-fw fa-motorcycle"></i><span>Bikes</span></a>
					<a href="furnitures.jsp"><i class="fa fa-fw fa-wheelchair"></i><span>Furniture</span></a>
					<a href="pets.jsp"><i class="fa fa-fw fa-paw"></i><span>Pets</span></a>
					<a href="books-sports-hobbies.jsp"><i class="fa fa-fw fa-book"></i><span>Books,
							Sports & Hobbies</span></a> <a href="fashion.jsp"><i
						class="fa fa-fw fa-asterisk"></i><span>Fashion</span></a> <a
						href="kids.jsp"><i class="fa fa-fw fa-asterisk"></i><span>Kids</span></a>
					<a href="services.jsp"><i class="fa fa-fw fa-shield"></i><span>Services</span></a>
					<a href="jobs.jsp"><i class="fa fa-fw fa-at"></i><span>Jobs</span></a>
					<a href="real-estate.jsp"><i class="fa fa-fw fa-home"></i><span>Real
							Estate</span></a>
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
				<span style="color: white;"> ${sessionScope.User.name }</span> &nbsp; &nbsp; <a
					href="mobileapp.jsp"><i class="fa fa-download"
					aria-hidden="true"></i>Download Mobile App </a>
			</p>
		</div>
		<div class="w3ls-header-right">
			<ul>
				<li class="dropdown head-dpdn"><a href="signin.jsp"
					aria-expanded="false"><i class="fa fa-user" aria-hidden="true"></i>
						Sign In</a></li>
				<li class="dropdown head-dpdn"><a href="help.jsp"><i
						class="fa fa-question-circle" aria-hidden="true"></i> Help</a></li>
				<li class="dropdown head-dpdn"><a href="#"><span
						class="active uls-trigger"><i class="fa fa-language"
							aria-hidden="true"></i>languages</span></a></li>
				<li class="dropdown head-dpdn">
					<div class="header-right">
						<!-- Large modal -->
						<div class="agile-its-selectregion">
							<button class="btn btn-primary" data-toggle="modal"
								data-target="#myModal">
								<i class="fa fa-globe" aria-hidden="true"></i>Select City
							</button>
							<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
								aria-hidden="true">
								<div class="modal-dialog modal-lg">
									<div class="modal-content">
										<div class="modal-header">
											<button type="button" class="close" data-dismiss="modal"
												aria-hidden="true">&times;</button>
											<h4 class="modal-title" id="myModalLabel">Please Choose
												Your Location</h4>
										</div>
										<div class="modal-body">
											<form class="form-horizontal" action="#" method="get">
												<div class="form-group">
													<select id="basic2" class="show-tick form-control" multiple>
														<optgroup label="Popular Cities">
															<option selected style="display: none; color: #eee;">Select
																City</option>
															<option>Birmingham</option>
															<option>Anchorage</option>
															<option>Phoenix</option>
															<option>Little Rock</option>
															<option>Los Angeles</option>
															<option>Denver</option>
															<option>Bridgeport</option>
															<option>Wilmington</option>
															<option>Jacksonville</option>
															<option>Atlanta</option>
															<option>Honolulu</option>
															<option>Boise</option>
															<option>Chicago</option>
															<option>Indianapolis</option>
														</optgroup>
														<optgroup label="Alabama">
															<option>Birmingham</option>
															<option>Montgomery</option>
															<option>Mobile</option>
															<option>Huntsville</option>
															<option>Tuscaloosa</option>
														</optgroup>

													</select>
												</div>
											</form>
										</div>
									</div>
								</div>
							</div>
						</div>
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
				<form action="#" method="post">
					<input name="Search" type="text"
						placeholder="How can we help you today?" required="" /> <select
						id="agileinfo_search" name="agileinfo_search" required="">
						<option value="">All Categories</option>
						<option value="Mobiles">Mobiles</option>
						<option value="Electronics & Appliances">Electronics &
							Appliances</option>
						<option value="Cars">Cars</option>
						<option value="Bikes">Bikes</option>
						<option value="Furnitures">Furnitures</option>
						<option value="Books, Sports & Hobbies">Books, Sports &
							Hobbies</option>
						<option value="Fashion">Fashion</option>
						<option value="Kids">Kids</option>
						<option value="Services">Services</option>
						<option value="Jobs">Jobs</option>
						<option value="Real Estates">Real Estates</option>
					</select>
					<button type="submit" class="btn btn-default"
						aria-label="Left Align">
						<i class="fa fa-search" aria-hidden="true"> </i>
					</button>
				</form>
				<a class="post-w3layouts-ad" href="post-ad.jsp">Post Free Ad</a>
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


