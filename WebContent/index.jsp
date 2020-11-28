<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <!DOCTYPE html>
    <html>

    <head>
        <meta charset="ISO-8859-1">
        <title>SISCO</title>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
        <style>
            p {
                word-break: break-word;
            }
            
            .jumbotron {
                background-image: linear-gradient(rgba(0, 0, 0, 0.5), rgba(0, 0, 0, 0.5)), url("/EASPwebE/assets/images/cdc-k0krntqcjfw-unsplash-2000x1125.jpg");
                background-size: cover;
                color: white;
            }
        </style>
    </head>

    <body>
        <%@page import="com.fp.dao.ArticleDao,com.fp.bean.*,java.util.*"%>
            <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
                <%  
	List<Article> list=ArticleDao.getAllRecords();  
	request.setAttribute("list",list);  
	%>

                    <jsp:include page="../assets/header.jsp"></jsp:include>

                    <div style="padding-top:20px" class="container body-content">

                        <div class="jumbotron">
                            <h1>SISCO lite</h1>
                            <p class="lead">SISCO lite merupakan upgrade dari ARCO yang mencakup bagian artikel dari SISCO (Sistem Informasi Siaga Corona) disertai Sistem Relawan</p>
                            <a href="http://frightening-dungeon-33776.herokuapp.com/" class="btn btn-primary btn-lg">Kunjungi SISCO &raquo;</a>
                            <a href="http://aulkiller-001-site1.itempurl.com/" class="btn btn-primary btn-lg">Atau ARCO &raquo;</a>
                            <%
	    		if ((session.getAttribute("user") == null) || (session.getAttribute("user") == "")){}else{
			%>
                                <a href="article/viewarticle" class="btn btn-primary btn-lg">Dashboard Artikel &raquo;</a>
                                <%
	    	}
			%>
                        </div>

                        <div class="row align-items-center container-fluid" style="padding-bottom:10%">
                            <c:forEach items="${list}" var="u">
                                <div class="col-md-4 col-sm-4">
                                    <h5 class="mbr-section-subtitle mbr-fonts-style mb-3 display-5">
                                        <strong>${u.getTitle()}</strong>
                                    </h5>
                                    <small style="font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen, Ubuntu, Cantarell, 'Open Sans', 'Helvetica Neue', sans-serif">
		                Ditulis pada ${u.getDate()} oleh Admin
		            </small>
                                    <br>
                                    <a href="viewdetail.jsp?id=${u.getId()}">Lihat lebih lengkap...</a>
                                    <br><br><br>
                                </div>
                            </c:forEach>
                        </div>
                        <!-- <jsp:include page="viewarticleuser.jsp"></jsp:include> -->
                    </div>
                    <jsp:include page="../assets/footer.jsp"></jsp:include>

                    <!-- <script src="bootstrap/js/bootstrap.js"></script> -->
                    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
                    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous"></script>
    </body>

    </html>