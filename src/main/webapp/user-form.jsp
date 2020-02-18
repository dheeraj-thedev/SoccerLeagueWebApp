<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>

<head>
<link rel="stylesheet" href="/include/slider.css">
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<jsp:include page="/include/includedesign.jsp"></jsp:include>

<style type="text/css">
.body {
	margin-left: 20%;
	margin-right: 20%;
	margin-top: 10px;
	height: 450px;
}
</style>

<title>Duke's Soccer League: User Management</title>
</head>

<body>
	<div>
		<jsp:include page="/include/menu.jsp"></jsp:include>
	</div>
	<div class="body">

		<div class="row">
			<label style="font-size: xx-large;">User Management</label>
	</div>
			<div class="row">
			<a class="btn btn-primary" href="new"> Add New User</a> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <a class="btn btn-danger" href="list">List
					All Users</a>

		</div>

		<div class="form center">

			<c:if test="${user != null}">
				<form action="update" method="post">
			</c:if>
			<c:if test="${user == null}">
				<form action="insert" method="post">
			</c:if>
			<div class="form ">
				<caption>
					<h2>
						<c:if test="${user != null}">
            			Edit User
            		</c:if>
						<c:if test="${user == null}">
            			Add New User
            		</c:if>
					</h2>
				</caption>
				<c:if test="${user != null}">
					<input type="hidden" name="id" value="<c:out value='${user.id}' />" />
				</c:if>

				<div class="form-group row">
					<label for="name" class="col-md-2 col-form-label">User Name</label>
					<div class="col-md-3">
						<input type="text" required="required" class="form-control form-control-md"
							name="name" id="name" value="<c:out value='${user.name}' />" />
					</div>
				</div>

				<div class="form-group row">
					<label for="email" class="col-md-2 col-form-label">User
						Email</label>
					<div class="col-md-3">
						<input type="email" name="email" required="required"
							class="form-control form-control-md" id="email"
							value="<c:out value='${user.email}' />" />
					</div>
				</div>
				<div class="form-group row">
					<label for="country" class="col-md-2 col-form-label">Country</label>
					<div class="col-md-3">
						<input type="text" required="required" class="form-control form-control-md"
							name="country" value="<c:out value='${user.country}' />" />
					</div>
				</div>
				<div class="form-group row">
					<input class="btn-primary btn form-control form-control-md primary"
						type="submit" value="Save" />
				</div>
				</form>
			</div>
		</div>
	</div>
	<div class="bg-primary">
			<jsp:include page="/include/footer.jsp"></jsp:include>
		</div>
	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
		integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
		crossorigin="anonymous"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
		integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
		crossorigin="anonymous"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
		integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
		crossorigin="anonymous"></script>
</body>
</html>
