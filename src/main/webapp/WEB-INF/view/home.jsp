<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="security"
	uri="http://www.springframework.org/security/tags"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Welc0me to Index Page</title>
</head>
<body>
	<h2>Welcome to com.br.springsecutirydemo</h2>
	<hr>

	<p>
		User:
		<security:authentication property="principal.username" />
		<br> <br> User:
		<security:authentication property="principal.authorities" />
	</p>
	<hr>

	<p>
		<security:authorize access="hasRole('MANAGER')">
			<a href="${pageContext.request.contextPath}/leaders">LeaderShip
				Meeting</a> (Only for Manager peeps)
					<hr>
		</security:authorize>
	</p>

	<form:form action="${pageContext.request.contextPath}/logout"
		method="POST">

		<input type="submit" value="Logout">

	</form:form>

</body>
</html>