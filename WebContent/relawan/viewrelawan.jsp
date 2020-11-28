<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Daftar Relawan</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
<style>
    p {
        word-break: break-word;
    }
    .jumbotron {
        background-image: linear-gradient(rgba(0, 0, 0, 0.5), rgba(0, 0, 0, 0.5)),url("/assets/images/cdc-k0krntqcjfw-unsplash-2000x1125.jpg");
        background-size: cover;
        color:white;
    }
</style>
<link rel="stylesheet" href="../assets/css/main.css">

</head>
<body>
	<%@page import="com.fp.dao.RelawanDao,com.fp.bean.*,java.util.*"%>  
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
	
	<jsp:include page="../assets/header.jsp"></jsp:include>  
    
    <div class="container body-content">
	<h1>Daftar Relawan</h1>
	<%  
	List<Relawan> list=RelawanDao.getAllRecords();  
	request.setAttribute("list",list);  
	%>  
	  
	<table width="90%" class="table table-hover table-striped">  
		<thead>
		<tr class="justify-content-center">
			<% if ((session.getAttribute("user") != null)) { %>
			<th>No</th>
			<% } %>
			<th>Nama</th>
			<th>NIK</th>
			<th>TTL</th>  
			<th>Jenis Kelamin</th>
			<th>No. Telp</th>
			<th>Email</th>
			<% 
		      	if ((session.getAttribute("user") != null)) {
		     %>			
			<th>Sunting</th>
			<th>Hapus</th>
		     <%
		     }
		     %>
		</tr>
		</thead>  
		<c:forEach items="${list}" var="u">  
		<tr>
			<% if ((session.getAttribute("user") != null)) { %>
			<td>${u.getId()}</td>
			<% } %>
			<td>${u.getNama()}</td>
			<td>${u.getNik()}</td>  
			<td>${u.getTtl()}</td>
			<td>${u.getJenis_kelamin()}</td>
			<td>${u.getNo_telp()}</td>  
			<td>${u.getEmail()}</td>
			<% 
		      	if ((session.getAttribute("user") != null)) {
		     %>			
			<td><a href="editrelawanform.jsp?id=${u.getId()}">Sunting</a></td>  
			<td><a href="deleterelawan.jsp?id=${u.getId()}">Hapus</a></td>
		     <%
		     }
		     %>
		</tr>  
		</c:forEach>  
	</table>  
	<br/>
	
     </div>
     
     	<jsp:include page="../assets/footer.jsp"></jsp:include> 
</body>
</html>