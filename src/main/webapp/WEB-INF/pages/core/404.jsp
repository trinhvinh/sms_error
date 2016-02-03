<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<body>
	<h1>HTTP Status 404 - Access is denied</h1>
	<c:choose>
		<c:otherwise>
			<h2>Page not found!</h2>
			<img alt="403" src="/resources/core-sms/assets/images/404.png">
		</c:otherwise>
	</c:choose>
</body>
</html>