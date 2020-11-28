<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
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
<title>Sisco Lite Article</title>
</head>
<body>
	<%@page import="com.fp.dao.ArticleDao,com.fp.bean.*,java.util.*"%>  
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
	  
	  
	 <jsp:include page="../assets/header.jsp"></jsp:include>  
	
	<div class="container body-content">
	
	<h1>Daftar Artikel</h1>
	
	 <% 
      	if ((session.getAttribute("user") != null)) {
      %>
			<a href="addarticleform.jsp" class="btn btn-outline-primary btn-block" role="button">Tambah Artikel</a> 
       <%
       }
       %>  
	
	<%  
	List<Article> list=ArticleDao.getAllRecords();  
	request.setAttribute("list",list);  
	%>  
	  
	<table border="1" width="90%" class="table table-hover thead-dark">  
		<tr class="justify-content-center">
			<th>No</th>
			<th>Judul</th>
			<th>Kategori</th>
			<th>Tanggal Rilis</th>  
			<th>Isi Article</th>
			<% if ((session.getAttribute("user") != null)) { %>
			<th>Sunting</th>
			<th>Hapus</th>
			<% } %>
		</tr>  
		<c:forEach items="${list}" var="u">  
		<tr>
			<td>${u.getId()}</td>
			<td>${u.getTitle()}</td>
			<td>${u.getCategory()}</td>  
			<td>${u.getDate()}</td>
			<td><a href="../viewdetail.jsp?id=${u.getId()}">Detail</a></td>
			<% if ((session.getAttribute("user") != null)) { %>
			<td><a href="editformarticle.jsp?id=${u.getId()}">Sunting</a></td>  
			<td><a href="deletearticle.jsp?id=${u.getId()}">Hapus</a></td>
			<% } %>
		</tr>  
		</c:forEach>  
	</table>  
	<br/> 
	
	</div>
	
		<jsp:include page="../assets/footer.jsp"></jsp:include> 
</body>
</html>