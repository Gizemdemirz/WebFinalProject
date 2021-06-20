<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Ürün Sayfası</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
	integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u"
	crossorigin="anonymous">
<link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>
	<header>
		<h1>Hoşgeldin Admin</h1>
		<nav>
			<ul>
				<li><a href="admin?page=index">Anasayfa</a></li>
				<li><a href="admin?page=addproduct">Ürün Ekle</a></li>
				<li><a href="#">Ayarlar</a></li>
				<li><a href="#">Sayfalar</a></li>
			</ul>
		</nav>
	</header>

	<sql:setDataSource user="root" password="12345678"
		driver="com.mysql.jdbc.Driver"
		url="jdbc:mysql://localhost:3306/myproject" var="ds" />

	<sql:query var="result" dataSource="${ds }">
 
		 select * from product
		 
	   </sql:query>



	<div class="container">
		<h2>Ürün Listesi:</h2>
		<table>
			<tr>
				<th>Ürün id</th>
				<th>Ürün Adı</th>
				<th>Fiyat</th>
				<th>Kategori</th>
				<th>Fotoğraf</th>
				<th>Seçenek</th>
			</tr>
		</table>

		<c:forEach items="${result.rows }" var="row">
			<table style="table-layout: fixed; width: 100%;">

				<tr>
					<td style="width: 50px;"><c:out value="${row.id }"></c:out></td>
					<td style="width: 100px;"><c:out value="${row.name }"></c:out></td>
					<td style="width: 100px;"><c:out value="${row.price }"></c:out></td>
					<td style="width: 100px;"><c:out value="${row.category}" /></td>
					<td style="width: 100px;"><img src="${row.image}" height="150"
						width="150"></td>
					<td style="width: 100px;"><a
						href="<%= request.getContextPath() %>/admin?page=edit&id=${row.id}"
						style="color: #6bb1f8;">Düzenle</a> || <a
						href="<%= request.getContextPath() %>/admin?page=delete&id=${row.id}"
						style="color: #6bb1f8;">Sil</a></td>
				</tr>
			</table>
		</c:forEach>
	</div>
	<footer>
		<div class="footer">&copy; 2021 Copyright: Unagi.com</div>
	</footer>

</body>
</html>