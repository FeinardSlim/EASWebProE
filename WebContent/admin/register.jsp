<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head><link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
  <style>
	  .form {
	  position: relative;
	  z-index: 1;
	  background: #FFFFFF;
	  max-width: 360px;
	  margin: 0 auto 100px;
	  padding: 45px;
	  text-align: center;
	  box-shadow: 0 0 20px 0 rgba(0, 0, 0, 0.2), 0 5px 5px 0 rgba(0, 0, 0, 0.24);
	}
	.form input {
	  font-family: "Roboto", sans-serif;
	  outline: 0;
	  background: #f2f2f2;
	  width: 100%;
	  border: 0;
	  margin: 0 0 15px;
	  padding: 15px;
	  box-sizing: border-box;
	  font-size: 14px;
	 }
	  
	.form .message {
	  margin: 15px 0 0;
	  color: #b3b3b3;
	  font-size: 12px;
	}
	
	.form .message a {
	  color: #4CAF50;
	  text-decoration: none;
	}
	.form .register-form {
	  display: none;
	}
	.container {
	  position: relative;
	  z-index: 1;
	  max-width: 300px;
	  margin: 0 auto;
	}
	.container:before, .container:after {
	  content: "";
	  display: block;
	  clear: both;
	}
	.container .info {
	  margin: 50px auto;
	  text-align: center;
	}
	.container .info h1 {
	  margin: 0 0 15px;
	  padding: 0;
	  font-size: 36px;
	  font-weight: 300;
	  color: #1a1a1a;
	}
	.container .info span {
	  color: #4d4d4d;
	  font-size: 12px;
	}
	.container .info span a {
	  color: #000000;
	  text-decoration: none;
	}
	.container .info span .fa {
	  color: #EF3B3A;
	}
	}
  </style>
 <style rel="stylesheet" href="../assets/css/main.css"></style>
<meta charset="utf-8">
<title>Isi Disini</title>
</head>
<body>
    <div style="text-align: center; margin:5%">
        <h1>Admin Register</h1>
        <form action="process.jsp" class="form border">
	        <div class="form-group">
	            <label for="fullname">Nama Lengkap:</label>
	            <input name="fullname" size="50"  class="form-control" placeholder="name1234"/>
	        </div>
	        <div class="form-grup">
	            <label for="email">Email:</label>
	            <input type="email" name="email" size="50"  class="form-control" placeholder="email1234@tester.com"/>
	        </div>
	        <div class="form-group">
	            <label for="password">Password:</label>
	            <input type="password" name="password" size="50" class="form-control" placeholder="12345678"/>
	        </div>  
            <button type="submit" value="register" class="btn btn-primary">Register</button>
            <p class="message">Already registered? <a href="register.jsp">Login</a></p>
        </form>
    </div>
</body>
</html>  