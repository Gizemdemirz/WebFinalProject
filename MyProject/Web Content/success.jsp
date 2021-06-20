<%@page import="model.Product"%>
<%@page import="java.util.ArrayList"%>
<%@page import="javax.swing.JOptionPane"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Anasayfa</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
	integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u"
	crossorigin="anonymous">
<link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>

	<c:set var="x" value="0"></c:set>
	<c:forEach items="${cartlist }" var="i">
		<c:set var="x" value="${x+1 }"></c:set>
	</c:forEach>

	<header>
		<h1>Unagi</h1>
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
						<li><a href="#">Hesabım(<c:out value="${username }"></c:out>)
						</a></li>
					</c:when>
				</c:choose>
				<li><a href="Controller?page=showcart">Sepet(<c:out
							value="${x}" />)
				</a></li>
			</ul>
		</nav>
	</header>



	<c:choose>
		<c:when test="${session == null}">
			<%
			JOptionPane.showMessageDialog(null, "Devam etmek için giriş yapınız", "Bilgi", JOptionPane.INFORMATION_MESSAGE);
			request.getRequestDispatcher("login.jsp").forward(request, response);
			%>
		</c:when>

		<c:when test="${x == 0}">

			<%
			JOptionPane.showMessageDialog(null, "Alışveriş sepetiniz boş", "Bilgi", JOptionPane.INFORMATION_MESSAGE);
			request.getRequestDispatcher("cart.jsp").forward(request, response);
			%>
		</c:when>

		<c:when test="${session != null}">


			<div class="container" style="margin-top: 60px; margin-bottom: 60px;">
				<h4>
					Bizi tercih ettiğiniz teşekkürler <font color="#6bb1f8"><c:out
							value="${name }"></c:out></font>. Siparişiniz alındı <font
						color="#6bb1f8"><c:out value="${address }"></c:out></font>
					adresine 3-4 is günü içerisinde teslim edilecek.
				</h4>
				<h4>
					Onay mesajı şu adrese gönderilecek <font color="#6bb1f8"><c:out
							value="${email }"></c:out></font>.
				</h4>

				<br> <br> <a href="Controller?page=index"><input
					type="button" value="Alışverişe devam et" class="btn btn-warning"
					style="width: 100%; padding: 8px; font-size: 16px;"></a>
			</div>

		</c:when>

	</c:choose>

	<footer style="position: fixed; bottom: 0; left: 0; width: 100%;">
		<div class="footer">
			&copy; 2021 Copyright: <a href="Controller?page=index"> Unagi.com</a>
		</div>
	</footer>
</body>
</html>