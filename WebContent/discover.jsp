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
<link href="css/anytime.5.0.5.css" rel="stylesheet" />

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
<script src="js/anytime.5.0.5.js"></script>

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
									<li><a href="home.jsp">Home</a></li>
									<li class="active"><a href="discover.jsp">Discover</a></li>
									<li><a href="post.jsp">My Post</a></li>
									<li><a href="like.jsp">My Like</a></li>
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
			<div class="span12">
				<div class="page-header">
					<h1>Jobs</h1>
				</div>
			</div>
		</div>

		<!-- /. PAGE TITLE-->


		<div class="row">
			<div class="span9">
				<!--Blog Post-->
				<div class="">
					<a class="btn btn-success" onclick="showWin()" href="#">New Post</a><select
						id="sort-select" style="float: right">
						<option selected>sort by date</option>
						<option>sort by title</option>
					</select>
				</div>


				<hr>

				<!--  Post List -->
				<div id="post-div"></div>
				<!--  /Post List -->

				<!--Pagination-->
				<div class="pagination">
					<ul id="pages">
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

		function showWin(jid) {
			if (jid == null) {
				$("#jtitle-input").val("");
				$("#jpostdate-input").val("");
				$("#jlocation-input").val("");
				$("#jcompany-input").val("");
				$("#jsalary-input").val("");
				$("#jyears-input").val("");
				$("#jwebsite-input").val("");
				$("#jtags-input").val("");
				$("#jtype-select").prop("selectedIndex", 0);
				$("#jindustry-select").prop("selectedIndex", 0);
				$("#jid").html("");
			} else {
				$.ajax({
					url : "HandleJob",
					type : "POST",
					async : false,
					data : {
						action : "DBGetJobByJid",
						jid : jid
					}
				}).done(function(data) {
					var jobs = JSON.parse(data);
					$("#jid").html(jid);
					$("#jtitle-input").val(jobs[0].jtitle);
					$("#jpostdate-input").val(jobs[0].jpostdate);
					$("#jlocation-input").val(jobs[0].jlocation);
					$("#jcompany-input").val(jobs[0].jcompany);
					$("#jsalary-input").val(jobs[0].jsalary);
					$("#jyears-input").val(jobs[0].jyears);
					$("#jwebsite-input").val(jobs[0].jwebsite);
					$("#jtype-select").val(jobs[0].jtype);
					$("#jindustry-select").val(jobs[0].jindustry);

					$.ajax({
						url : "HandleJob",
						type : "POST",
						async : false,
						data : {
							action : "DBGetJobskillByJid",
							jid : jid
						}
					}).done(function(data) {
						var tags = JSON.parse(data);
						var str = "";
						for (var i = 0; i < tags.length; ++i) {
							if (str != "")
								str += ", ";
							str += tags[i].skill;
						}
						$("#jtags-input").val(str);

					})
				})
			}

			var winNode = $("#popup");
			winNode.fadeIn("slow");
		}

		var jobs = [];
		var likes = [];
		function init() {
			jobs = [];
			$("#popup").fadeOut();

			likes = [];
			$.ajax({
				url:"HandleLike",
				type:"GET",
				async:false,
				data :{
					action: "DBGetLikeByUname",
					uname : $("#uname").html(),
				}
			}).done(function(data) {
				likes = JSON.parse(data);
			})


			debugger;
			$.ajax({
				url : "HandleDiscover",
				type : "GET",
				async : false,
				data : {
					action : "DBDiscoverJobsByFollow",
					uname : $("#uname").html(),
				}
			}).done(function(data) {
				debugger;
				jobs = JSON.parse(data);
			});

			jobs.sort(byTime);
			for (var i = 0; i < jobs.length; ++i) {
				$.ajax({
					url : "HandleJob",
					type : "POST",
					async : false,
					data : {
						action : "DBGetJobskillByJid",
						jid : jobs[i].jid,
					}
				}).done(function(data) {
					jobs[i].tags = JSON.parse(data);
				})
			}

			var numOfPages = Math.ceil(Object.keys(jobs).length / 5);
			$("#pages li").remove();
			for (var i = 1; i <= numOfPages; ++i) {
				$("#pages").append(
						"<li><a href='#' onclick='pageChange(" + i + ")'>" + i
								+ "</a></li>");
			}
			pageLoad(0);
		}

		function pageLoad(page) {
			$("#post-div div").remove();
			var count = -1;
			for (var i = page; i < page + 5 && i < jobs.length; ++i) {
				if (++count == 5)
					break;
				var tags = "";
				for (var j = 0; j < jobs[i].tags.length; ++j) {
					if (tags != "")
						tags += ", ";
					tags += "<a href='#'>" + jobs[i].tags[j].skill + "</a>";
				}
				debugger;
				var post = "<div class='blog-post'>"
						+ "<ul style='float: right'>"
						+ "<li class='dropdown' style='list-style-type: none;'><a href='#' class='dropdown-toggle' data-toggle='dropdown'>More <b class='caret'></b></a>"
						+ "<ul class='dropdown-menu'> "
						+ "<li><a href='#' id='like-"
						+ jobs[i].jid
						+ "' onclick='like("
						+ jobs[i].jid
						+ ")'>"
						+ ((jobs[i].jid in likes) ? "Dislike" : "Like")
						+ "</a></li></ul></li> </ul>"
						+ "<table style='width: 100%'>"
						+ "<tr><td style='width: 20%'><b>Title</b></td><td style='width: 30%'>"
						+ jobs[i].jtitle
						+ "</td>"
						+ " <td style='width: 20%'><b>Posting Date</b></td> <td style='width: 30%'>"
						+ jobs[i].jpostdate
						+ "</td> </tr>"
						+ "<tr> <td style='width: 20%'><b>Company</b></td> <td style='width: 30%'>"
						+ jobs[i].jcompany
						+ "</td>"
						+ "<td style='width: 20%'><b>Location</b></td> <td style='width: 30%'>"
						+ (jobs[i].jlocation == null ? "" : jobs[i].jlocation)
						+ "</td> </tr>"
						+ "<tr> <td style='width: 20%'><b>type</b></td> <td style='width: 30%'>"
						+ jobs[i].jtype
						+ "</td>"
						+ "<td style='width: 20%'><b>Industry</b></td> <td style='width: 30%'>"
						+ jobs[i].jindustry
						+ "</td> </tr>"
						+ "<tr> <td style='width: 20%'><b>Author</b></td> <td style='width: 30%'>"
						+ jobs[i].uname
						+ "</td>"
						+ "<td style='width: 20%'><b>Description</b></td> <td style='width: 30%'>"
						+ jobs[i].jwebsite
						+ "</td></tr> </table>"
						+ "<div class='postmetadata' style='margin-top: 10px; margin-bottom: 10px'>"
						+ "<ul> <li><i class='icon-tags'></i> "
						+ tags
						+ "</li> </ul> </div> </div> ";

				$("#post-div").append(post);
			}

		}

		function pageChange(page) {
			pageLoad((page - 1) * 5);
		}

		function byCompany(a, b) {
			return a.jcompany.localeCompare(b.jcompany);
		}

		function byTime(a, b) {
			return new Date(b.jpostdate).getTime()
					- new Date(a.jpostdate).getTime();
		}

		$("#sort-select").change(function() {
			if ($("#sort-select").prop("selectedIndex") == 0)
				jobs.sort(byTime);
			else
				jobs.sort(byCompany);
			pageLoad(0);
		})

		function post() {
			if ($("#jtitle-input").val() == "") {
				alert("Job title cannot be empty.");
				$("#jtitle-input").focus();
				return;
			}
			if ($("#jpostdate-input").val() == "") {
				alert("Posting date cannot be empty.");
				$("#jpostdate-input").focus();
				return;
			}
			if ($("#jcompany-input").val() == "") {
				alert("Company cannot be empty.");
				$("#jcompany-input").focus();
				return;
			}

			var type = "";
			if ($("#jtype-select").prop("selectedIndex") != 0) {
				type = $("#jtype-select").val();
			}

			var industry = "";
			if ($("#jindustry-select").prop("selectedIndex") != 0) {
				type = $("#Jindustry-select").val();
			}

			$.ajax(
					{
						url : "HandleJob",
						type : "POST",
						data : {
							action : ($("#jid").html() == "" ? "DBAddJob"
									: "DBUpdateJobByJid"),
							jid : $("#jid").html(),
							uname : $("#uname").html(),
							jtitle : $("#jtitle-input").val(),
							jpostdate : $("#jpostdate-input").val(),
							jcompany : $("#jcompany-input").val(),
							jlocation : $("jlocation-input").val(),
							jsalary : $("#jsalary-input").val(),
							jyears : $("#jyears-input").val(),
							jtype : type,
							jindustry : industry
						}
					}).done(function(data) {
				debugger;
				if (data == "-1") {
					alert("Failed to post job.");
					init();
					return;
				}

				if ($("#jid").html() == "")
					$("#jid").html(parseInt(data));

				if ($("#jtags-input").val() != "") {
					var tags = $("#jtags-input").val().split(",");
					for (var i = 0; i < tags.length; ++i) {
						var tag = tags[i].trim();
						if (tag == "")
							continue;
						$.ajax({
							url : "HandleJob",
							type : "POST",
							async : false,
							data : {
								action : "DBAddJobskill",
								jid : $("#jid").html(),
								skill : tag
							}
						})
					}
				}
				$("#popup").fadeOut();
				init();
			});

		}

		function like(jid) {
			debugger;
			var cur = $("#like-" + jid).html();
			if (cur == "Like") {
				$.ajax({
					url : "HandleLike",
					type : "POST",
					data : {
						action : "DBAddLike",
						uname : $("#uname").html(),
						jid : jid
					}
				}).done(function(data) {
					$("#like-" + jid).html("Dislike");
				})
			} else {
				$.ajax({
					url : "HandleLike",
					type : "POST",
					data : {
						action : "DBDeleteLike",
						uname : $("#uname").html(),
						jid : jid
					}
				}).done(function(data) {
					$("#like-" + jid).html("Like");
				})

			}

		}

		function cancel() {
			$("#popup").fadeOut();
		}

		init();
	</script>

</body>
</html>
