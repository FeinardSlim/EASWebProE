<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Pendaftaran Relawan</title>
</head>
<body>
	<jsp:include page="../assets/header.jsp"></jsp:include>  
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
				<td colspan="2"><input type="submit" value="Daftar"/></td>
			</tr>  
		</table>  
	</form> 
		<jsp:include page="../assets/footer.jsp"></jsp:include>  
</body>
</html>