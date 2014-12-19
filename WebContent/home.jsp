<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	if (session.getAttribute("uname") == null) {
		String username = request.getParameter("uname");
		session.setAttribute("uname", username);
	}

	String uname = (String) session.getAttribute("uname");
%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<title>Referredin</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="">


<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/bootstrap-responsive.min.css" rel="stylesheet">
<link href="css/style.css" rel="stylesheet">

<!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
<!--[if lt IE 9]>
    <script src="js/html5shiv.js"></script>
  <![endif]-->

<!-- Fav and touch icons -->
<link rel="apple-touch-icon-precomposed" sizes="144x144"
	href="img/apple-touch-icon-144-precomposed.png">
<link rel="apple-touch-icon-precomposed" sizes="114x114"
	href="img/apple-touch-icon-114-precomposed.png">
<link rel="apple-touch-icon-precomposed" sizes="72x72"
	href="img/apple-touch-icon-72-precomposed.png">
<link rel="apple-touch-icon-precomposed"
	href="img/apple-touch-icon-57-precomposed.png">
<link rel="shortcut icon" href="img/favicon.png">
<link rel="glyphicons-halflings" sizes="114x114"
	href="img/glyphicons-halflings.png">


<!-- SCRIPT 
    ============================================================-->
<script src="http://code.jquery.com/jquery.js"></script>
<script src="js/bootstrap.min.js"></script>
</head>

<body>
	<!-- Nav -->
	<div class="placeholder"></div>
	<div class="nav-bar" id="header-row">
		<div class="container">
			<div class="row">
				<div style="float: left; width: 10%">
					<a class="brand" href="#"><img src="img/logo-small.png" /></a>
				</div>
				<!-- /LOGO -->

				<!-- Search Bar -->
				<div style="float: left">
					<input class="input" type="text" placeholder="Search Jobs" />

				</div>
				<!-- /Search Bar -->

				<!-- MAIN NAVIGATION -->
				<div style="float: right">
					<div class="navbar  pull-right">
						<div class="navbar-inner">
							<a data-target=".navbar-responsive-collapse" data-toggle="collapse"
								class="btn btn-navbar"><span class="icon-bar"></span><span
								class="icon-bar"></span><span class="icon-bar"></span></a>
							<div
								class="nav-collapse collapse navbar-responsive-collapse postmetadata">
								<ul>
									<li class="active"><a href="home.jsp">Home</a></li>
									<li><a href="post.jsp">My Post</a></li>
									<li class="dropdown"><a href="#" class="dropdown-toggle"
										data-toggle="dropdown"><%=uname%> <b class="caret"></b></a>
										<ul class="dropdown-menu">
											<li><a href="#">Profile</a></li>
											<li><a href="index.jsp">Sign Out</a></li>
										</ul></li>
								</ul>
							</div>
						</div>
					</div>
				</div>
				<!-- MAIN NAVIGATION -->

			</div>
		</div>


	</div>

	<!-- /Nav -->




	<div class="container content">
		<!--PAGE TITLE-->

		<div class="row">
			<div class="span12">
				<div class="page-header">
					<h1>Blog</h1>
				</div>
			</div>
		</div>

		<!-- /. PAGE TITLE-->



		<div class="row">


			<div class="span9">
				<!--Blog Post-->
				<div class="blog-post">
					<h2>There are many variations of passages of Lorem Ipsum available,
						but the majority have suffered alteration in some form, by injected humour</h2>

					<div class="postmetadata">
						<ul>
							<li><i class="icon-user"></i> <a href="#">Author Name</a></li>

							<li><i class="icon-calendar"></i>September 20th, 2013</li>

							<li><i class="icon-comment"></i> <a href="#">100 Comments</a></li>
							<li><i class="icon-tags"></i> <a href="#">Themes</a>, <a href="#">Template</a>
							</li>
						</ul>
					</div>



					<img src="img/img1-870x400.jpeg">
					<p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced
						below for those interested. Sections 1.10.32 and 1.10.33 from "de Finibus
						Bonorum et Malorum" by Cicero are also reproduced in their exact original
						form, accompanied by English versions from the 1914 translation by H.
						Rackham.</p>

					<a class="btn btn-primary" href="blog-details.html">Read More</a>
				</div>


				<!--===============-->

				<div class="blog-post">
					<h2>There are many variations of passages of Lorem Ipsum available,
						but the majority have suffered alteration in some form, by injected humour</h2>

					<div class="postmetadata">
						<ul>
							<li><i class="icon-user"></i> <a href="#">Author Name</a></li>

							<li><i class="icon-calendar"></i>September 20th, 2013</li>

							<li><i class="icon-comment"></i> <a href="#">100 Comments</a></li>
							<li><i class="icon-tags"></i> <a href="#">Themes</a>, <a href="#">Template</a>
							</li>
						</ul>
					</div>



					<img src="img/img1-870x400.jpeg">
					<p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced
						below for those interested. Sections 1.10.32 and 1.10.33 from "de Finibus
						Bonorum et Malorum" by Cicero are also reproduced in their exact original
						form, accompanied by English versions from the 1914 translation by H.
						Rackham.</p>

					<a class="btn btn-primary" href="blog-details.html">Read More</a>
				</div>



				<!--/.Blog Post-->

				<!--Pagination-->
				<div class="pagination">
					<ul>
						<li><a href="#">Prev</a></li>
						<li><a href="#">1</a></li>
						<li><a href="#">2</a></li>
						<li><a href="#">3</a></li>
						<li><a href="#">4</a></li>
						<li><a href="#">5</a></li>
						<li><a href="#">Next</a></li>
					</ul>
				</div>

				<!--/.Pagination-->
			</div>



			<div class="span3">
				<div class="side-bar">

					<h3>Categories</h3>
					<ul class="nav nav-list">
						<li><a href="#">Web Design</a></li>
						<li><a href="#">Typography</a></li>
						<li><a href="#">Inspiration</a></li>
						<li><a href="#">Business</a></li>
					</ul>

				</div>


				<div class="side-bar">
					<h3>Tags</h3>

					<a href="#">cras</a>, <a href="#">sit</a>, <a href="#">amet</a>, <a
						href="#">nibh</a>, <a href="#">libero</a>, <a href="#">gravida</a>, <a
						href="#">nulla</a>
				</div>


				<div class="side-bar">
					<h3>Recent Post</h3>

					<ul class="recent-post">
						<li><a href=""><strong>The standard chunk of Lorem Ipsum
									used since </strong></a> <small><i class="icon-user"></i> <a href="#">Author
									Name</a>, <i class="icon-calendar"></i>Jul 20th, 2013</small></li>

						<li><a href=""><strong>The standard chunk of Lorem Ipsum
									used since </strong></a> <small><i class="icon-user"></i> <a href="#">Author
									Name</a>, <i class="icon-calendar"></i>Jul 20th, 2013</small></li>

						<li><a href=""><strong>The standard chunk of Lorem Ipsum
									used since </strong></a> <small><i class="icon-user"></i> <a href="#">Author
									Name</a>, <i class="icon-calendar"></i>Jul 20th, 2013</small></li>


					</ul>






				</div>


			</div>


			<!--==================-->
		</div>
	</div>


	<%-- <ul class="base">
		<li class="active"><i class="icon-home"></i><a href="home.jsp">Home</a></li>
		<li><i class="icon-user"></i><a href="#"><%=uname%></a></li>
	</ul> --%>


	<!--Footer
