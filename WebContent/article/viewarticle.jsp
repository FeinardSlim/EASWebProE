<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%@page import="com.fp.dao.ArticleDao,com.fp.bean.*,java.util.*"%>  
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
	  
	<h1>Daftar Artikel</h1>  
	<a href="addarticleform.jsp">Tambah Artikel</a> 
	
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
			<th>Isi Artikel</th>
			<th>Sunting</th>
			<th>Hapus</th>
		</tr>  
		<c:forEach items="${list}" var="u">  
		<tr>
			<td>${u.getId()}</td>
			<td>${u.getTitle()}</td>
			<td>${u.getCategory()}</td>  
			<td>${u.getDate()}</td>
			<td>${u.getBody()}</td>
			<td><a href="editformarticle.jsp?id=${u.getId()}">Sunting</a></td>  
			<td><a href="deletearticle.jsp?id=${u.getId()}">Hapus</a></td>
		</tr>  
		</c:forEach>  
	</table>  
	<br/> 
</body>
</html>