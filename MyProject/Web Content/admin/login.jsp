  
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin Giriş</title>
<link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>

	<div class="signup-header">
	 	<h2> Admin Giriş</h2>
	</div>

<form method="post" action="admin">
	 
	 <input type="hidden" name="page" value="admin-login-form">
	 
	 	<!-- Validations errors -->
	 	<font color="#F24638"><c:out value="${msg }"></c:out></font>
	 
	 	<div class="signup-group">
	 		<label>Kullanıcı Adı</label>
	 		<input type="text" name="username" placeholder="Kullanıcı Adı" value="<c:out value="${username }"></c:out>">
	 	</div>
	 	<div class="signup-group">
	 		<label>Parola</label>
	 		<input type="password" name="password" placeholder="Parola">
	 	</div>
	 	<div class="signup-group">
	 		<button type="submit" name="login" class="signup-btn">Giriş Yap</button>
	 	</div>
	 </form>
</body>
</html>