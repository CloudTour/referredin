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
									<li><a href="follow.jsp">My Follow</a></li>
									<li class="dropdown"><a href="#" class="dropdown-toggle"
										data-toggle="dropdown"><%=uname%> <b class="caret"></b></a>
										<ul class="dropdown-menu">
											<li><a href="profile.jsp">Profile</a></li>
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
					<h1>Recommend</h1>
				</div>
			</div>
		</div>

		<!-- /. PAGE TITLE-->


		<div class="row">
			<div class="span9">
				<!--Blog Post-->
				<div class="">
					<input type="text" placeholder="Search" id="jsearch-input"> 
					<select onchange="filter()"
						id="jindustry-select">
						<option>Select Industry</option>
						<option>Accounting</option>
						<option>Finance</option>
						<option>Administration</option>
						<option>Business Development</option>
						<option>Business Management</option>
						<option>Business Consulting</option>
						<option>Contingent</option>
						<option>Contractor</option>
						<option>Customer Service and Support</option>
						<option>E-Commerce</option>
						<option>Editorial</option>
						<option>Engineering</option>
						<option>Facilities</option>
						<option>Human Resources</option>
						<option>Information Systems</option>
						<option>Labs</option>
						<option>Legal</option>
						<option>Marketing</option>
						<option>Permanent</option>
						<option>Product Management</option>
						<option>Product Marketing</option>
						<option>Project</option>
						<option>Program Management</option>
						<option>Real Estate</option>
						<option>Sales</option>
						<option>Sciences</option>
						<option>User Experience and Design</option>
					</select> <select id="jtype-select"  onchange="filter()">
						<option>Select Job Type</option>
						<option>Fulltime</option>
						<option>Parttime</option>
						<option>Contract</option>
						<option>Internship</option>
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



		</div>
	</div>


	<%-- <ul class="base">
		<li class="active"><i class="icon-home"></i><a href="home.jsp">Home</a></li>
		<li><i class="icon-user"></i><a href="#"><%=uname%></a></li>
	</ul> --%>


	<!--Footer
