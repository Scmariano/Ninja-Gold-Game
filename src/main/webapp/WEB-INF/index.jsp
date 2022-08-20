<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
<link rel="stylesheet" type="text/css" href="/css/style.css">
<title>Ninja Gold Game</title>
</head>
<body>
	<div>
		<p>Your Gold: <c:out value="${gold}" /> </p>
	</div>
	<div class="d-flex justify-content-around">
		<div class="border border-dark p-2">
			<form action="/gold" method="POST">
				<p class="text-center">Farm</p>
				<p>(earns 10-20 gold)</p><br />
				<button name="farm">Find Gold!</button>
			</form>
		</div>
		<div class="border border-dark p-2">
			<form action="/gold" method="POST">
				<p class="text-center">Cave</p>
				<p>(earns 10-20 gold)</p><br />
				<button name="cave">Find Gold!</button>
			</form>
		</div>
		<div class="border border-dark p-2">
			<form action="/gold" method="POST">
				<p class="text-center">House</p>
				<p>(earns 10-20 gold)</p><br />
				<button name="house">Find Gold!</button>
			</form>
		</div>
		<div class="border border-dark p-2">
			<form action="/gold" method="POST">
				<p class="text-center">Quest</p>
				<p>(earns/takes 0-50 gold)</p><br />
				<button name="quest">Find Gold!</button>
			</form>
		</div>
	</div>
	<div class= "d-flex justify-content-center flex-column border border-dark m-5">
		<c:forEach var="action" items="${actions}">
			<c:if test = "${action.contains('earned')}">
		       <p style="color: green;"><c:out value="${action}"></c:out></p>
		    </c:if>
		    <c:if test = "${action.contains('lost')}">
		       <p style="color: red;"><c:out value="${action}"></c:out></p>
		    </c:if>
		</c:forEach>
	</div>
	
	<form action="/reset" method="post">
		<button>Reset</button>
	</form>
</body>
</html>