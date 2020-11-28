<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/jquery-ui.min.css"/>
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/jquery.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/jquery-ui.min.js"></script>
<script>
  $( function() {
    $( "#datepicker" ).datepicker({ dateFormat: 'dd/mm/yy' });
  } );
 </script>
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
<meta charset="ISO-8859-1">
<title>Edit Data Relawan</title>
</head>
<body>
	<%@page import="com.fp.dao.RelawanDao,com.fp.bean.Relawan"%>  
	<%  
	String id=request.getParameter("id");  
	Relawan u=RelawanDao.getRecordById(Integer.parseInt(id));  
	%>
	
<nav class="navbar navbar-expand-lg navbar-light bg-light">
		<div class="container">
		  <a class="navbar-brand" href="/EASPwebE/">SISCO lite</a>
		  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
		    <span class="navbar-toggler-icon"></span>
		  </button>
		
		  <div class="collapse navbar-collapse" id="navbarSupportedContent">
		    <ul class="navbar-nav mr-auto">
		      <li class="nav-item">
		        <a class="nav-link" href="viewarticle">Artikel</a>
		      </li>
		      <li class="nav-item">
		        <a class="nav-link" href="../relawan/viewrelawan">Relawan</a>
		      </li>
		      <li class="nav-item">
		        <a class="nav-link" href="../admin/index">Admin</a>
		      </li>
		    </ul>
		    <!-- Right Side Of Navbar -->
	          <ul class="navbar-nav ml-auto">
	              <!-- Authentication Links -->
	              <% 
	              	if ((session.getAttribute("user") == null) || (session.getAttribute("user") == "")) {
	              %>
		              <li class="nav-item">
		                  <a class="nav-link" href="../admin/login">Login</a>
		              </li>
		              <li class="nav-item">
		                  <a class="nav-link" href="../admin/register">Register</a>
		              </li>
	              <%} else {
	              %>
	                <li class="nav-item dropdown">
	                    <a id="navbarDropdown" class="nav-link dropdown-toggle" href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
	                        ${user.fullname} <span class="caret"></span>
	                    </a>
	
	                    <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdown">
	                        <a class="dropdown-item" href="../admin/index">Dashboard</a>
	                        <a class="dropdown-item" href="../admin/logouto">Logout</a>
	                    </div>
	                </li>
	              <%
				    }
				  %>
	          </ul>
		  </div>
	  </div>
	</nav>
	
	<a href="viewarticle">View all record</a>  
	<h1>Form Edit Data Relawan</h1>  
	<form action="editrelawan.jsp" method="post">  
		<input type="hidden" name="id" value="<%=u.getId() %>"/>  
		<table>  
			<tr>
				<td>Nama</td>
				<td><input type="text" name="nama" value="<%= u.getNama()%>"/></td>
			</tr>  
			<tr>
				<td>NIK</td>
				<td><input type="text" name="nik" value="<%= u.getNik()%>"/></td>
			</tr>  
			<tr>
				<td>Tempat, Tanggal Lahir</td>
				<td><input type="text" name="ttl" value="<%= u.getTtl()%>"/></td>
			</tr>  
			<tr>
				<td>Jenis Kelamin</td>
				<td>  
					<input type="radio" name="jenis_kelamin" value="Laki-laki"/>Laki-laki   
					<input type="radio" name="jenis_kelamin" value="Perempuan"/>Perempuan
				</td>
			</tr>
			<tr>
				<td>Nomor Telepon</td>
				<td><input type="text" name="no_telp" value="<%= u.getNo_telp()%>"/></td>
			</tr>
			<tr>
				<td>Email</td>
				<td><input type="email" name="email" value="<%= u.getEmail()%>"/></td>
			</tr>
			<tr><td colspan="2"><input type="submit" value="Edit Data Pendaftar"/></td></tr>  
		</table>  
	</form>  
	
</body>
</html>
