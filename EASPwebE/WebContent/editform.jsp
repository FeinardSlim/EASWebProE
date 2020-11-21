<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%@page import="com.fp.dao.ArticleDao,com.fp.bean.Article"%>  
	  
	<%  
	String id=request.getParameter("id");  
	Article u=ArticleDao.getRecordById(Integer.parseInt(id));  
	%>  
  
	<h1>Edit Form</h1>  
	<form action="edituser.jsp" method="post">  
	<input type="hidden" name="id" value="<%=u.getId() %>"/>  
	<table>  
		<tr>
			<td>Name:</td><td>  
			<input type="text" name="title" value="<%= u.getTitle()%>"/></td>
		</tr>  
		<tr>
			<td>Password:</td><td>  
			<input type="text" name="category" value="<%= u.getCategory()%>"/></td>
		</tr>  
		<tr>
			<td>Email:</td><td>  
			<input type="date" name="date" value="<%= u.getDate()%>"/></td>
		</tr>  
		<tr>
			<td>Body</td><td>
			<td><textarea id="bodyedit" name="body" />value="<%= u.getBody()%>"</textarea></td>
		</tr>   
		<tr>
			<td colspan="2"><input type="submit" value="Edit Article"/></td>
		</tr>  
	</table>  
	</form>  
</body>
</html>