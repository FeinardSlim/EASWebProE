<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Buat Artikel</title>
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

<h1> add new article</h1>
<form action="addarticle.jsp" method="post">
<table>
   <label class="control-label col-md-2" for="Title">Title</label>
        <div class="col-md-10">
            <input class="form-control text-box single-line" data-val="true" data-val-length="The field Title must be a string with a minimum length of 5 and a maximum length of 100." data-val-length-max="100" data-val-length-min="5" id="Title" name="Title" type="text" value="">
            <span class="field-validation-valid text-danger" data-valmsg-for="Title" data-valmsg-replace="true"></span>
        </div>
    </div>

    <div class="form-group">
        <label class="control-label col-md-2" for="ReleaseDate">Release Date</label>
        <div class="col-md-10">
            <input class="form-control text-box single-line" data-val="true" data-val-date="The field Release Date must be a date." data-val-required="The Release Date field is required." id="ReleaseDate" name="ReleaseDate" type="date" value="">
            <span class="field-validation-valid text-danger" data-valmsg-for="ReleaseDate" data-valmsg-replace="true"></span>
        </div>
    </div>

    <div class="form-group">
        <label class="control-label col-md-2" for="Category">Category</label>
        <div class="col-md-10">
            <input class="form-control text-box single-line" data-val="true" data-val-length="The field Category must be a string with a maximum length of 30." data-val-length-max="30" data-val-regex="The field Category must match the regular expression '^[A-Z]+[a-zA-Z'\s]*$'." data-val-regex-pattern="^[A-Z]+[a-zA-Z'\s]*$" id="Category" name="Category" type="text" value="">
            <span class="field-validation-valid text-danger" data-valmsg-for="Category" data-valmsg-replace="true"></span>
        </div>
    </div>

    <div class="form-group">
        <label class="control-label col-md-2" for="Body">Body</label>
        <div class="col-md-10">
            <textarea cols="20" data-val="true" data-val-length="The field Body must be a string with a minimum length of 20 and a maximum length of 2500." data-val-length-max="2500" data-val-length-min="20" htmlattributes="{ class = form-control }" id="Body" name="Body" rows="2"></textarea>
            <span class="field-validation-valid text-danger" data-valmsg-for="Body" data-valmsg-replace="true"></span>
        </div>
    </div>

	<tr><td colspan="2"><input type="submit" value="Tambah artikel"/></td></tr> 
</table>
</form>

</body>
</html>