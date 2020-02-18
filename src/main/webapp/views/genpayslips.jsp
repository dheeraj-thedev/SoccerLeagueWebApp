<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<!-- Bootstrap CSS -->
<jsp:include page="/include/designhead.jsp"></jsp:include>
<title>Generate Pay Slips</title>
</head>
<body>
	<div><jsp:include page="/include/menu.jsp"></jsp:include></div>
	<!-- Page Heading -->
	<div id="content123" class="text-center">

		<table style="margin-top: 25px" align="center">
			<tr bgcolor='#CCCCFF' align='center' valign='center' height='20'>
				<td><h3>Indian Premier Cricket League: Home</h3></td>
			</tr>
		</table>


		<h3>Choose File to Upload in Server</h3>
		<form action="/processFile" method="post"
			enctype="multipart/form-data">
			<input type="file" name="file" /> <input type="submit"
				value="upload" />
		</form>		
	</div>



	<div class="bg-primary">
		<jsp:include page="/include/footer.jsp"></jsp:include>
	</div>

	<jsp:include page="/include/designbody.jsp"></jsp:include>
</body>
</html>