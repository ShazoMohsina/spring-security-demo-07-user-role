<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home Page</title>
</head>
<body>
		<h2>Hey Welcome to Home Page !!!!!!!!!!</h2>
		<hr>
		
		Welcome Again!!!!
		
		<hr>
		
		<!-- display username and role -->
		
		<p>
			User : <security:authentication property="principal.username"/>
			<br><br>
			Role(s) : <security:authentication property="principal.authorities"/>
		</p>
		
		<!-- Add a logout Button -->
		<form:form action="${pageContext.request.contextPath}/logout" method="POST">
		
		<input type="submit" value="Logout"/>
		
		</form:form>
</body>
</html>








