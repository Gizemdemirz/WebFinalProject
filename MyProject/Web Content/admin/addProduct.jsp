<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Ürün Ekleme</title>
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

	<div class="signup-header">
		<h2>Ürün Ekle</h2>
	</div>

	<form method="post" action="admin">

		<input type="hidden" name="page" value="add_product">

		<div class="signup-group">
			<label>Ürün Adı</label> <input type="text" name="name"
				placeholder="Ürün Adı " required>
		</div>
		<div class="signup-group">
			<label>Fiyat</label> <input type="text" name="price"
				placeholder="Ürün Fiyatı" required>
		</div>
		<div class="signup-group">
			<label>Kategori</label> <input type="text" name="category"
				placeholder="Ürün Kategorisi" required>
		</div>

		<div class="signup-group">
			<label>Öne Çıkanlar</label> <input type="text" name="featured"
				placeholder="yes/no" required>
		</div>
		<div class="signup-group">
			<label for="fileupload"> Fotoğraf seçiniz</label> <input type="file"
				name="image" required><br>
		</div>
		<div class="signup-group">
			<input type="submit" value="İşle">
		</div>
	</form>
	<br>
	<br>
	<footer>
		<div class="footer">
			&copy; 2021 Copyright: <a href="Controller?page=index"> Unagi.com</a>
		</div>
	</footer>
</body>
</html>