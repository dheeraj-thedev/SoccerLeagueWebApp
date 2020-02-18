<html>

<head>
<link rel="stylesheet" href="/include/slider.css" >
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<jsp:include page="/include/designhead.jsp"></jsp:include>

<title>Duke's Soccer League: Home</title>
</head>

<body bgcolor='white'>
	<div>

		<jsp:include page="/include/menu.jsp"></jsp:include>
	</div>
	<!-- Page Heading -->


	<jsp:include page="/include/slider.jsp"></jsp:include>


	<p>This is the Home page for Cricket League IPL .</p>

	<h3>Players</h3>

	<ul>
		<button><a href='/listleague'>List all leagues</a></button>
		<button><a href='/listleague'>Register for league</a></button>
	</ul>

	<h3>League Administrator</h3>

	<ul>
		<button><a href='/addleague'>Add a new league</a></button>
	</ul>
	<div class="bg-primary">
		<jsp:include page="/include/footer.jsp"></jsp:include>
	</div>

	<jsp:include page="/include/designbody.jsp"></jsp:include>
</body>

</html>