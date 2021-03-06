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
<link href="jquery-ui/jquery-ui.css" rel="stylesheet" />
<link href="css/bootstrap-tokenfield.css" rel="stylesheet" >

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
<script src="jquery-ui/jquery-ui.js"></script>
<script src="js/bootstrap-tokenfield.js"></script>

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
									<li><a href="discover.jsp">Discover</a></li>
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
					<h1>Profile</h1>
				</div>
			</div>
		</div>

		<!-- /. PAGE TITLE-->


		<div class="row">
			<div class="span9">
				<!--Blog Post-->
                        <div class="row">
                          <!-- left column -->
                          
                          <!-- edit form column -->
                          <div class="span8 offset2 personal-info">
                            
                            <form class="form-horizontal" role="form">
                              <div class="control-group">
                                <label class="control-label">First name:</label>
                                <div class="controls">
                                  <input id="first_name-input" class="form-control input-xxlarge" type="text" value="">
                                </div>
                              </div>
                              <div class="control-group">
                                <label class="control-label">Last name:</label>
                                <div class="controls">                                
                                  <input id="last_name-input" class="form-control input-xxlarge" type="text" value="">
                                </div>
                                
                              </div>
                              
                              <div class="control-group">
                                <label class="control-label">Skills:</label>
                                <div class="controls">
                                  <input id="skill-input" class="form-control input-xxlarge" type="text" value="" placeholder="Type and hit enter to add a new skill">
                                </div>
                              </div>
                              
                              <div class="control-group">
                                <label class="control-label">Birthday:</label>
                                <div class="controls">
                                  <input id="birthday-input" class="form-control input-xxlarge" type="date" value="">
                                </div>
                              </div>
                              
                              <div class="control-group">
                                <label class="control-label">Discription:</label>
                                <div class="controls">
                                  <input  id="discription-input" class="form-control input-xxlarge" type="text" value="">
                                </div>
                              </div>

                              <div class="control-group">
                                <label class="control-label">Password:</label>
                                <div class="controls">
                                  <input id="pw-input" class="form-control input-xxlarge" type="password" value="">
                                </div>
                              </div>
                              <div class="control-group">
                                <label class="control-label">Confirm password:</label>
                                <div class="controls">
                                  <input class="form-control input-xxlarge" type="password" value="">
                                </div>
                              </div>
                              <div class="control-group">
                                <label class="control-label"></label>
                                <div class="controls">
                                  <input id="save-btn" type="button" class="btn btn-primary" value="Save Changes">
                                  <span></span>
                                  <input type="reset" class="btn btn-default" value="Cancel">
                                </div>
                              </div>
                            </form>
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




			<!--==================-->
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

<script>
var uname;
var user;
var skillList = ['java', 'c', 'javascript', 'python', 'ruby'];

function loadProfile(uname){
    $.get("HandleUser",
        {
          uname : uname
        },
        function(data) {
            $.each(JSON.parse(data),function(k,v){
            	user = v;
            });
            $("#first_name-input").val(user.firstname);
            $("#last_name-input").val(user.lastname);
            $("#birthday-input").val(user.birthdate);
            $("#skill-input").tokenfield('setTokens', user.skill);
    }); 
}

function postProfile(uname){
	$.post("HandleUser", {
		action: "update",
		name : uname,
		firstname: $("#first_name-input").val(),
		lastname: $("#last_name-input").val(),
		birthdate: $("#birthday-input").val(),
		skill: $("#skill-input").val(),
		resume: "",
		password: $('#pw-input').val()
	}, function(data){
		alert(data);
	});
}

function bindBtn(){
	$('#save-btn').click( function(){
		postProfile(uname);
	});
};

function getSkillData(){
	$.get("getSkillData", function(data){
		var list = JSON.parse(data);
		skillList = list;
	});
}

$(function(){
	uname = $('#uname').html();
	loadProfile(uname);
	bindBtn();

	$('#skill-input').tokenfield({
			autocomplete: {
		    	source: skillList,
			    delay: 100
		    }
		}
	);
});

</script>



</body>
</html>
