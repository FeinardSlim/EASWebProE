<%@page import="com.fp.dao.ArticleDao"%>  
<jsp:useBean id="u" class="com.fp.bean.Article"></jsp:useBean>  
<jsp:setProperty property="*" name="u"/>  
<%  
ArticleDao.delete(u);  
response.sendRedirect("viewarticle.jsp");  
%>  