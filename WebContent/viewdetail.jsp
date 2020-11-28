<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Insert title here</title>
	<style>
    dd {
        word-break: break-all;
    }
</style>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
</head>
<body>
	<%@page import="com.fp.dao.ArticleDao,com.fp.bean.Article"%> 
	<%  
	String id=request.getParameter("id");  
	Article u=ArticleDao.getRecordById(Integer.parseInt(id));  
	%>
	
	<jsp:include page="../assets/header.jsp"></jsp:include> 
		
	<div class="container body-content"> 
	<h2>Details</h2>

	<div>
	    <h4>Artikel</h4>
	    <a href="./" class="btn btn-info">Kembali</a>
	    <hr />
	    <div class="text-center container-fluid" style="font-size:30px;text-transform:uppercase; font-weight:bold ;padding-bottom:15px">
	        <%= u.getTitle()%>
	    </div>
	    <div class="text-center container-fluid" style="font-size:11px;padding-bottom:30px">
	        <p>Dibuat Pada <%= u.getDate()%></p>
	    </div>
	    <div class="text-center container-fluid" style="font-size:11px;padding-bottom:30px">
	        <p>Kategori : <%= u.getCategory()%></p>
	    </div>
	    <div class="container" style="white-space:initial;word-wrap:break-word">
	        <%= u.getBody()%>
	    </div>
	</div>
	</div>
	<jsp:include page="../assets/footer.jsp"></jsp:include> 
</body>
</html>
