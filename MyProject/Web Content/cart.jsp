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

	<div class="container">

		<c:choose>
			<c:when test="${x == 1}">
				<h4 style="margin-top: 40px;">
					Sepetim(
					<c:out value="${x}" />
					)
				</h4>
			</c:when>
			<c:when test="${x > 1}">
				<h4 style="margin-top: 40px;">
					Sepetim(
					<c:out value="${x}" />
					)
				</h4>
			</c:when>
			<c:otherwise>
				<h4 style="margin-top: 40px;">Sepetiniz Boş</h4>
			</c:otherwise>

		</c:choose>
		<table>
			<tr>
				<th>Ürün Adı</th>
				<th>Fiyat</th>
				<th>Kategori</th>
				<th>Ürünü Sil</th>
			</tr>
		</table>

		<c:set var="total" value="0"></c:set>
		<c:forEach items="${cartlist }" var="i">
			<c:forEach items="${list }" var="Product">
				<c:if test="${i == Product.getId() }">

					<c:set var="total" value="${total + Product.getPrice() }"></c:set>

					<table style="table-layout: fixed; width: 100%;">
						<tr>
							<td style="width: 100px;"><img src="${Product.getImage()}"
								height="150" width="120"> <c:out
									value="${Product.getName()}" /></td>
							<td style="width: 50px;"><c:out
									value="${Product.getPrice()}" />&#x20BA;</td>
							<td style="width: 100px;"><c:out
									value="${Product.getCategory()}" /></td>
							<td style="width: 100px;"><a
								href="Controller?page=remove&id=<c:out value="${Product.getId()}"/>"><span
									class="btn btn-danger">Sil</span></a></td>
						</tr>
					</table>
				</c:if>
			</c:forEach>
		</c:forEach>

		<h4 style="margin-top: 40px; margin-bottom: 40px;">
			Tutar:
			<c:out value="${ total}"></c:out>
			&#x20BA;
		</h4>


		<a href="Controller?page=success"><input type="submit"
			value="Sepeti Onayla" class="btn btn-success"
			style="width: 80%; padding: 10px; font-size: 16px;"></a><br>
		<br> <a href="Controller?page=index"><input type="button"
			value="Alışverişe Devam Et" class="btn btn-warning"
			style="width: 80%; padding: 10px; font-size: 16px;"></a>


	</div>
	<br>
	<br>

	<footer>
		<div class="footer">
			&copy; 2021 Copyright: <a href="Controller?page=index"> Unagi.com</a>
		</div>
	</footer>

</body>
</html>