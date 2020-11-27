<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>add article</title>
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/jquery-ui.min.css"/>
	<script type="text/javascript" src="${pageContext.request.contextPath}/assets/jquery.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/assets/jquery-ui.min.js"></script>
	<script>
	  $( function() {
	    $( "#datepicker" ).datepicker({ dateFormat: 'dd/mm/yy' });
	  } );
	 </script>
</head>
<body>
<a href="viewarticle">View all record</a>

<h1> add new article</h1>
<form action="addarticle.jsp" method="post">
<table>
	<tr>
		<td>Title</td>
		<td><input type="text" name="title"/></td>
	</tr> 
	<tr>
		<td>Category</td>
		<td><input type="text" name="category"/></td>
	</tr>  
	<tr>
		<td>Released Date</td>
		<td><input type="text" name="date" id="datepicker"/>
		</td>
	</tr>  
	<tr>
	<td>Body</td>
	<td><textarea id="body" name="body" placeholder="Insert body here...."></textarea></td>	
	<tr><td colspan="2"><input type="submit" value="Tambah artikel"/></td></tr> 
</table>
</form>

</body>
</html>