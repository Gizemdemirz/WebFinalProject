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

	<div class="unagi-content">
		<div class="container">
			<div class="row">
				<div>
					<nav>
						<ul>
							<li><a href="Controller?page=all-products"
								class="list-group-item"> Tüm Ürünler </a></li>
							<li><a href="Controller?page=mobiles"
								class="list-group-item">Telefon</a></li>
							<li><a href="Controller?page=laptops"
								class="list-group-item" style="background: #d6d4d3;">Laptop</a></li>
							<li><a href="Controller?page=clothing"
								class="list-group-item">Kıyafet</a></li>
							<li><a href="Controller?page=home-decor"
								class="list-group-item">Ev Tekstili</a></li>
						</ul>
					</nav>
				</div>

				<div>
					<!-- right -->
					<br>
					<br>
					<br>
					<br>


					<form action="Controller" method="get"
						style="border: none; margin: 40px; padding: 0px; margin-bottom: 20px;">
						<input type="hidden" name="page" value="price-sort"> <input
							type="hidden" name="action" value="laptops"> <select
							name="sort">
							<option value="low-to-high">En Düşük Fiyat</option>
							<option value="high-to-high">En Yüksek Fiyat</option>
						</select> <input type="submit" value="Ara">
					</form>

					<c:forEach items="${list }" var="product">

						<c:if test="${product.getCategory() == 'laptops' }">

							<div class="col-md-4 boyut">
								<img src="${product.getImage() }" class="img-responsive"><br>
								<div class="text-center">
									<a style="color: black;"><c:out
											value="${product.getName() }"></c:out></a>
								</div>
								<p style="text-align: center;">
									<c:out value="${ product.getPrice() }"></c:out>
									&#x20BA;
								</p>
								<div class="text-center">
									<a class="btn btn-primary"
										href="Controller?page=addtocart&action=laptops&id=<c:out value="${product.getId()}"/>">Sepete
										Ekle</a>
								</div>
								<br>
							</div>

						</c:if>


					</c:forEach>

				</div>
			</div>
		</div>
	</div>


	<footer>
		<div class="footer">
			&copy; 2021 Copyright: <a href="Controller?page=index"> Unagi.com</a>
		</div>
	</footer>

</body>
</html>