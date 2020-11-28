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
	You are not logged in
	<a href="login">Please Login</a>
	<a href="register">Or Register</a>
	<%} else {
	%>
	<div style="text-align: center">
        <h1 class="center">Welcome to SISCO</h1>
        <div class="row">
        <div class="col-md-4">
        <a href="/EASPwebE/" class="btn btn-dark">kembali ke halaman utama</a>
        </div>
        <div class="col-md-4">
        <a href="/article/viewarticle.jsp" class="btn btn-dark">View Article Admin</a>
        </div>
        <div class="col-md-4">
        <a href="/relawan/viewrelawan.jsp" class="btn btn-dark">View Relawan Admin</a>
        </div>
        </div>
    </div>
	<%
	    }
	%>
</body>
</html>