==========================-->

	<footer>
		<div class="container">
			<div class="row">
				<div class="span6">
					Copyright copy 2013 Shapebootstrap | All Rights Reserved <br> <small>Aliquam
						tincidunt mauris eu risus.</small>
				</div>
				<div class="span6">
					<div class="social pull-right">
						<a href="#"><img src="img/social/googleplus.png" alt=""></a> <a
							href="#"><img src="img/social/dribbble.png" alt=""></a> <a href="#"><img
							src="img/social/twitter.png" alt=""></a> <a href="#"><img
							src="img/social/dribbble.png" alt=""></a> <a href="#"><img
							src="img/social/rss.png" alt=""></a>
					</div>
				</div>
			</div>
		</div>
	</footer>

	<!--/.Footer-->
	<script type="text/javascript">
		$(function() {
			// Stick the #nav to the top of the window
			var nav = $('.nav-bar');
			var navHomeY = nav.offset().top;
			var isFixed = false;
			var $w = $(window);
			$w.scroll(function() {
				var scrollTop = $w.scrollTop();
				var shouldBeFixed = scrollTop > navHomeY;
				if (shouldBeFixed && !isFixed) {
					nav.css({
						position : 'fixed',
						top : 0,
						left : nav.offset().left,
						width : "100%"
					});
					isFixed = true;
				} else if (!shouldBeFixed && isFixed) {
					nav.css({
						position : 'static'
					});
					isFixed = false;
				}
			});
		})
	</script>

</body>
</html>
