<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page session="false"%>
<%@ page import="java.util.List"%>
<%@ include file="/pluginjsp/taglibrary.jsp" %>

<!DOCTYPE html>
<!-- Template Name: Clip-Two - Responsive Admin Template build with Twitter Bootstrap 3.x | Author: ClipTheme -->
<!--[if IE 8]><html class="ie8" lang="en"><![endif]-->
<!--[if IE 9]><html class="ie9" lang="en"><![endif]-->
<!--[if !IE]><!-->

<html lang="en">
<!--<![endif]-->
<!-- start: HEAD -->
<head>
    <title>SMS Interface for School</title>
	<%@ include file="/pluginjsp/interface/pluginheader.jsp" %>

</head>
<!-- end: HEAD -->

<body>
	<div id="app">
		<!--start sidebar -->
		<%@ include file="/pluginjsp/interface/sidebar2.jsp"%>
		<!-- end sidebar -->
		<div class="app-content">
		
			<!-- start: TOP NAVBAR -->
			<%@ include file="/pluginjsp/interface/header.jsp"%>
			<!-- end: TOP NAVBAR -->
			
			<!-- Start: Main Content -->
			<div class="main-content" >
				<div class="wrap-content container" id="container">
					<iframe id="ifLinkPage" class="app-content container-fluid container-fullw bg-white" style="display: none; width: 100%; height: 100%; padding: 4px;"></iframe>						
					
				</div>
			</div>
		</div>	
	</div>
	
	<script src="${pageContext.request.contextPath}/resources/core-sms/vendor/jquery/jquery.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/core-sms/vendor/bootstrap/js/bootstrap.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/core-sms/vendor/modernizr/modernizr.js"></script>
	<script src="${pageContext.request.contextPath}/resources/core-sms/vendor/jquery-cookie/jquery.cookie.js"></script>
	<script src="${pageContext.request.contextPath}/resources/core-sms/vendor/perfect-scrollbar/perfect-scrollbar.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/core-sms/vendor/switchery/switchery.min.js"></script>
	
	<!-- start: CLIP-TWO JAVASCRIPTS -->
	<script src="${pageContext.request.contextPath}/resources/core-sms/assets/js/main.js"></script>
		
	<!-- start: JavaScript Event Handlers for this page -->
	<script src="${pageContext.request.contextPath}/resources/core-sms/assets/js/index.js"></script>
	<script>
		jQuery(document).ready(function() {
			Main.init();
			Index.init();
		});
	</script>
	
</body>

</html>