<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Kayıt Sayfası</title>
<link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>

<c:set var="x" value="0"></c:set>
	<c:forEach items="${cartlist }" var="i">
		<c:set var="x" value="${x+1 }"></c:set>
	</c:forEach>

<header>
		<h1>
			Unagi
		</h1>
		<nav>
			<ul>
				<li><a href="Controller?page=index">Anasayfa</a></li>
				<c:choose>
					<c:when test="${session == null}">
						<li><a href="Controller?page=login">Giriş Yap</a></li>
						<li><a href="Controller?page=sign-up">Kayıt Ol</a></li>
					</c:when>
					<c:when test="${session != null}">
						<li><a href="Controller?page=logout" style="color: #F24638;">Çıkış</a></li>
						<li><a href="#">Hesabım</a></li>
					</c:when>
				</c:choose>
				<li><a href="Controller?page=showcart">Sepet(<c:out value="${x}"/>)</a></li>
			</ul>
		</nav>
	</header>
	
	<div class="signup-header">
	 	<h2>Kayıt Ol</h2>
	 </div>

	 <form method="post" action="Controller">
	 
	 <input type="hidden" name="page" value="sign-up-form">
	 
	 	<font color="#F24638"><c:out value="${msg }"></c:out></font>
	 	
	 	
	 	<div class="signup-group">
	 		<label>Ad</label>
	 		<input type="text" name="name" placeholder="Ad" value="<c:out value="${name }"></c:out>" required>
	 	</div>
	 	<div class="signup-group">
	 		<label>Email</label>
	 		<input type="email" name="email" placeholder="Email " value="<c:out value="${email }"></c:out>" required>
	 	</div>
	 	<div class="signup-group">
	 		<label>Kullanıcı Adı</label>
	 		<input type="text" name="username" placeholder="Kullanıcı Adı" value="<c:out value="${username }"></c:out>" required>
	 	</div>
	 	
	 	<div class="signup-group">
	 		<label>Adres</label>
	 		<input type="text" name="address" placeholder="Adres " value="<c:out value="${address }"></c:out>" required>
	 	</div>
	 	<div class="signup-group">
	 		<label>Parola</label>
	 		<input type="password" name="password_1" placeholder="Parola" required>
	 	</div>
	 	<div class="signup-group">
	 		<label>Parola Onay</label>
	 		<input type="password" name="password_2" placeholder="Parola tekrar" required>
	 	</div>
	 	
	 	<div class="signup-group">
	 		<button type="submit" name="register" class="signup-btn">Kayit Ol</button>
	 	</div>
	 	<p>
	 		Zaten bir hesabınız var mı? <a href="Controller?page=login" style="color:#F24638;">Giriş Yap!</a>
	 	</p>
	 </form>
	<br><br><br>
	<footer>
		<div class="footer"> &copy; 2021 Copyright:
	      <a href="Controller?page=index"> Unagi.com</a>
	    </div>
	</footer>

</body>
</html>