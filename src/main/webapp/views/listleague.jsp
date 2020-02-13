<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
<title>Insert title here</title>
</head>
<body>

	<div><jsp:include page="/include/menu.jsp"></jsp:include></div>
	<!-- Page Heading -->
	<table style= "margin-top: 25px">
		<tr bgcolor='#CCCCFF' align='center' valign='center' height='20'>
			<td><h3>Indian Premier Cricket League: Home</h3></td>
		</tr>
	</table>

	<p>This is the Home page for Cricket League IPL .</p>

	<h3>Players</h3>

	<div style="color: black;">
		<table class="table" data-toggle="table">
			<c:forEach items="${leagues}" var="league">
				<tr>
					<td>${league.title}</td>
					<td>${league.season}</td>
					<td>${league.year}</td>
				</tr>
			</c:forEach>
		</table>
	</div>
	<a href="/addleague" type="button" class="btn btn-outline-primary">Add
		League
		</button> 
		
		<div class="bg-primary">
		<jsp:include page="/include/footer.jsp"></jsp:include>
	</div>
		
		<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
			integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
			crossorigin="anonymous"></script> <script
			src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
			integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
			crossorigin="anonymous"></script> <script
			src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
			integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
			crossorigin="anonymous"></script>
</body>
</html>