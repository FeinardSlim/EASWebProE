<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Daftar Relawan</title>
</head>
<body>
	<%@page import="com.fp.dao.RelawanDao,com.fp.bean.*,java.util.*"%>  
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
	  
	<h1>Daftar Relawan</h1>  
	  
	<%  
	List<Relawan> list=RelawanDao.getAllRecords();  
	request.setAttribute("list",list);  
	%>  
	  
	<table border="1" width="90%">  
		<tr>
			<th>Id</th>
			<th>Nama</th>
			<th>NIK</th>
			<th>TTL</th>  
			<th>Jenis Kelamin</th>
			<th>No. Telp</th>
			<th>Email</th>
			<th>Edit</th>
			<th>Delete</th>
		</tr>  
		<c:forEach items="${list}" var="u">  
		<tr>
			<td>${u.getId()}</td>
			<td>${u.getNama()}</td>
			<td>${u.getNIK()}</td>  
			<td>${u.getTTL()}</td>
			<td>${u.getJenisKelamin()}</td>
			<td>${u.getNoTelp()}</td>  
			<td>${u.getEmail()}</td>
			<td><a href="editrelawan.jsp?id=${u.getId()}">Edit</a></td>  
			<td><a href="deleterelawan.jsp?id=${u.getId()}">Delete</a></td>
		</tr>  
		</c:forEach>  
	</table>  
	<br/><a href="addrelawanform.jsp">Tambah Relawan</a>  
</body>
</html>