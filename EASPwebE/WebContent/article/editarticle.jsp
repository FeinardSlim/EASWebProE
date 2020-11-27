<%@page import="com.fp.dao.ArticleDao"%>  
<jsp:useBean id="u" class="com.fp.bean.Article"></jsp:useBean>  
<jsp:setProperty property="*" name="u"/>  
<%  
int i=ArticleDao.update(u);  
response.sendRedirect("editsuccessarticle.jsp");  
%>  