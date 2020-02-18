<%@page import="com.trainingbasket.javaee.model.Employee"%>
<%@page import="java.util.List"%>
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
<title>Generate Pay Slips</title>
</head>
<body>
	<div><jsp:include page="/include/menu.jsp"></jsp:include></div>
	<!-- Page Heading -->
	<div id="" class="text-center">
		<table style="margin-top: 25px" align="center">
			<tr bgcolor='#CCCCFF' align='center' valign='center' height='20'>
				<td><h3>Indian Premier Cricket League: PaySlips</h3></td>
			</tr>
		</table>
		<div id="result">
			<h3>${requestScope["message"]}</h3>
		</div>
		<div id="payslip">
			<c:forEach items="${employees}" var="employee">
				<div class="card text-left col-md-6 m-auto">
					<h3 class="card-header">ID : ${employee.getEmpId()} | Name :
						${employee.getEmpName()}</h3>
					<div class="card-block">
						<h4 class="card-title">Department :
							${employee.getDepartment()}</h4>
						<p class="card-text">'
						<h3>Basic Salary : ${employee.getBasicSalary() }</h3>
						<h3>Allowances : ${employee.getAllowances()}</h3>
						<h3>Gross : ${employee.getBasicSalary() + employee.getAllowances()}</h3>
						<h3>Insurance Deduction : ${employee.getInsDed()}</h3>
						<h3>Tax Deduction : ${employee.getTaxDed()}</h3>
						<h3>Total Deduction
							:${employee.getInsDed()+employee.getTaxDed()}</h3>
						<h2>Net Salary :${employee.getBasicSalary() + employee.getAllowances()- employee.getInsDed()- employee.getTaxDed()}</h2>
						<%-- 						<h2>Net Salary :${(employee.getBasicSalary() }+
							${employee.getAllowances()}) -(${employee.getInsDed()} +
							${employee.getTaxDed()})</h2> --%>
						</p>
						<a href="#" class="btn btn-primary">Print Out</a>
					</div>
				</div>
			</c:forEach>
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