<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Ubah Artikel</title>
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/jquery-ui.min.css"/>
	<script type="text/javascript" src="${pageContext.request.contextPath}/css/jquery.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/css/jquery-ui.min.js"></script>
	<script>
	  $( function() {
	    $( "#datepicker" ).datepicker({ dateFormat: 'dd/mm/yy' });
	  } );
	 </script>
</head>
<body>
	<%@page import="com.fp.dao.ArticleDao,com.fp.bean.Article"%>  
	  
	<%  
	String id=request.getParameter("id");  
	Article u=ArticleDao.getRecordById(Integer.parseInt(id));  
	%>  
  
	<h1>Edit Artikel</h1>  
	<form action="editarticle.jsp" method="post">  
	<input type="hidden" name="id" value="<%=u.getId() %>"/>  
	<table>  
		<tr>
			<td>Judul</td><td>  
			<input type="text" name="title" value="<%= u.getTitle()%>"/></td>
		</tr>  
		<tr>
			<td>Kategori</td><td>  
			<input type="text" name="category" value="<%= u.getCategory()%>"/></td>
		</tr>  
		<tr>
			<td>Tanggal Rilis</td><td>
			<input type="text" name="date" id="datepicker" value="<%= u.getDate()%>"/>  
		</tr>  
		<tr>
			<td>Isi Artikel</td><td>
			<textarea id="bodyedit" name="body"><%= u.getBody()%></textarea></td>	
		</tr>   
		<tr>
			<td colspan="2"><input type="submit" value="Simpan Perubahan"/></td>
		</tr>  
	</table>  
	</form>  
</body>
</html>