<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Inscription</title>
</head>
<body>
<h3>Inscription</h3>
<FONT color="blue">
</FONT>
<form:form action="inscription"  commandName="utilisateur">
	<table>
		<tr>
			<td>Nom :<FONT color="red"><form:errors
				path="nom" /></FONT></td>
		</tr>
		<tr>
			<td><form:input path="nom" /></td>
		</tr>
		<tr>
			<td>Prenom :<FONT color="red"><form:errors
				path="prenom" /></FONT></td>
		</tr>
		<tr>
			<td><form:input path="prenom" /></td>
		</tr>
		<tr>
			<td>Login :<FONT color="red"><form:errors
				path="login" /></FONT></td>
		</tr>
		<tr>
			<td><form:input path="login" /></td>
		</tr>
		<tr>
			<td>Password:<FONT color="red"><form:errors
				path="password" /></FONT></td>
		</tr>
		<tr>
			<td><form:password path="password" /></td>
		</tr>
		
		<tr>
			<td>Telephone :<FONT color="red"><form:errors
				path="tel" /></FONT></td>
		</tr>
		<tr>
			<td><form:input path="tel" /></td>
		</tr>
		<tr>
			<td>Email :<FONT color="red"><form:errors
				path="email" /></FONT></td>
		</tr>
		<tr>
			<td><form:input path="email" /></td>
		</tr>
		<tr>
			<td>Age :<FONT color="red"><form:errors
				path="age" /></FONT></td>
		</tr>
		<tr>
			<td><form:input path="age" /></td>
		</tr>
		
		<tr>
			<td><input type="submit" value="Submit" /></td>
		</tr>
	</table>
</form:form>
</body>
</html>