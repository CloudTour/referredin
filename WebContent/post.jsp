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
					<h1>My Post</h1>
				</div>
			</div>
		</div>

		<!-- /. PAGE TITLE-->



		<div class="row">


			<div class="span9">
				<!--Blog Post-->
				<div class="">
					<a class="btn btn-success" onclick="showWin()" href="#">New Post</a> <select
						style="float: right">
						<option selected>sort by date</option>
						<option>sort by title</option>
					</select>
					<!-- Popup -->
				</div>

				<div class="row blog-post" id="popup"
					style="display: none; height: 100%; position: absolute; z-index: 100;">
					<div class="well col-md-3 center login-box" style="width: 100%">
						<form class="form-horizontal">
							<fieldset>

								<!-- title-->
								<div class="input-group input-group-lg">
									<input id="jname-input" type="text" class="form-control"
										placeholder="Job Title"> <input id="postdate-input"
										type="text" class="form-control" placeholder="Posting date">
								</div>
								<div class="clearfix"></div>
								<br>

								<!-- company -->
								<div class="input-group input-group-lg">
									<input id="jcompany-input" type="text" class="form-control"
										placeholder="Company"> <input id="location-input" type="text"
										class="form-control" placeholder="Location">
								</div>
								<div class="clearfix"></div>
								<br>

								<!-- years -->
								<div class="input-group input-group-lg">
									<input id="jsalary-input" type="text" class="form-control"
										placeholder="Salary"> <input id="jyear-input" type="text"
										class="form-control" placeholder="Years">
								</div>
								<div class="clearfix"></div>
								<br>

								<!-- job type-->
								<div class="input-group input-group-lg">
									<select><option>Job Type</option></select> <select><option>Industry</option></select>
								</div>
								<div class="clearfix"></div>
								<br>

								<!-- website -->
								<div class="input-group input-group-lg">
									<input id="jwebsite-input" type="text" class="form-control"
										placeholder="Website">
									<input id="tag-input" type="text" class="form-control"
										placeholder="Tag">
								</div>
								<div class="clearfix"></div>
								<br>

								<!-- Add button -->
								<div style="float: left; width: 50%" class="input-group input-group-lg">
									<p class="center col-md-10">
										<button type="button" class="btn btn-primary" onclick="complete()">Complete</button>
									</p>
								</div>
								<!-- Cancel button -->
								<div style="float: right; width: 50%" class="input-group input-group-lg">
									<p class="center col-md-10">
										<button type="button" class="btn btn-default" onclick="cancel()">Cancel</button>
									</p>
								</div>

							</fieldset>
						</form>
					</div>
					<!--/span-->
				</div>
				<!-- /Popup -->
				<hr>

				<div class="blog-post">
					<ul style="float: right">
						<li class="dropdown" style="list-style-type: none;"><a href="#"
							class="dropdown-toggle" data-toggle="dropdown">More <b class="caret"></b></a>
							<ul class="dropdown-menu">
								<li><a href="#">delete</a></li>
							</ul></li>
					</ul>
					<table style="width: 100%">
						<tr>
							<td style="width: 30%"><b>Title</b></td>
							<td style="width: 70%">Software engineer</td>
						</tr>
						<tr>
							<td style="width: 30%"><b>Posting Date</b></td>
							<td style="width: 70%">September 20th, 2013</td>
						</tr>
						<tr>
							<td style="width: 30%"><b>Company</b></td>
							<td style="width: 70%">Google</td>
						</tr>
						<tr>
							<td style="width: 30%"><b>Location</b></td>
							<td style="width: 70%">US-California-MTV</td>
						</tr>
					</table>



					<div class="postmetadata" style="margin-top: 10px; margin-bottom: 10px">
						<ul>
							<li><i class="icon-tags"></i> <a href="#">Themes</a>, <a href="#">Template</a>
							</li>
						</ul>
					</div>

					<a class="btn btn-primary" style="" href="#">Read More</a>
				</div>


				<!--===============-->



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

		function showWin() {
			var winNode = $("#popup");
			winNode.fadeIn("slow");
		}
	</script>

</body>
</html>
