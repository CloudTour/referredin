
<%
	session.setAttribute("uname", null);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Referredin</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="">
<!-- Bootstrap -->
<link href="css/bootstrap.css" rel="stylesheet">
<link href="css/bootstrap-responsive.css" rel="stylesheet">
<link href="css/style.css" rel="stylesheet">

<!--Font-->
<link
	href='http://fonts.googleapis.com/css?family=Source+Sans+Pro:200,300,400,600'
	rel='stylesheet' type='text/css'>



<!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
<!--[if lt IE 9]>
      <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->

<!-- Fav and touch icons -->
<link rel="shortcut icon" href="ico/favicon.ico">
<link rel="apple-touch-icon-precomposed" sizes="144x144"
	href="ico/apple-touch-icon-144-precomposed.png">
<link rel="apple-touch-icon-precomposed" sizes="114x114"
	href="ico/apple-touch-icon-114-precomposed.png">
<link rel="apple-touch-icon-precomposed" sizes="72x72"
	href="ico/apple-touch-icon-72-precomposed.png">
<link rel="apple-touch-icon-precomposed"
	href="ico/apple-touch-icon-57-precomposed.png">




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
				<div style="float: right">
					<input type="text" class="form-control" placeholder="Name" id="uname-input"
						required/> <input class="form-control" type="password"
						placeholder="Password" id="password-input" required />
					<button class="btn btn-middle btn-success"
						style="margin-bottom: 10px; margin-left: 10px" onclick="signin()">Sign
						In</button>

				</div>
				<!-- /Search Bar -->
			</div>
		</div>


	</div>

	<!-- /Nav -->



	<div class="container">


		<!--Carousel
  ==================================================-->

		<div id="myCarousel" class="carousel slide">
			<div class="carousel-inner">

				<div class="active item">
					<div class="container">
						<div class="row">

							<div class="span6">

								<div class="carousel-caption">
									<h1>Example headline</h1>
									<p class="lead">Cras justo odio, dapibus ac facilisis in, egestas
										eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id
										dolor id nibh ultricies vehicula ut id elit.</p>
									<form>
										<fieldset>
											<input class="input-xlarge" type="text" placeholder="Email"
												id="reg-uname-input" required /> <input class="input-xlarge"
												type="password" placeholder="Password" id="reg-password-input"
												required /> <input class="input-xlarge" type="password"
												placeholder="Repeat Password" id="reg-repeat-password-input"
												required />
										</fieldset>
									</form>

									<a class="btn btn-large btn-primary" href="#" onclick="join()">Join
										Now</a>
								</div>

							</div>

							<div class="span6">
								<img src="img/slide/slide1.jpg">
							</div>

						</div>
					</div>




				</div>

				<div class="item">

					<div class="container">
						<div class="row">

							<div class="span6">

								<div class="carousel-caption">
									<h1>Example headline</h1>
									<p class="lead">Cras justo odio, dapibus ac facilisis in, egestas
										eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id
										dolor id nibh ultricies vehicula ut id elit.</p>
									<a class="btn btn-large btn-primary" href="#">Sign up today</a>
								</div>

							</div>

							<div class="span6">
								<img src="img/slide/slide2.jpg">
							</div>

						</div>
					</div>

				</div>





			</div>
			<!-- Carousel nav -->
			<a class="carousel-control left " href="#myCarousel" data-slide="prev"><i
				class="icon-chevron-left"></i></a> <a class="carousel-control right"
				href="#myCarousel" data-slide="next"><i class="icon-chevron-right"></i></a>
			<!-- /.Carousel nav -->

		</div>
		<!-- /Carousel -->



		<!-- Feature 
  ==============================================-->


		<div class="row feature-box">
			<div class="span12 cnt-title">
				<h1>At vero eos et accusamus et iusto odio dignissimos</h1>
				<span>Contrary to popular belief, Lorem Ipsum is not simply random
					text.</span>
			</div>

			<div class="span4">
				<img src="img/icon3.png">
				<h2>Feature A</h2>
				<p>Pellentesque habitant morbi tristique senectus et netus et malesuada
					fames ac turpis egestas.</p>

				<a href="#">Read More &rarr;</a>

			</div>

			<div class="span4">
				<img src="img/icon2.png">
				<h2>Feature B</h2>
				<p>Consectetur adipisicing elit, sed do eiusmod tempor incididunt ut
					labore et dolore magna aliqua.</p>
				<a href="#">Read More &rarr;</a>
			</div>

			<div class="span4">
				<img src="img/icon1.png">
				<h2>Feature C</h2>
				<p>Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit
					amet, ante.</p>
				<a href="#">Read More &rarr;</a>
			</div>
		</div>


		<!-- /.Feature -->

		<div class="hr-divider"></div>

		<!-- Row View -->


		<div class="row">
			<div class="span6">
				<img src="img/responsive.png">
			</div>

			<div class="span6">
				<img class="hidden-phone" src="img/icon4.png" alt="">
				<h1>Fully Responsive</h1>
				<p>Pellentesque habitant morbi tristique senectus et netus et malesuada
					fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies
					eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper.
					Aenean ultricies mi vitae est. Mauris placerat eleifend leo.</p>
				<a href="#">Read More &rarr;</a>
			</div>
		</div>


	</div>


	<!-- /.Row View -->



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
		function signin() {
			$.ajax({
				url : "HandleUser",
				type : "POST",
				data : {
					action : "signin",
					uname : $("#uname-input").val(),
					password : $("#password-input").val(),
				}
			}).done(
					function(data) {
						debugger;
						var json = JSON.parse(data);
						if (json.result != "success") {
							alert(json.result);
							$("#uname-input").focus();
						} else {
							window.location.href = "home.jsp?uname="
									+ $("#uname-input").val();
						}
					});
		}

		function join() {
			debugger;
			if ($("#reg-uname-input").val() == "") {
				alert("Username can't be empty.");
				$("#reg-uname-input").focus();
				return;
			}

			var email = $("#reg-uname-input").val();
			var re = /^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
			if (!re.test(email)) {
				alert("Not a valid e-mail address");
				$("#reg-uname-input").focus();
				return;
			}

			if ($("#reg-password-input").val() == "") {
				alert("Password can't be empty.");
				$("#reg-password-input").focus();
				return;
			}

			if ($("#reg-repeat-password-input").val() == "") {
				alert("Password can't be empty.");
				$("#reg-repeat-password-input").focus();
				return;
			}

			if ($("#reg-password-input").val() != $(
					"#reg-repeat-password-input").val()) {
				alert("Passwords don't match.");
				$("#reg-password-input").focus();
				return;
			}

			$.ajax({
				url : "HandleUser",
				type : "POST",
				data : {
					action : "DBAddUserWithSkill",
					uname : $("#reg-uname-input").val(),
					password : $("#reg-password-input").val(),
				}
			}).done(
					function(data) {
						debugger;
						var json = JSON.parse(data);
						if (json.result != "success") {
							alert(json.result);
							$("#reg-uname-input").focus();
						} else {
							window.location.href = "home.jsp?uname="
									+ $("#reg-uname-input").val();
						}
					});
		}
	</script>

</body>
</html>