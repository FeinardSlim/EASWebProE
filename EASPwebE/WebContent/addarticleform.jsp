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
	<jsp:include page="articleform.html"></jsp:include>  
</body>
</html>