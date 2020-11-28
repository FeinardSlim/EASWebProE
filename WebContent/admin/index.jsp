<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Sisco Lite Admin</title>
</head>
<body>
	<%
	    if ((session.getAttribute("user") == null) || (session.getAttribute("user") == "")) {
	%>
	Anda Belum Login<br>
	<a href="login">Silahkan Login</a>
	<br> 
	<a href="register">Atau Daftar</a>
	<%} else {
	%>
	<div style="text-align: center">
        <h1 class="center">Selamat Datang di SISCO Lite</h1>
        <div class="row">
        <div class="col-md-4">
        <a href="/" class="btn btn-dark">kembali ke halaman utama</a>
        </div>
        </div>
    </div>
	<%
	    }
	%>
</body>
</html>