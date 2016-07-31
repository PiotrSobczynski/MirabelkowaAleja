<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
<link href="<c:url value="/resources/css/home.css" />" rel="stylesheet">
<head>
	<title>Home</title>
	
</head>

	<body>

	<div style="clear: both">
		<h1 style="float:center">Mirabelkowa Aleja</h1>
		<h2 style="float:right">
			<a href="login.html">Login</a>
		</h2>
	</div>


	<P>  The time on the server is ${serverTime}. </P>
	</body>

</html>
