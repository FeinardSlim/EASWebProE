<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Buat Artikel</title>
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/jquery-ui.min.css"/>
	
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
	<style>
	    p {
	        word-break: break-word;
	    }
	    .jumbotron {
	        background-image: linear-gradient(rgba(0, 0, 0, 0.5), rgba(0, 0, 0, 0.5)),url("/EASPwebE/assets/images/cdc-k0krntqcjfw-unsplash-2000x1125.jpg");
	        background-size: cover;
	        color:white;
	    }
	</style>
	<link rel="stylesheet" href="../assets/css/main.css">
</head>
<body>
		
	<jsp:include page="../assets/header.jsp"></jsp:include>  

	<div class="container body-content">
	<a href="viewarticle" class="btn btn-primary">Kembali ke list artikel</a>
	<br><br>
	<h1>Tambahkan Artikel Baru</h1>
	<form action="addarticle.jsp" method="post">
		<table class="table table-borderless">
			<tr>
			<td>Judul</td>
			<td><input type="text" name="title" placeholder="Masukkan judul disini"/></td>
			</tr> 
			<tr>
				<td>Kategori</td>
				<td><input type="text" name="category" placeholder="Masukkan Kategori"/></td>
			</tr>  
			<tr>
				<td>Tanggal Rilis</td>
				<td><input type="text" name="date" id="datepicker" placeholder="Pilih tanggal"/>
				</td>
			</tr>  
			<tr>
			<td>Isi Artikel</td>
			<td><textarea id="body" name="body" placeholder="Masukkan isi artikel disini...."></textarea></td>
			<tr>
				<td colspan="2"><input type="submit" class="btn btn-info" value="Kirim Artikel"/></td>
			</tr>
		</table> 
	</form>
	</div>
	
	<jsp:include page="../assets/footer.jsp"></jsp:include>
	<script type="text/javascript" src="${pageContext.request.contextPath}/assets/jquery.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/assets/jquery-ui.min.js"></script>
	<script>
	  $( function() {
	    $( "#datepicker" ).datepicker({ dateFormat: 'dd/mm/yy' });
	  } );
	 </script>  
</body>
</html>