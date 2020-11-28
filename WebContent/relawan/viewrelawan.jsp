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
			<th>Sunting</th>
			<th>Hapus</th>
		</tr>  
		<c:forEach items="${list}" var="u">  
		<tr>
			<td>${u.getId()}</td>
			<td>${u.getNama()}</td>
			<td>${u.getNik()}</td>  
			<td>${u.getTtl()}</td>
			<td>${u.getJenis_kelamin()}</td>
			<td>${u.getNo_telp()}</td>  
			<td>${u.getEmail()}</td>
			<td><a href="editrelawanform.jsp?id=${u.getId()}">Sunting</a></td>  
			<td><a href="deleterelawan.jsp?id=${u.getId()}">Hapus</a></td>
		</tr>  
		</c:forEach>  
	</table>  
	<br/><a href="addrelawanform.jsp">Tambah Relawan</a>  
</body>
</html>