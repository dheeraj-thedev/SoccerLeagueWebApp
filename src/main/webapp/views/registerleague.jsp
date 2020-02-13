<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">


<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<div>
		<jsp:include page="/include/menu.jsp"></jsp:include>
	</div>

	<div class="row">
		<div class="container">


			<form action="/registerleague" method="post">
				<div class="form-group row">
					<label for="txtname" class="col-sm-2 form-control-label">Name</label>
					<div class="col-sm-10">
						<input type="text" class="form-control" id="txtname" name="name"
							placeholder="Name here">
					</div>
				</div>


				<div class="form-group row">
					<label for="txtdob" class="col-sm-2 form-control-label">Date
						of Birth</label>
					<div class="col-sm-10">
						<input type="date" class="form-control" id="txtdob" name="dob">
					</div>
				</div>

				<div class="form-group row">
					<label for="txtcontact" class="col-sm-2 form-control-label">Contact
						Number</label>
					<div class="col-sm-10">
						<input type="tel" class="form-control" id="txtcontact"
							name="contact" placeholder="Contact Number ">
					</div>
				</div>

				<div class="form-group row">
					<label for="txtaddress" class="col-sm-2 form-control-label">Address</label>
					<div class="col-sm-10">
						<input type="text" class="form-control" id="txtaddress"
							name="address" placeholder="Address ">
					</div>
				</div>


				<div class="form-group row">
					<label for="txtemail" class="col-sm-2 form-control-label">Email</label>
					<div class="col-sm-10">
						<input type="email" class="form-control" id="txtemail"
							name="email" placeholder="Email Address ">
					</div>
				</div>

				<div class="form-group row">
					<label class="col-sm-2 form-control-label">Gender</label>

					<div class="col-md">
						<label class="form-check-label">
						 <input
							class="form-check-input" type="radio" name="male"
							id="exampleRadios1" value="male" checked=""> Male
						</label>
					</div>
					<div class="col-md">
						<label class="form-check-label"> <input
							class="form-check-input" type="radio" name="female"
							id="exampleRadios3" value="female"> Female
						</label>
					</div>

				</div>

				<div class="form-group row">
					<label for="txtemail" class="col-sm-2 form-control-label">Leagues
					</label>
					<div class="col-sm-10">
						<div class="btn-group">
							<select name="leagues" class="btn btn-primary">
								<c:forEach var="league" items="${leagues}">
                					<option>${league.getId()}-${league.getTitle()}-${league.getSeason()}-${league.getYear()}</option>		
								</c:forEach>
								
							</select>
						</div>
					</div>
				</div>


				<div class="form-group row">
					<input type="submit" class="btn btn-primary">
				</div>


			</form>
		</div>
	</div>


	<div class="footer bg-primary">
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