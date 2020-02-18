<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>

<jsp:include page="/include/designhead.jsp"></jsp:include>


<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<div>
		<jsp:include page="/include/menu.jsp"></jsp:include>
	</div>

	<div class="row">
		<div class="container">


			<form style="margin-top: 10px" action="/registerleague" method="post">
				<div class="form-group row">
					<label for="txtname" class="col-sm-2 form-control-label">Name</label>
					<div class="col-sm-3">
						<input type="text" class="form-control btn-outline-primary" id="txtname" name="name"
							placeholder="Name here">
					</div>
				</div>


				<div class="form-group row">
					<label for="txtdob" class="col-sm-2 form-control-label">Date
						of Birth</label>
					<div class="col-sm-3">
						<input type="date" class="form-control btn-outline-primary" id="txtdob" name="dob">
					</div>
				</div>

				<div class="form-group row">
					<label for="txtcontact" class="col-sm-2 form-control-label">Contact
						Number</label>
					<div class="col-sm-3">
						<input type="tel" class="form-control btn-outline-primary" id="txtcontact"
							name="contact" placeholder="Contact Number ">
					</div>
				</div>

				<div class="form-group row">
					<label for="txtaddress" class="col-sm-2 form-control-label">Address</label>
					<div class="col-sm-3">
						<input type="text" class="form-control btn-outline-primary" id="txtaddress"
							name="address" placeholder="Address ">
					</div>
				</div>


				<div class="form-group row">
					<label for="txtemail" class="col-sm-2 form-control-label">Email</label>
					<div class="col-sm-3">
						<input type="email" class="form-control btn-outline-primary" id="txtemail"
							name="email" placeholder="Email Address ">
					</div>
				</div>

				<div class="form-group row">
					<label for="gender" class="col-sm-2 form-control-label">Gender</label>
					<div class="btn-group row col-sm-3" data-toggle="buttons">
						<label class="btn btn-outline-primary active">
						<input class="button-check-input" type="radio" name="gender" id="male" value="male" checked=""> Male</label>
						<label class="btn btn-outline-primary"> 
						 <input class="button-check-input" type="radio" name="gender" id="female" value="female"> Female</label>
					</div>
				</div>

				<div class="form-group row">
					<label for="txtemail" class="col-sm-2 form-control-label">Leagues
					</label>
					<div class="col-sm-3">
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
	<jsp:include page="/include/designbody.jsp"></jsp:include>
</body>
</html>