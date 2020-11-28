<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Insert title here</title>
	<style>
    dd {
        word-break: break-all;
    }
</style>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
</head>
<body>
	<%@page import="com.fp.dao.ArticleDao,com.fp.bean.Article"%> 
	<%  
	String id=request.getParameter("id");  
	Article u=ArticleDao.getRecordById(Integer.parseInt(id));  
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
	<div class="container body-content"> 
	<h2>Details</h2>

	<div>
	    <h4>Artikel</h4>
	    <a href="./" class="btn btn-info">Kembali</a>
	    <hr />
	    <div class="text-center container-fluid" style="font-size:30px;text-transform:uppercase; font-weight:bold ;padding-bottom:15px">
	        <%= u.getTitle()%>
	    </div>
	    <div class="text-center container-fluid" style="font-size:11px;padding-bottom:30px">
	        <p>Dibuat Pada <%= u.getDate()%></p>
	    </div>
	    <div class="text-center container-fluid" style="font-size:11px;padding-bottom:30px">
	        <p>Kategori : <%= u.getCategory()%></p>
	    </div>
	    <div class="container" style="white-space:initial;word-wrap:break-word">
	        <%= u.getBody()%>
	    </div>
	</div>
	</div>
</body>
</html>
