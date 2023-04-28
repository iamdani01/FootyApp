<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet"
	href="/webjars/bootstrap/4.5.2/css/bootstrap.min.css" />
<meta charset="UTF-8">
<title>FootyApp</title>
</head>
<body>
		<div>
		<h1>Champions League Table </h1> 	
	</div>
	<div>
		<a href="/users/logout" class="btn btn-success">Logout</a>		
	</div>
	<div>
		<a href="/" class="btn btn-success">Dashboard</a>
	</div>
	<div>
	<div id="wg-api-football-games"
     data-host="v3.football.api-sports.io"
     data-key="2a7a7533b7ee5b548178c25ad9f2bcdd"
     data-date=""
     data-league="2"
     data-season="2022"
     data-theme=""
     data-refresh="15"
     data-show-toolbar="true"
     data-show-errors="false"
     data-show-logos="false"
     data-modal-game="true"
     data-modal-standings="true"
     data-modal-show-logos="true">
</div>
<script
    type="module"
    src="https://widgets.api-sports.io/2.0.3/widgets.js">
</script>
	</div>
</body>
</html>