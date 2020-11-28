<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>SISCO</title>
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
</head>
<body>
	<%@page import="com.fp.dao.ArticleDao,com.fp.bean.*,java.util.*"%>  
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
	<%  
	List<Article> list=ArticleDao.getAllRecords();  
	request.setAttribute("list",list);  
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
	        <a class="nav-link" href="article/viewarticle">Artikel</a>
	      </li>
	      <li class="nav-item">
	        <a class="nav-link" href="relawan/viewrelawan">Relawan</a>
	      </li>
	      <li class="nav-item">
	        <a class="nav-link" href="admin/index">Admin</a>
	      </li>
	      <li class="nav-item dropdown">
	        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
	          Relawan
	        </a>
	        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
	          <a class="dropdown-item" href="#"></a>
	          <a class="dropdown-item" href="#">Another action</a>
	          <div class="dropdown-divider"></div>
	          <a class="dropdown-item" href="#">Something else here</a>
	        </div>
	      </li>
	    </ul>
	    <!-- Right Side Of Navbar -->
          <ul class="navbar-nav ml-auto">
              <!-- Authentication Links -->
              <% 
              	if ((session.getAttribute("user") == null) || (session.getAttribute("user") == "")) {
              %>
	              <li class="nav-item">
	                  <a class="nav-link" href="admin/login">Login</a>
	              </li>
	              <li class="nav-item">
	                  <a class="nav-link" href="admin/register">Register</a>
	              </li>
              <%} else {
              %>
                <li class="nav-item dropdown">
                    <a id="navbarDropdown" class="nav-link dropdown-toggle" href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        ${user.fullname} <span class="caret"></span>
                    </a>

                    <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdown">
                        <a class="dropdown-item" href="admin/index">Dashboard</a>
                        <a class="dropdown-item" href="logouto">Logout</a>
                    </div>
                </li>
              <%
			    }
			  %>
          </ul>
	  </div>
	  </div>
	</nav>
	<div style="padding-top:20px" class="container">
	
		<div class="jumbotron">
		    <h1>SISCO lite</h1>
		    <p class="lead">SISCO lite merupakan upgrade dari ARCO yang mengcakup bagian artikel dari SISCO (Sistem Informasi Siaga Corona) disertai Sistem Relawan</p>
		    <a href="http://frightening-dungeon-33776.herokuapp.com/" class="btn btn-primary btn-lg">Kunjungi SISCO &raquo;</a>
		    <a href="http://aulkiller-001-site1.itempurl.com/" class="btn btn-primary btn-lg">Atau ARCO &raquo;</a>
		    <%
	    		if ((session.getAttribute("user") == null) || (session.getAttribute("user") == "")){}else{
			%>
		        <a href="article/viewarticle" class="btn btn-primary btn-lg">Dashboard Artikel &raquo;</a>
		    <%
	    	}
			%>
		</div>
		
		<div class="row align-items-center container-fluid" style="padding-bottom:10%">
		    <c:forEach items="${list}" var="u">  
		        <div class="col-md-4 col-sm-4">
		            <h5 class="mbr-section-subtitle mbr-fonts-style mb-3 display-5">
		                <strong>${u.getTitle()}</strong>
		            </h5>
		            <small style="font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen, Ubuntu, Cantarell, 'Open Sans', 'Helvetica Neue', sans-serif">
		                Ditulis pada ${u.getDate()} oleh Admin
		            </small>
		            <br>
		            <a href="viewdetail.jsp?id=${u.getId()}">Lihat lebih lengkap...</a>
		            <br><br><br>
		        </div>
		    </c:forEach> 
		</div>
		<!-- <jsp:include page="viewarticleuser.jsp"></jsp:include> -->
	</div>
	
	<!-- <script src="bootstrap/js/bootstrap.js"></script> -->
	<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous"></script>
</body>
</html>