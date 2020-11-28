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



<!-- <div class="form-horizontal">
        <h4>Artikel</h4>
        <hr>
        
        <input data-val="true" data-val-number="The field ID must be a number." data-val-required="The ID field is required." id="ID" name="ID" type="hidden" value="8">

        <div class="form-group">
            <label class="control-label col-md-2" for="Title">Title</label>
            <div class="col-md-10">
                <input class="form-control text-box single-line" data-val="true" data-val-length="The field Title must be a string with a minimum length of 5 and a maximum length of 100." data-val-length-max="100" data-val-length-min="5" id="Title" name="Title" type="text" value="[UPDATE] Kasus Virus Corona Indonesia per 31 Oktober 2020 Naik Jadi 410.088 Orang">
                <span class="field-validation-valid text-danger" data-valmsg-for="Title" data-valmsg-replace="true"></span>
            </div>
        </div>

        <div class="form-group">
            <label class="control-label col-md-2" for="ReleaseDate">Release Date</label>
            <div class="col-md-10">
                <input class="form-control text-box single-line" data-val="true" data-val-date="The field Release Date must be a date." data-val-required="The Release Date field is required." id="ReleaseDate" name="ReleaseDate" type="date" value="11/19/2020">
                <span class="field-validation-valid text-danger" data-valmsg-for="ReleaseDate" data-valmsg-replace="true"></span>
            </div>
        </div>

        <div class="form-group">
            <label class="control-label col-md-2" for="Category">Category</label>
            <div class="col-md-10">
                <input class="form-control text-box single-line" data-val="true" data-val-length="The field Category must be a string with a maximum length of 30." data-val-length-max="30" data-val-regex="The field Category must match the regular expression '^[A-Z]+[a-zA-Z'\s]*$'." data-val-regex-pattern="^[A-Z]+[a-zA-Z'\s]*$" id="Category" name="Category" type="text" value="Berita Rakyat">
                <span class="field-validation-valid text-danger" data-valmsg-for="Category" data-valmsg-replace="true"></span>
            </div>
        </div>

        <div class="form-group">
            <label class="control-label col-md-2" for="Body">Body</label>
            <div class="col-md-10">
                <textarea cols="20" data-val="true" data-val-length="The field Body must be a string with a minimum length of 20 and a maximum length of 2500." data-val-length-max="2500" data-val-length-min="20" htmlattributes="{ class = form-control }" id="Body" name="Body" rows="2">
                <span class="field-validation-valid text-danger" data-valmsg-for="Body" data-valmsg-replace="true"></span>
            </div>
        </div>

        <div class="form-group">
            <div class="col-md-offset-2 col-md-10">
                <input type="submit" value="Save" class="btn btn-default">
            </div>
        </div>
    </div> -->