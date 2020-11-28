<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Pendaftaran Relawan</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
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
	<div id="app">
    <main class="container" style="padding: 5% 15%">
	<h1>Pendaftaran Relawan</h1>  
	<form action="addrelawan.jsp" method="post">  
		<table class="table">  
			<tr>
				<td>Nama</td>
				<td><input type="text" name="nama" placeholder="Jhonny Yes Phapa"/></td>
			</tr>  
			<tr>
				<td>NIK</td>
				<td><input type="text" name="nik" placeholder="123456789456153"/></td>
			</tr>
			<tr>
				<td>Tempat, Tanggal Lahir</td>
				<td><input type="text" name="ttl" placeholder='Jakarta, 12 September 1998'/></td>
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
				<td><input type="text" name="no_telp" placeholder="08123456789"/></td>
			</tr>  
			<tr>
				<td>Email</td>
				<td><input type="email" name="email" placeholder="example@example.com"/></td>
			</tr>   
			<tr>
				<td colspan="2"><input class="btn btn-primary" type="submit" value="Daftar"/></td>
			</tr>  
		</table>  
	</form>
	</main>
	</div>
	<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous"></script>  
</body>
</html>