<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Pendaftaran Relawan</title>
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
	<jsp:include page="../assets/header.jsp"></jsp:include>
	
	<div class="container">
		<h1>Pendaftaran Relawan</h1>
		
		<a href="viewrelawan" class="btn btn-primary">Kembali ke list relawan</a>
		<form action="addrelawan.jsp" method="post">  
			<table class="table table-borderless">  
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
					<td colspan="2"><input type="submit" value="Daftar" class="btn btn-primary"/></td>
				</tr>  
			</table>  
		</form>
	</div>
	<jsp:include page="/assets/footer.jsp"></jsp:include>  
</body>
</html>