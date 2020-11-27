<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%@page import="com.fp.dao.ArticleDao,com.fp.bean.*,java.util.*"%>  
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
	  
	<h1>Articles List</h1>  
	  
	<%  
	List<Article> list=ArticleDao.getAllRecords();  
	request.setAttribute("list",list);  
	%>  
	  
	<table border="1" width="90%">  
		<tr>
			<th>Id</th>
			<th>Title</th>
			<th>Category</th>
			<th>Date</th>  
			<th>Body</th>
			<th>Edit</th>
			<th>Delete</th>
		</tr>  
		<c:forEach items="${list}" var="u">  
		<tr>
			<td>${u.getId()}</td>
			<td>${u.getTitle()}</td>
			<td>${u.getCategory()}</td>  
			<td>${u.getDate()}</td>
			<td>${u.getBody()}</td>
			<td><a href="editform.jsp?id=${u.getId()}">Edit</a></td>  
			<td><a href="deletearticle.jsp?id=${u.getId()}">Delete</a></td>
		</tr>  
		</c:forEach>  
	</table>  
</body>
</html>