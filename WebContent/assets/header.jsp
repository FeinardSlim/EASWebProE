<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
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
	<link rel="stylesheet" href="/css/main.css">
<meta charset="ISO-8859-1">
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-light bg-light">
			<div class="container">
			  <a class="navbar-brand" href="/EASPwebE/">SISCO lite</a>
			  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
			    <span class="navbar-toggler-icon"></span>
			  </button>
			
			  <div class="collapse navbar-collapse" id="navbarSupportedContent">
			    <ul class="navbar-nav mr-auto">
			      <li class="nav-item">
			        <a class="nav-link" href="../article/viewarticle">Artikel</a>
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
</body>
</html>