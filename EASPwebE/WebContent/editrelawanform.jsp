<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edit Data Relawan</title>
</head>
<body>
	<%@page import="com.fp.dao.RelawanDao,com.fp.bean.Relawan"%>  
	<%  
	String id=request.getParameter("id");  
	Relawan u=RelawanDao.getRecordById(Integer.parseInt(id));  
	%>  
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
				<td><input type="text" name="nik" value="<%= u.getNIK()%>"/></td>
			</tr>  
			<tr>
				<td>Tempat, Tanggal Lahir</td>
				<td><input type="text" name="ttl" value="<%= u.getTTL()%>"/></td>
			</tr>  
			<tr>
				<td>Jenis Kelamin</td>
				<td>  
					<input type="radio" name="jenis_kelamin" value="male"/>Laki-laki   
					<input type="radio" name="jenis_kelamin" value="female"/>Perempuan
				</td>
			</tr>
			<tr>
				<td>Nomor Telepon</td>
				<td><input type="text" name="no_telp" value="<%= u.getNoTelp()%>"/></td>
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