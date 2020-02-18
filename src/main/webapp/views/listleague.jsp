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
<jsp:include page="/include/designhead.jsp"></jsp:include>
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
	<ul>
		<button type="button" class="btn btn-outline-primary"><a href="/addleague">AddLeague</a>
		</button> 
	</ul>
		
	<div class="bg-primary">
		<jsp:include page="/include/footer.jsp"></jsp:include>
	</div>
		
	<jsp:include page="/include/designbody.jsp"></jsp:include>
</body>
</html>