<%@page import="java.util.List"%>
<%@page import="java.util.Set"%>
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
	<table style= "margin-top: 25px ">
		<tr bgcolor='#CCCCFF' align='center' valign='center' height='20'>
			<td><h3>Indian Premier Cricket League: Home</h3></td>
		</tr>
	</table>

	<p>This is for adding a new League.</p>

	<form action="/addleague" method="post">
		<label for="title" class="col-sm-1">Title  : </label><input class="btn-outline-primary type="text" name="title" placeholder="League Title"><br>
		<label for="title" class="col-sm-1">Season : </label><select class="btn-outline-primary name="season">
			
			<c:forEach items="${seasons}" var="season">
				<option>${season}</option>
			</c:forEach>
			 
		</select><br> <label for="title" class="col-sm-1">Year : </label><input class="btn-outline-primary type="text" name="year"><br>
		<label class="col-sm-1"> </label><input type="submit">
	</form>

	<span style="color: green"><c:out value="${msg}"></c:out></span>
	<div style="color: red">
		<ol>
			<c:forEach items="${errMsg}" var="errMsg">
				<li>${errMsg}</li>
			</c:forEach>
		</ol>
	</div>
	<%-- <% 
		String msg= (String)request.getAttribute("msg");
		List<String> errMsg = (List<String>) request.getAttribute("errMsg");
		if(msg!=null){
	%>
		<span style="color: green;"><%=msg %></span><br>
	<%
		}
		if(errMsg!=null){
			for(String msgg :errMsg){
	%>
			<span style="color: red;"><%=msgg %></span>
	<%
			}
		}
	%> --%>
	<ul>
		<button><a href='/listleague'>List all leagues</a></button>
		<button><a href='/listleague'>Register for league</a></button>
	</ul>
	
	
	<div class="bg-primary">
		<jsp:include page="/include/footer.jsp"></jsp:include>
	</div>
	<jsp:include page="/include/designbody.jsp"></jsp:include>
</body>
</html>