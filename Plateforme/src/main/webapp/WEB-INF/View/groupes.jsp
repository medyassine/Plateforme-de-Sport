<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Authentification</title>
</head>
<body>
<center>
	<h3>Bienvenu ${user.login}</h3>
	<h5>Mes Groupe</h5>
	<c:forEach items="${groupes}" var="tipo">
        ${tipo.intitule} |  ${tipo.taille}
        <hr/>
    </c:forEach>
	
	</center>
</body>
</html>