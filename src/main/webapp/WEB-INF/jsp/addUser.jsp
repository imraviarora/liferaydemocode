	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<script src="https://kit.fontawesome.com/e4f868da6e.js"></script>

	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

	<link href="https://fonts.googleapis.com/css?family=Merriweather+Sans:300,400,400i,700,700i,800,800i&display=swap" rel="stylesheet"><!-- font-family: 'Merriweather Sans', sans-serif; -->

	<link href="https://use.fontawesome.com/releases/v5.0.1/css/all.css" rel="stylesheet">

	<!--  Custom - css -->
	
	<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/style-register.css">


<body id="page-register">
	<div id="container">
		<header id="wrap-logo" class="ac">
			<a href="#"><img src="<%=request.getContextPath()%>/images/logo-ahea.png" /></a>
		</header>
		<section id="wrap-form">
		
	<portlet:actionURL var="adduserURL" name="addUser">
	
	
	</portlet:actionURL>	
		
			<form action="<%=adduserURL%>" method="post">
				<div class="wrap-input icon-briefcase">
					<input type="text" name="" placeholder="Prefix">
				</div>
				<div class="wrap-input icon-user">
					<input type="text" name="" placeholder="First Name">
					<a href="#" title="More Info"><i class="fas fa-info-circle"></i></a>
				</div>
				<div class="wrap-input icon-user">
					<input type="text" name="" placeholder="Last Name">
					<a href="#" title="More Info"><i class="fas fa-info-circle"></i></a>
				</div>
				<div class="wrap-input icon-envelope">
					<input type="text" name="" placeholder="Institution Email">
				</div>
				<div class="wrap-input icon-shield">
					<input type="text" name="" placeholder="Institution Name">
				</div>
				<div class="wrap-input icon-lock">
					<input id="password-field" type="password" name="" placeholder="Password" value="secret">
					<span class="icon-eye fa fa-fw fa-eye field-icon toggle-password"></span>
				</div>
				<div class="wrap-input icon-lock">
					<input id="password-field-confirm" type="password" name="" placeholder="Confirm Password" value="secret">
					<a href="#" title="more info"><i class="fas fa-info-circle"></i></a>
					<span class="icon-eye fa fa-fw fa-eye field-icon toggle-password-confirm"></span>
				</div>

				<div class="wrap-input-submit">
					<input type="submit" name="" value="Create Account">
				</div>
				<div class="box ac">
					<a href="#" class="privacy">Privacy Policy</a>

					<img src="<%=request.getContextPath()%>/images/recaptcha.png" class="block">
				</div>
			</form>
		</section>
	</div>
	<footer class="wrap-logo-bottom">
		<img src="<%=request.getContextPath()%>/images/logo-tower-register.png" class="block">
	</footer>

	<script type="text/javascript">
		jQuery(document).ready(function(){
			$(".toggle-password").click(function() {
				$(this).toggleClass("fa-eye fa-eye-slash");
				var input = $("#password-field");
				if (input.attr("type") == "password")
					input.attr("type", "text");
				else
					input.attr("type", "password");
			});

			$(".toggle-password-confirm").click(function() {
				$(this).toggleClass("fa-eye fa-eye-slash");
				var input = $("#password-field-confirm");
				if (input.attr("type") == "password")
					input.attr("type", "text");
				else
					input.attr("type", "password");
			});
		});
	</script>
</body>