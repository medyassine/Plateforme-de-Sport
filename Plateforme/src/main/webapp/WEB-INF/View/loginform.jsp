<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>

<head>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Connexion</title>
<style type="text/css">
	.error
	{
		color: red;
	}
	.errorblock
	{
		color:#000;
		background: #ffEEEE;
		border: 3px solid red;
		padding: 8px;
		margin: 16px;
	}
</style>
</head>
<body>
<h3>Connexion</h3>
<FONT color="blue">
</FONT>
<form:form action="connexion"  commandName="utilisateur">
	<table>
		<tr>
			
			<td class="error">${errorss}</td>
			
		</tr>
		<tr>
			<td>User Name:</td>
			<td><form:errors path="login" cssClass="error"/></td>
			<td><form:input path="login" /></td>
		</tr>
		
		<tr>
			<td>Password:</td>
			<td><form:errors path="password" cssClass="error"/></td>
			<td><form:password path="password" /></td>
		</tr>
		<tr>
			<td><input type="submit" value="Submit" /></td>
		</tr>
	</table>
</form:form>
</body>
</html>