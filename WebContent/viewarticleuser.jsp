<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>

<style type="text/css">
	<@include file="assets/css/bootstrap.css">
	<@include file="assets/css/bootstrap-theme.css">
	<@include file="assets/css/bootstrap-grid.css">
</style>

<script src="bootstrap/js/bootstrap.js"></script>
<meta charset="ISO-8859-1">
<title>Welcome to Sisco</title>
</head>
<body>
	<%@page import="com.fp.dao.ArticleDao,com.fp.bean.*,java.util.*"%>  
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
	  
	<h3>Daftar Artikel</h3>  
	  
	<%  
	List<Article> list=ArticleDao.getAllRecords();  
	request.setAttribute("list",list);  
	%>  
	  
	<table border="1" width="90%">  
		<tr>
			<th>Id</th>
			<th>Judul</th>
			<th>Kategori</th>
			<th>Tanggal Rilis</th>  
			<th>Isi</th>
			<th>Rincian</th>
		</tr>  
		<c:forEach items="${list}" var="u">  
		<tr>
			<td>${u.getId()}</td>
			<td>${u.getTitle()}</td>
			<td>${u.getCategory()}</td>  
			<td>${u.getDate()}</td>
			<td>${u.getBody()}</td>
			<td><a href="viewdetail.jsp?id=${u.getId()}">Lihat lebih lengkap</a></td> 
		</tr>  
		</c:forEach>  
	</table>  
</body>
</html>