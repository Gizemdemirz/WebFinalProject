<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Düzenleme Paneli</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous"> 
<link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>
	<header>
		<h1>
			Hoşgeldin Admin
		</h1>
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
	 	<h2>Düzenle</h2>
	 </div>

	 <form method="post" action="admin">
	 
	 <input type="hidden" name="page" value="edit_product">
	 <input type="hidden" name="id" value="<c:out value="${p.getId() }"/>">
     
	 	<div class="signup-group">
	 		<label>Ürün Adı</label>
	 		<input type="text" name="name" value="<c:out value="${p.getName() }"></c:out>" required>
	 	</div>
	 	<div class="signup-group">
	 		<label>Fiyat</label>
	 		<input type="text" name="price" value="<c:out value="${p.getPrice() }"></c:out>" required>
	 	</div>
	 	<div class="signup-group">
	 		<label>Kategori</label>
	 		<input type="text" name="category" value="<c:out value="${p.getCategory() }"></c:out>" required>
	 	</div>
	 	
	 	<div class="signup-group">
	 		<label>Öne Çıkanlar</label>
	 		<input type="text" name="featured" value="<c:out value="${p.getFeatured() }"></c:out>" required>
	 	</div>
	 	<div class="signup-group">
	 		<label>Fotoğraf</label>
	 		<img style="height: 160px;width: 160px;" src="<c:out value="${p.getImage() }"></c:out>">
	 	</div>
	 	<div class="signup-group">
			<input type="submit" value="İşle">	 
		</div>
	 </form>
	
	 <footer>
		<div class="footer"> &copy; 2021 Copyright:
	      Unagi.com
	    </div>
	</footer>
</body>
</html>