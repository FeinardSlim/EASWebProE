<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<style type="text/css">
	<@include file="assets/css/bootstrap.css">
	<@include file="assets/css/bootstrap-theme.css">
	<@include file="assets/css/bootstrap-grid.css">
</style>
<script src="bootstrap/js/bootstrap.js"></script>
<head>
<meta charset="ISO-8859-1">
<title>SISCO</title>
</head>
<body>
	<h1>Welcome to Sisco</h1>
	<a href="article/viewarticle">Lihat Article Admin</a>
	<a href="relawan/viewrelawan">Lihat Relawan Admin</a>
	<a href="admin/index">Admin</a>
	
	<jsp:include page="viewarticleuser.jsp"></jsp:include>
</body>
</html>