<!DOCTYPE html>
<!--[if IE 8]><html class="ie8" lang="en"><![endif]-->
<!--[if IE 9]><html class="ie9" lang="en"><![endif]-->
<!--[if !IE]><!-->
<html lang="en">
	<!--<![endif]-->
	<!-- start: HEAD -->
	<!-- start: HEAD -->
	<head>
		<title>SMS - Registration</title>
		<!-- start: META -->
		<!--[if IE]><meta http-equiv='X-UA-Compatible' content="IE=edge,IE=9,IE=8,chrome=1" /><![endif]-->
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0, minimum-scale=1.0, maximum-scale=1.0">
		<meta name="apple-mobile-web-app-capable" content="yes">
		<meta name="apple-mobile-web-app-status-bar-style" content="black">
		<meta content="" name="description" />
		<meta content="" name="author" />
		<!-- end: META -->
		
		<!-- start: GOOGLE FONTS -->
		<link href="http://fonts.googleapis.com/css?family=Lato:300,400,400italic,600,700|Raleway:300,400,500,600,700|Crete+Round:400italic" rel="stylesheet" type="text/css" />
		<!-- end: GOOGLE FONTS -->
		
		<!-- start: MAIN CSS -->
		<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/core-sms/vendor/bootstrap/css/bootstrap.min.css">
		<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/core-sms/vendor/fontawesome/css/font-awesome.min.css">
		<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/core-sms/vendor/themify-icons/themify-icons.min.css">
		<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/core-sms/vendor/animate.css/animate.min.css" media="screen" >
		<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/core-sms/vendor/perfect-scrollbar/perfect-scrollbar.min.css" media="screen">
		<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/core-sms/vendor/switchery/switchery.min.css" media="screen">
		<!-- end: MAIN CSS -->
		
		<!-- start: CLIP-TWO CSS -->
		<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/core-sms/assets/css/styles.css">
		<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/core-sms/assets/css/plugins.css">
		<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/core-sms/assets/css/themes/theme-1.css" id="skin_color" />
		<!-- end: CLIP-TWO CSS -->
		<!-- start: CSS REQUIRED FOR THIS PAGE ONLY -->
		<!-- end: CSS REQUIRED FOR THIS PAGE ONLY -->
		<script src="${pageContext.request.contextPath}/resources/core-sms/assets/js/md5.js"></script>
	</head>
	<!-- end: HEAD -->
	
	<!-- start: BODY -->
	<body class="login">
		<!-- start: LOGIN -->
		<div class="row">
			<div class="main-login col-xs-10 col-xs-offset-1 col-sm-8 col-sm-offset-2 col-md-4 col-md-offset-4">				
				<!-- start: LOGIN BOX -->
				<div class="box-forgot">
					<div class="logo margin-top-10" style="">
						<img src="resources/core-sms/assets/images/logo.png" alt="logo"/>
					</div>
					<form class="form-forgot" id="">
						<fieldset>
							<legend> Recover to your account </legend>
							<p> Please enter your email to recover. </p>
							<div class="form-group">
								<span class="input-icon">
									<input type="text" class="form-control" name="email" id="ajaxlogin_username" placeholder="Email">
									<i class="fa fa-envelope"></i>
								</span>
							</div>							
							<div class="form-actions" >
								<button type="submit" class="btn btn-primary pull-right">
									Send mail
									<i class="fa fa-arrow-circle-right"></i>
								</button>								
							</div>
						</fieldset>
					</form>
					<!-- start: COPYRIGHT -->
					<div class="copyright">
						&copy; <span class="current-year"></span>
						<span class="text-bold text-uppercase"> SMS Interface for School Managerment</span><br>
						<span>Development By Vinh Nguyen</span>
					</div><!-- end: COPYRIGHT -->
				</div><!-- end: LOGIN BOX -->
			</div>
		</div>
		<!-- end: LOGIN -->
		
		<!-- start: MAIN JAVASCRIPTS -->
		<script src="${pageContext.request.contextPath}/resources/core-sms/vendor/jquery/jquery.min.js"></script>
		<script src="${pageContext.request.contextPath}/resources/core-sms/vendor/bootstrap/js/bootstrap.min.js"></script>
		<script src="${pageContext.request.contextPath}/resources/core-sms/vendor/modernizr/modernizr.js"></script>
		<script src="${pageContext.request.contextPath}/resources/core-sms/vendor/jquery-cookie/jquery.cookie.js"></script>
		<script src="${pageContext.request.contextPath}/resources/core-sms/vendor/perfect-scrollbar/perfect-scrollbar.min.js"></script>
		<script src="${pageContext.request.contextPath}/resources/core-sms/vendor/switchery/switchery.min.js"></script>
		<!-- end: MAIN JAVASCRIPTS -->
		
		<!-- start: JAVASCRIPTS REQUIRED FOR THIS PAGE ONLY -->
		<script src="${pageContext.request.contextPath}/resources/core-sms/vendor/jquery-validation/jquery.validate.min.js"></script>
		<!-- end: JAVASCRIPTS REQUIRED FOR THIS PAGE ONLY -->
		
		<!-- start: CLIP-TWO JAVASCRIPTS -->
		<script src="${pageContext.request.contextPath}/resources/core-sms/assets/js/main.js"></script>
		<!-- start: JavaScript Event Handlers for this page -->
		<script src="${pageContext.request.contextPath}/resources/core-sms/assets/js/login.js"></script>
		
		<script>
			jQuery(document).ready(function() {
				Main.init();
				Login.init();
				$('#ajaxlogin_username').focus();
				
				$("#ajaxlogin_action").submit(function(){
					alert("ffgsdfgfdgfdgfg");
					var success_response = "true";
					var success_redirect_page = '${pageContext.request.contextPath}/index.sms';
		         	var username=$("#ajaxlogin_username").val();
		         	var password= $("#ajaxlogin_password").val();
		         	var oldcontent = '<button type="submit" class="btn btn-primary pull-right">Login <i class="fa fa-arrow-circle-right"></i> </button>';
		         	
		         	$.ajax({
		            	type: "POST",
		            	url: "${pageContext.request.contextPath}/login.sms",
		            	data: "username="+username+"&password="+b64_md5(password),
		            	success: function(response) {
		              		if(response == success_response) {
		                	 	window.location = success_redirect_page;  
		              		} else {
								if (progress_image_src != "") {
						  			$("#progress").html(oldcontent);
								}
		                  		alert(error_msg);
							}
		            	},
		            	beforeSend: function() {
							if (progress_image_src != "") {
								$("#progress").html('<img src="'+progress_image_src+'" alt="Loading in progress..." id="ajaxlogin_progress_image" />');
							}
		            	}
		        	});		         
		        	return false;
		    	});		    	
			});
		</script>
		<!-- end: JavaScript Event Handlers for this page -->
		<!-- end: CLIP-TWO JAVASCRIPTS -->
	</body>
	<!-- end: BODY -->
</html>