<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet"
	href="/webjars/bootstrap/4.5.2/css/bootstrap.min.css" />
<script src="/webjars/jquery/3.5.1/jquery.min.js"></script>
<script src="/webjars/bootstrap/4.5.2/js/bootstrap.min.js"></script> 
<meta charset="ISO-8859-1">
<title>FootyApp</title>
<link rel="stylesheet" href="api-football.css">
</head>
<body>
	<div>
		<h1>Welcome <c:out value="${loggedInUser.userName}"/> </h1> 
		<a href="/standings" class="btn btn-success">Standings</a>		
	</div>
	<div>
		<a href="/users/logout" class="btn btn-success">Logout</a>	
	</div>
	<div>
		<div id="wg-api-football-game"
		    data-host="v3.football.api-sports.io"
		    data-key="2a7a7533b7ee5b548178c25ad9f2bcdd"
		    data-id="1022981"
		    data-refresh="15"
		    data-show-errors="false"
		    data-show-logos="true">
		</div>

		<script
		    type="module"
		    src="https://widgets.api-sports.io/2.0.3/widgets.js">
		</script>
	</div>

	
</body>
</html>