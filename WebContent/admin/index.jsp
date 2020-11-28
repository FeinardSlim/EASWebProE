<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%
	    if ((session.getAttribute("user") == null) || (session.getAttribute("user") == "")) {
	%>
	You are not logged in<br/>
	<a href="login">Please Login</a>
	<a href="register">Or Register</a>
	<%} else {
	%>
	<div style="text-align: center">
        <h1>Welcome to SISCO</h1>
        <a href="/EASPwebE/">kembali ke halaman utama</a>
    </div>
	<%
	    }
	%>
</body>
</html>