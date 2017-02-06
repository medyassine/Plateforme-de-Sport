<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Authentification</title>
</head>
<body>
<center>
	<h3>Bienvenu ${user.login}</h3>
	<a href="<%=request.getContextPath() %>/user/addgroupe">Cree Groupe</a>  | 
		<a href="<%=request.getContextPath() %>/user/groupes">Mes Groupe</a>
		| <a href="<%=request.getContextPath() %>/user/addannonce">Deposez une Annonce </a>
		 	| <a href="<%=request.getContextPath() %>/user/annonces">Mes Annonces</a>
		 	
	</center>
</body>
</html>