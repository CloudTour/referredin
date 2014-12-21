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


<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/css/bootstrap.min.css" rel="stylesheet">
<link href="css/bootstrap-responsive.min.css" rel="stylesheet">
<link href="css/style.css" rel="stylesheet">
<link href="css/anytime.5.0.5.css" rel="stylesheet" />
<!-- <link href="jquery-ui/jquery-ui.css" rel="stylesheet" /> -->
<!-- <link href="css/bootstrap-tokenfield.css" rel="stylesheet" > -->

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
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/js/bootstrap.min.js"></script>
<script src="js/anytime.5.0.5.js"></script>
<!-- <script src="jquery-ui/jquery-ui.js"></script> -->
<!-- <script src="js/bootstrap-tokenfield.js"></script> -->

</head>

<body>
	<p style="display: none;" id="uname"><%=uname%></p>

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
									<li><a href="">Discover</a></li>
									<li><a href="post.jsp">My Post</a></li>
									<li><a href="#">My Like</a></li>
									<li><a href="#">Inbox</a></li>
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
			<div class="col-md-12">
				<div class="page-header">
					<h1>Following</h1>
				</div>
			</div>
		</div>

		<!-- /. PAGE TITLE-->


		<div class="row">
			<div class="col-md-9">
				<!--Blog Post-->
                    <div class="row">
                      <!-- left column -->
                      <div class="col-md-3">
                        <div class="text-center">
                        </div>
                      </div>
                          
                      <!-- center -->
                      <div class="col-md-9 personal-info">
                        <div class="alert alert-info alert-dismissable">
                          <a class="panel-close close" data-dismiss="alert">×</a> 
                          <i class="fa fa-coffee"></i>
                          This is an <strong>.alert</strong>. Use this to show important messages to the user.
                        </div>

                        <div id="following-list" >

                        </div>
                        
                      </div>
                    </div>
				<!--  /Post List -->

				<!--Pagination-->
				<div class="pagination">
					<ul id="pages">
					</ul>
				</div>

				<!--/.Pagination-->
			</div>



			<div class="col-md-3">
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
				<div class="col-md-6">
					Copyright copy 2013 Shapebootstrap | All Rights Reserved <br> <small>Aliquam
						tincidunt mauris eu risus.</small>
				</div>
				<div class="col-md-6">
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

<script>
var uname='';
var following_list=[];;


function loadFollowList(uname){
	$.get('HandleFollows', {uname: uname}, function(data){
		var list = JSON.parse(data);
		following_list = list;

		renderFollowList();
	})
}

function renderFollowList(){
	console.log('render!!!!!!!!!!');
	var list = $('#following-list');
	$.each(following_list, function(k,follow){
		dom = '<div><div  '
			+'" >' 
			+ follow.following 
			+ '<a class="follow-btn btn btn-default active" href="#" data-isfollowed="true" data-following="'
			+ follow.following
			+'" >Unfollow</a>'
			+'</div></div>'

		list.append($(dom));
	});

	$('.follow-btn').click(function(){
		var action = "add";
		if ($(this).attr('data-isfollowed')== 'true' ){
			action = "delete";
		}
		console.log(action);
		var data = {
			action: action,
			uname: uname,
			following: $(this).data('following')
		};

		function cb(data){
			//TODO: check result
			console.log(this);
			if(this.html()=="Follow"){
				this.html("Unfollow");
				this.attr('data-isfollowed', "true");
				this.toggleClass( "active" )
			}
			else{
				this.html("Follow");
				this.attr('data-isfollowed', "false");
				this.toggleClass( "active" )

			}
		}
		$.post('HandleFollows', data, cb.bind($(this) ) );

	});


}


$(function(){
	uname = $('#uname').html();

	loadFollowList(uname);




});

</script>



</body>
</html>