==========================-->

	<jsp:include page="footer.jsp" />


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

		$('#jsearch-input').keyup(function(e) {
			filter();
		});
		
		function filter() {
			debugger;
			var key = $("#jsearch-input").val().trim();
			
			if (key == "" && $("#jindustry-select").prop("selectedIndex") == 0
					&& $("#jtype-select").prop("selectedIndex") == 0) {
				pageLoad(jobs, 0);
			}

			var joblist = [];
			for (var i = 0, j = 0; i < jobs.length; ++i) {
				var job = jobs[i];
				if (key != "") {
					key = key.toLowerCase();
					if (job.jtitle.toLowerCase().indexOf(key) == -1
							&& job.jcompany.toLowerCase().indexOf(key) == -1
							&& job.jlocation.toLowerCase().indexOf(key) == -1
							&& job.jtype.toLowerCase().indexOf(key) == -1
							&& job.jindustry.toLowerCase().indexOf(key) == -1
							&& job.jskill.toLowerCase().indexOf(key) == -1
							&& job.uname.toLowerCase().indexOf(key) == -1)
						continue;
				}	
				
				if ($("#jindustry-select").prop("selectedIndex") != 0) {
					if (job.jindustry != $("#jindustry-select").val())
						continue;
				}

				if ($("#jtype-select").prop("selectedIndex") != 0) {
					if (job.jtype != $("#jtype-select").val())
						continue;
				}
				
				joblist[j++] = job;
			}
			
			pageLoad(joblist, 0);
		}

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
		var follows = {};
		function init() {
			$("#popup").fadeOut();

			debugger;
			likes = [];
			var li = 0;
			$.ajax({
				url : "HandleLike",
				type : "GET",
				async : false,
				data : {
					action : "DBGetLikeByUname",
					uname : $("#uname").html(),
				}
			}).done(function(data) {
				debugger;
				var result = JSON.parse(data);
				for (var i = 0; i < result.length; ++i)
					likes[li++] = result[i].jid;
			})

			follows = {};
			$.ajax({
				url : "HandleFollows",
				type : "GET",
				async : false,
				data : {
					action : "DBGetFollows",
					uname : $("#uname").html(),
				}
			}).done(function(data) {
				debugger;
				var result = JSON.parse(data);
				for (var i = 0; i < result.length; ++i)
					follows[result[i].following] = result[i];
			})

			jobs = [];
			var jcount = 0;
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
				var result = JSON.parse(data);
				for (var i = 0; i < result.length; ++i)
					jobs[jcount++] = result[i];
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

			pageLoad(jobs, 0);
		}

		function pageLoad(joblist, page) {
			var numOfPages = Math.ceil(Object.keys(joblist).length / 5);
			$("#pages li").remove();
			for (var i = 1; i <= numOfPages; ++i) {
				$("#pages").append(
						"<li><a href='#' onclick='pageChange(" + i + ")'>" + i
								+ "</a></li>");
			}

			$("#post-div div").remove();
			var count = -1;
			for (var i = page; i < page + 5 && i < joblist.length; ++i) {
				if (++count == 5)
					break;
				debugger;
				var post = "<div class='blog-post'>"
						+ "<ul style='float: right'>"
						+ "<li class='dropdown' style='list-style-type: none;'><a href='#' class='dropdown-toggle' data-toggle='dropdown'>More <b class='caret'></b></a>"
						+ "<ul class='dropdown-menu'> "
						+ "<li><a href='#' id='like-"
						+ joblist[i].jid
						+ "' onclick='like("
						+ joblist[i].jid
						+ ")'>"
						+ ((likes.indexOf(joblist[i].jid) != -1) ? "Dislike"
								: "Like")
						+ "</a></li> "
						+ "<li><a href='#' id='follow-"
						+ i
						+ "' onclick='addfollow("
						+ i
						+ ")'>"
						+ ((joblist[i].uname in follows) ? "Unfollow" : "Follow")
						+ "</a></li> "
						+ "</ul></li> </ul>"
						+ "<table style='width: 100%'>"
						+ "<tr><td style='width: 20%'><b>Title</b></td><td style='width: 30%'>"
						+ joblist[i].jtitle
						+ "</td>"
						+ " <td style='width: 20%'><b>Posting Date</b></td> <td style='width: 30%'>"
						+ joblist[i].jpostdate
						+ "</td> </tr>"
						+ "<tr> <td style='width: 20%'><b>Company</b></td> <td style='width: 30%'>"
						+ joblist[i].jcompany
						+ "</td>"
						+ "<td style='width: 20%'><b>Location</b></td> <td style='width: 30%'>"
						+ joblist[i].jlocation
						+ "</td> </tr>"
						+ "<tr> <td style='width: 20%'><b>type</b></td> <td style='width: 30%'>"
						+ joblist[i].jtype
						+ "</td>"
						+ "<td style='width: 20%'><b>Industry</b></td> <td style='width: 30%'>"
						+ joblist[i].jindustry
						+ "</td> </tr>"
						+ "<tr> <td style='width: 20%'><b>Author</b></td> <td style='width: 30%'>"
						+ "<a href='Mailto:"+joblist[i].uname +"'>"
						+ joblist[i].uname
						+ "</a><br>"
						+ (joblist[i].friendfirstname == undefined ? "" : " (friend of "
						+ joblist[i].friendfirstname
						+ " "
						+ joblist[i].friendlastname
						+ ")")
						+ "</td>"
						+ "<td style='width: 20%'><b>Description</b></td> <td style='width: 30%'>"
						+ "<a href='"+joblist[i].jwebsite+"'> Job Description"
						+ "</a>"
						+ "</td></tr> </table>"
						+ "<div class='postmetadata' style='margin-top: 10px; margin-bottom: 10px'>"
						+ "<ul> <li><i class='icon-tags'></i> "
						+ joblist[i].jskill + "</li> </ul> </div> </div> ";

				$("#post-div").append(post);
			}

		}

		function pageChange(page) {
			pageLoad(jobs, (page - 1) * 5);
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
			pageLoad(jobs, 0);
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

		function addfollow(index) {
			debugger;
			var followid = jobs[index].uname;
			var cur = $("#follow-" + index).html();
			if (cur == "Follow") {
				$.ajax({
					url : "HandleFollows",
					type : "POST",
					data : {
						action : "add",
						uname : $("#uname").html(),
						following : followid
					}
				}).done(function(data) {
					$("#follow-" + index).html("Unfollow");
				})
			} else {
				$.ajax({
					url : "HandleFollows",
					type : "POST",
					data : {
						action : "delete",
						uname : $("#uname").html(),
						following : followid
					}
				}).done(function(data) {
					$("#follow-" + index).html("Follow");
				})
			}
			init();
		}

		function cancel() {
			$("#popup").fadeOut();
		}

		init();
	</script>

</body>
</html>
