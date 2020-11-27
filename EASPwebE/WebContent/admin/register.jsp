<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Isi Disini</title>
</head>
<body>
    <div style="text-align: center">
        <h1>Admin Register</h1>
        <form action="process.jsp">
            <label for="fullname">Nama Lengkap:</label>
            <input name="fullname" size="50" />
            <br><br>
            <label for="email">Email:</label>
            <input name="email" size="50" />
            <br><br>
            <label for="password">Password:</label>
            <input type="password" name="password" size="50" />
            <br><br>           
            <button type="submit" value="register">Register</button>
        </form>
    </div>
</body>
</html>  